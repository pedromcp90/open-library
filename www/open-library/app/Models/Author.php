<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Author extends Model
{
    use HasFactory;

    //Many to many relationship with books
    public function books()
    {
        return $this->belongsToMany(Book::class);
    }

    /**
     * Return a name for this model
     *
     * @return String
     */
    public function getName()
    {
        return $this->getAttributeValue('first_name') . " ". $this->getAttributeValue('last_name');
    }
}
