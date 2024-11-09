<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Faker\Factory;

class UserFakerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $limit = 20 ;
        for ($i=1; $i <= $limit ; $i++) { 
            DB::table('users')->insert([
                'name' =>  $faker->name,
                'email' => $faker->email,
                'group_id' => 1,
                'password' => Hash::make('123456'),
                'created_at' => $faker->date('Y-m-d H:i:s'),
            ]);
        }
    }
}
