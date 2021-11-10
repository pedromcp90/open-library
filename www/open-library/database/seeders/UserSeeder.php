<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'first_name' => 'John',
            'last_name' => 'Smith',
            'phone_number' => '658741247',
            'address' => 'Avenida Ramón y Cajal, 55, Santa Cruz de Tenerife, Spain',
            'email' => 'admin@openlibrary.loc',
            'password' => bcrypt('admin')
        ]);
    }
}
