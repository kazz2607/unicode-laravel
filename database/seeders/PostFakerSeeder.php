<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory;

class PostFakerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $limit = 20 ;
        for ($i=1; $i <= $limit; $i++) { 
            DB::table('posts')->insert([
                'title' =>  $faker->paragraph(1),
                'content' => $faker->text(),
                'status' => 1,
                'published_at' => $faker->date('Y-m-d H:i:s'),
                'created_at' => $faker->date('Y-m-d H:i:s')
            ]);
        }
    }
}
