<?php

namespace Database\Seeders;

use App\Models\Book;
use App\Models\Author;
use App\Models\Category;
use App\Models\Publisher;
use Illuminate\Database\Seeder;

class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Book::factory(50)
            ->has(Author::factory()->count(1))
            ->has(Category::factory()->count(3))
            ->has(Publisher::factory()->count(1))
            ->create();
    }
}
