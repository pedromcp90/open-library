<?php

namespace App\Models;

use App\Models\Book;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'password',
        'address',
        'phone_number',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    //Many to many relationship with books
    public function books()
    {
        return $this->belongsToMany(Book::class)->withPivot('id', 'reserve_date', 'due_date', 'return_date')->as('reservation');
    }

    /**
     * Return a name for this model
     *
     * @return String
     */
    public function getName()
    {
        return $this->getAttributeValue('first_name') . " " . $this->getAttributeValue('last_name');
    }
}
