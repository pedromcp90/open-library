<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    //One to one relationship with publisher
    public function publisher()
    {
        return $this->hasOne('App\Models\Publisher');
    }

    //Many to many relationship with authors
    public function authors()
    {
        return $this->belongsToMany('App\Models\Author');
    }
}
