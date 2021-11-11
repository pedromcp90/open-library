<?php

namespace Database\Seeders;

use Faker\Factory;
use App\Models\Book;
use App\Models\User;
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

        $faker = Factory::create();
        User::factory(50)->create();
        Book::factory(50)
            ->has(Author::factory()->count(3))
            ->has(Category::factory()->count(3))
            ->create();
        $maxCount = 4;
        foreach (User::all() as $user) {
            $bookCount = 0;
            foreach (Book::all() as $book) {

                if ($bookCount >= $maxCount) {
                    continue;
                }

                if (rand(1, 100) > 30) {

                    //Set the date when the user reserved the book.
                    $reserve_date = $faker->dateTimeBetween('-10 year', '-3 day');

                    $max_due_date = new \DateTime($reserve_date->format('Y-m-d H:i:s'));
                    $max_due_date->add(new \DateInterval('P100D'));
                    $due_date = $faker->dateTimeBetween($reserve_date, $max_due_date);

                    $return_date = NULL;

                    if ((rand(0, 100) > 10)) {
                        $return_date =  $faker->dateTimeBetween($reserve_date, 'now');
                    }

                    $book->users()->attach($user->id, [
                        'reserve_date' => $reserve_date,
                        'due_date' => $due_date,
                        'return_date' => $return_date
                    ]);
                    $bookCount++;
                }
            }
            $book->save();
        }
    }
}
