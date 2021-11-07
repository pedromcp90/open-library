<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            'Adventures',
            'Audiobook',
            'Biography',
            'Classics',
            'Comics',
            'Cook books',
            'Dictionary',
            'E-book',
            'Encyclopedias',
            'Fairy tales',
            'Historical novels',
            'History',
            'Holy bibble',
            'Koran',
            'Love',
            'Mystery',
            'Philosophy',
            'Pocket books',
            'Poetry',
            'Politics',
            'Science fiction',
            'Self-aid',
            'Torah',
            'Travel guide'
        ];
        foreach ($categories as $key => $value) {
            DB::table('categories')->insert([
                'name' => $value
            ]);
        }
    }
}
