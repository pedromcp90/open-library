<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        /**
         * Truncate the tables
         */
        $this->truncateTables([
            'authors',
            'categories',
            'navbars',
            'publishers',
            'users',
            'books'
        ]);

        /**
         * Execute Seeders
         */
        $this->call(UserSeeder::class);
        $this->call(AuthorSeeder::class);
        $this->call(CategorySeeder::class);
        $this->call(PublisherSeeder::class);
        $this->call(NavbarSeeder::class);
        $this->call(BookSeeder::class);
    }

    /**
     * Truncate the desired tables
     *
     * @param array $tables
     * @return void
     */
    public function truncateTables(array $tables)
    {


        DB::statement('SET FOREIGN_KEY_CHECKS = 0;');
        foreach ($tables as $table) {
            DB::table($table)->truncate();
        }
        DB::statement('SET FOREIGN_KEY_CHECKS = 1;');
    }
}
