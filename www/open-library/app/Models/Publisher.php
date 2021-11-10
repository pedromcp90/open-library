<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publisher extends Model
{
    use HasFactory;

    //Many to many relationship with Books
    public function books()
    {
        return $this->belongsToMany(Book::class);
    }
}
