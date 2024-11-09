<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */

    public function getContent(){
        $content = file_get_contents('http://loripsum.net/api');
        return strip_tags($content);
    }

    public function getTitle(){
        $content = file_get_contents('http://loripsum.net/api');
        $title = substr(strip_tags($content), 0, rand (40,50));
        return $title;
    }

    public function run(): void
    {
        for ($i=1; $i <= 10; $i++) { 
            DB::table('posts')->insert([
                'title' =>  $this->getTitle(),
                'content' => $this->getContent(),
                'status' => 1,
                'published_at' => date('Y-m-d H:i:s'),
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }
    }
}
