<?php

use Illuminate\Support\Facades\Route;
use Faker\Factory;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Doctors\Auth\LoginController;
use App\Http\Controllers\Doctors\Auth\ForgotPasswordController;
use App\Http\Controllers\Doctors\Auth\ResetPasswordController;
use App\Http\Controllers\Doctors\IndexController;
use App\Http\Controllers\Admin\PostController;
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

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home')->middleware('verified');

Route::prefix('admin')->middleware(['auth','verified'])->name('admin.')->group( function() {
    Route::get('/', [AdminController::class, 'index']);

    Route::prefix('posts')->name('posts.')->group(function(){
        Route::get('/', [PostController::class,'index'])->name('index');
        Route::get('/add', [PostController::class,'add'])->name('add')->can('posts.add');
        Route::get('/edit/{post}', [PostController::class,'edit'])->name('edit')->can('posts.edit','post');
        Route::get('/show/{post}', [PostController::class,'show'])->name('show');
        Route::get('/delete/{id}', [PostController::class,'delete'])->name('delete');
    });
});

// Link thông báo veryfy khi người đăng ký tài khoản, chưa xác thực email
Route::get('/email/verify', function () {
    return view('auth.verify');
})->middleware('auth')->name('verification.notice');

// Liên kết sẽ được gửi vào email của người đăng ký
Route::get('/email/verify/{id}/{hash}', function (EmailVerificationRequest $request) {
    $request->fulfill();
    
    return redirect('/home');
})->middleware(['auth', 'signed'])->name('verification.verify');

// Xử lý hành động gửi lại email
Route::post('/email/verification-notification', function (Request $request) {
    $request->user()->sendEmailVerificationNotification();
 
    return back()->with('message', 'Verification link sent!');
})->middleware(['auth', 'throttle:6,1'])->name('verification.resend');

// Route Doctors

Route::prefix('doctors')->name('doctors.')->group(function(){
    Route::get('/',[IndexController::class,'index'])->middleware('auth:doctor')->name('index');
    Route::get('/login',[LoginController::class,'login'])->middleware('guest:doctor')->name('login');
    Route::get('/forgot-password',[ForgotPasswordController::class,'getForgotPassword'])->middleware('guest:doctor')->name('forgot-password');
    Route::post('/forgot-password',[ForgotPasswordController::class,'sendResetLinkEmail'])->middleware('guest:doctor');
    
    Route::get('/reset-password/{token}',[ResetPasswordController::class,'showResetForm'])->name('reset-password');
    Route::post('/reset-password',[ResetPasswordController::class,'reset'])->name('update-password');
    
    Route::post('/login',[LoginController::class,'postLogin'])->middleware('guest:doctor');
    
    Route::post('/logout', function(){
        Auth::guard('doctor')->logout();
        return redirect()->route('doctors.login');
    })->middleware('auth:doctor')->name('logout');
});