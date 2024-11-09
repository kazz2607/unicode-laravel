<?php

use Illuminate\Support\Facades\Route;
use Faker\Factory;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/faker', function () {
    $faker = Factory::create();
    $limit = 10 ;
    for ($i=0; $i <= $limit; $i++) { 
        $customers[$i] = [
            'name' => $faker->name,
            'email' => $faker->unique()->email,
            'phone' => $faker->phoneNumber,
            'website' => $faker->domainName,
            'age' => $faker->numberBetween(20,100),
            'address' => $faker->address,
            'card' => $faker->creditCardNumber
        ];
    }
    dd($customers);
});

