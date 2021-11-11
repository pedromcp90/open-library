<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Book extends Model
{
    use HasFactory;

    //One to many relationship with publisher
    public function publisher()
    {
        return $this->belongsTo(Publisher::class);
    }

    //Many to many relationship with authors
    public function authors()
    {
        return $this->belongsToMany(Author::class);
    }

    //Many to many relationship with categories
    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    //Many to many relationship with users
    public function users()
    {
        return $this->belongsToMany(User::class)->withPivot('id', 'reserve_date', 'due_date','return_date')->as('reservation');
    }


    /**
     * Return a name for this model
     *
     * @return String
     */
    public function getName()
    {
        return $this->getAttributeValue('title');
    }
}
