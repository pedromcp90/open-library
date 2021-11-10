<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
