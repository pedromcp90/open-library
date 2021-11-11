<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\User;
use DateTime;
use Illuminate\Database\Eloquent\Relations\Pivot;
use Illuminate\Http\Request;

class BookUserController extends Controller
{
    /**
     * The book loan is in progress.
     */
    const STATUS_IN_PROGRESS = 1;
    /**
     * The Book has been returned on time.
     */
    const STATUS_RETURNED = 2;
    /**
     * Book returned before due date.
     */
    const STATUS_LATE_RETURN = 3;
    /**
     * The due date has passed and the user has not returned the book.
     */
    const STATUS_NOT_RETURNED = 4;

    public static $STATUS_MESSAGES_BY_CODE = [];

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //Declare status messages by status code
        static::$STATUS_MESSAGES_BY_CODE =  [
            self::STATUS_IN_PROGRESS => __('Loan in Progress'),
            self::STATUS_RETURNED => __('Returned in time'),
            self::STATUS_LATE_RETURN => __('Returned with delay'),
            self::STATUS_NOT_RETURNED => __('Not returned')
        ];

        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reservations = [];
        $data = [
            'reservations' => [],
            'users_by_id' => [],
            'books_by_id' => []
        ];
        //Get the users that have book loans.

        $books = Book::with('users')->get();

        foreach ($books->flatMap->users as $user) {
            $reservation = $user->reservation;
            $data['users_by_id'] = $this->addEntityData($data['users_by_id'], $reservation, User::class, 'user_id');
            $data['books_by_id'] = $this->addEntityData($data['books_by_id'], $reservation, Book::class, 'book_id');
            $reservations[] = $this->reservationToArray($reservation);
        }
        /*
        Sort
        */
        $reservations = collect($reservations);
        $sortedReservations = $reservations->sortByDesc('reserve_date');
        $data['reservations'] = $sortedReservations->values()->all();

        return view('reservations.index', $data);
    }

    protected static function addEntityData(array $entitiesById, Pivot $reservation, String $entityClass, String $entityKey)
    {
        if (!array_key_exists($reservation[$entityKey], $entitiesById)) {
            $entity = $entityClass::find($reservation[$entityKey]);
            $entitiesById[$entity->id] = $entity;
        }
        return $entitiesById;
    }


    /**
     * Receives a reservation and process its attributes
     * to generate an array with reservation information
     *
     * @param [type] $reservation
     * @return Array
     */
    public function reservationToArray($reservation)
    {
        $reservation = $reservation->getAttributes();
        if (!empty($reservation['return_date'])) {
            if ($reservation['due_date'] > new DateTime()) {
                $reservation['status_code'] = self::STATUS_IN_PROGRESS;
            } elseif ($reservation['return_date'] > $reservation['due_date']) {
                $reservation['status_code'] = self::STATUS_LATE_RETURN;
            } else {
                $reservation['status_code'] = self::STATUS_RETURNED;
            }
        } else {
            $reservation['status_code'] = self::STATUS_NOT_RETURNED;
        }
        $reservation['status'] = static::$STATUS_MESSAGES_BY_CODE[$reservation['status_code']];

        return $reservation;
    }
}
