<?php

namespace Database\Factories;

use App\Models\Book;
use App\Models\Author;
use App\Models\Category;
use App\Models\Publisher;
use Illuminate\Database\Eloquent\Factories\Factory;

class BookFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'isbn'=> $this->faker->isbn13(),
            'title' => $this->faker->sentence(4),
            'cover_image' =>  $this->faker->imageUrl(400, 600, 'books', true),
            'publication_year' =>  $this->faker->time('Y'),
            'description' => $this->faker->sentence(40),
            'publisher_id' => function () {
                return Publisher::factory()->create()->id;
            },
        ];
    }
}
