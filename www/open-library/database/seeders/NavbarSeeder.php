<?php

namespace Database\Seeders;

use App\Models\Navbar;
use Illuminate\Database\Seeder;

class NavbarSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $links = [
            [
                'name' => 'Home',
                'route' => 'home',
                'ordering' => 1,
            ],
            [
                'name' => 'Books',
                'route' => 'book.index',
                'ordering' => 2,
            ],
            [
                'name' => 'Authors',
                'route' => 'author.index',
                'ordering' => 3,
            ],
            [
                'name' => 'Categories',
                'route' => 'category.index',
                'ordering' => 3,
            ]
        ];

        foreach ($links as $key => $navbar) {
            Navbar::create($navbar);
        }
    }
}
