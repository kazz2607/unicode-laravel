<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Group;
use Faker\Factory;

class GroupSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $faker = Factory::create();
        // //
        // $group = New Group;
        // $group->name = 'Administrator';
        // $group->save();
        
        // Khai báo chạy factory
        // Group::factory()->create();

        // Tạo factory với số lượng
        // Group::factory()->count(5)->sequence(
        //     ['name' => 'Administrator'],
        //     ['name' => 'Manager'],
        //     ['name' => 'Sale'],
        //     ['name' => 'Staff'],
        //     ['name' => 'Subscriber'],
        // )->create();

        // Model Factory - Tạo dữ liệu test phức tạp - Liên kết User
        Group::factory()->count(5)->sequence(
            ['name' => 'Administrator'],
            ['name' => 'Manager'],
            ['name' => 'Sale'],
            ['name' => 'Staff'],
            ['name' => 'Subscriber'],
        )
        ->hasUsers(5)
        ->create();
    }
}
