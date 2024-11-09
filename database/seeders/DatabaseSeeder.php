<?php

namespace Database\Seeders;
Use Database\Seeders\PostSeeder;
Use Database\Seeders\UserSeeder;
Use Database\Seeders\UserFakerSeeder;
Use Database\Seeders\PostFakerSeeder;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(UserFakerSeeder::class);
        $this->call(PostFakerSeeder::class);
        
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
