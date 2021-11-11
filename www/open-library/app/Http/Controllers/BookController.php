<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Author;
use App\Models\Category;
use App\Models\Publisher;
use Illuminate\Http\Request;
use App\Rules\CheckValidISBN;
use Nicebooks\Isbn\IsbnTools;
use Illuminate\Support\Facades\Storage;

class BookController extends Controller
{
    /**
     * Display a listing of books.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['books'] = Book::all();
        return view('book.index', $data);
    }
    /**
     * Display a listing of books.
     *
     * @return \Illuminate\Http\Response
     */
    public function publicIndex()
    {
        $data['books'] = Book::all();
        return view('book.publicIndex', $data);
    }



    /**
     * Show the form for creating a new book.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = self::populateRelatedFields();
        return view('book.create', $data);
    }

    /**
     * Store a newly created book in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return $this->insertOrUpdate($request);
    }

    /**
     * Display the specified book.
     *
     * @param  Int $book
     * @return \Illuminate\Http\Response
     */
    public function show(Int $bookId)
    {
        $book = Book::findOrFail($bookId);
        //TODO: get related books and send to the view
        return view('book.show', ['book' => $book]);
    }

    /**
     * Show the form for editing the specified book.
     *
     * @param  Int  $bookId
     * @return \Illuminate\Http\Response
     */
    public function edit($bookId)
    {
        $book = Book::findOrFail($bookId);

        $data = self::populateRelatedFields();
        $data['book'] = $book;
        $data['selected_authors'] = self::getSelectedAuthorsIds($book);
        $data['selected_categories'] = self::getSelectedCategoriesIds($book);
        $data['publisher'] = $book->publisher();
        //return view('book.edit', compact('book'));
        return view('book.edit', $data);
    }

    public static function populateRelatedFields()
    {
        $data['authors'] = Author::all();
        $data['categories'] = Category::all();
        $data['publishers'] = Publisher::all();
        return $data;
    }
    public static function getSelectedAuthorsIds(Book $book)
    {
        $selected_authors = [];
        if (!empty($book->authors)) {
            foreach ($book->authors as $author) {
                $selected_authors[] = $author->id;
            }
        }
        return $selected_authors;
    }

    public static function getSelectedCategoriesIds(Book $book)
    {
        $selected_categories = [];
        if (!empty($book->categories)) {
            foreach ($book->categories as $category) {
                $selected_categories[] = $category->id;
            }
        }
        return $selected_categories;
    }

    /**
     * Update the specified book in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Int  $bookId
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $bookId)
    {
        return $this->insertOrUpdate($request, $bookId);
    }

    /**
     * Remove the specified book from storage.
     *
     * @param  Int $bookId
     * @return \Illuminate\Http\Response
     */
    public function destroy($bookId)
    {
        $book = Book::findOrFail($bookId);
        //Check if the image could be deleted and then delete the Book
        if (!empty($book->book_image) && !Storage::delete('public/' . $book->book_image)) {
            return redirect('admin/book/' . $book->id . '/edit')->with('error', 'Error while deleting the book cover, please try again later. If the problem persists contact an administrator');
        }
        Book::destroy($bookId);
        return redirect('admin/book')->with('message', 'Book deleted successfully');
    }

    private function insertOrUpdate($request, $updateId = false)
    {
        $categories = $authors = NULL;
        /**
         * Initialize currentbook data to make some checks on update
         */
        $currentBook = NULL;

        /**
         * Initialize the isbn formatter
         */
        $isbnFormatter = new IsbnTools;

        /**
         * Save the categories to insert later
         */
        if ($request->has('categories')) {
            $categories = $request->input('categories');
        }
        /**
         * Save the authors to insert later
         */
        if ($request->has('authors')) {
            $authors = $request->input('authors');
        }

        /**
         * Remove unneded fields
         */
        $bookData = $request->except(['_token', '_method', 'authors', 'categories']);

        /**
         * Format the ISBN and replace its value on the request after validation.
         * If we do not format it before validating, it will pass the unique validation
         * since that record does not exist without hypens
         */
        if (isset($bookData['isbn']) && $isbnFormatter->isValidIsbn($bookData['isbn'])) {
            $bookData['isbn'] = $isbnFormatter->format($bookData['isbn']);
            $request->replace($bookData);
        }

        /**
         * Get the current data to make some checks with existing values
         */
        if (!empty($updateId)) {
            $currentBook = Book::findOrFail($updateId);
        }


        /**
         * Validate data
         */
        $isbnValidationRule = 'unique:books,isbn';

        /**
         * If the method is update, ignore the isbn unique check
         */
        if ($updateId) {
            $isbnValidationRule .= ',' . $updateId;
        }

        $fields = [
            'isbn' => ['required', 'string', new CheckValidISBN, $isbnValidationRule],
            'title' => 'required|string|min:2|max:255',
            'description' => 'required|string|min:3|max:1000',
            'publication_year' => 'int|max:99999|nullable',
            'cover_image' => 'max:100000|mimes:jpeg,png,jpg|nullable'
        ];

        $errorMessage = [
            'required' => 'The :attribute is required',
        ];

        $this->validate($request, $fields, $errorMessage);

        if ($request->hasFile('cover_image')) {
            if (!empty($updateId)) {
                /**
                 * If the request is update we have to make some checks with images
                 * If an image is received then update the cover_image
                 * Check if an image already exists and delete it
                 */

                if (!empty($currentBook->cover_image)) {
                    Storage::delete('public/' . $currentBook->cover_image);
                }
            }

            /**
             * Store the image
             */
            $bookData['cover_image'] = $request->file('cover_image')->store('uploads', 'public');
        }

        //If we are updating, then get the existing book to be edited
        $book = empty($updateId) ? new Book() : Book::findOrFail($updateId);

        //Iterate through the fields and set their values
        foreach ($bookData as $field => $value) {
            $book->$field = $value;
        }

        //Save the book an then add its relationships
        $book->save();

        if (!is_null($categories)) {
            //make categories relationships
            $book->categories()->sync($categories);
        }

        if (!is_null($authors)) {
            //make authors relationships
            $book->authors()->sync($authors);
        }

        $action = empty($updateId) ? 'created' : 'updated';

        return redirect('admin/book/' . $book->id . '/edit')->with('message', 'Book ' . $action . ' successfully');
    }
}
