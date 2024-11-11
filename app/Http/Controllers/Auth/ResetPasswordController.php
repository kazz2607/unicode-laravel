<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ResetsPasswords;
use App\Providers\RouteServiceProvider; 
use Illuminate\Validation\Rules;

class ResetPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset requests
    | and uses a simple trait to include this behavior. You're free to
    | explore this trait and override any methods you wish to tweak.
    |
    */

    use ResetsPasswords;

    /**
     * Where to redirect users after resetting their password.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::ADMIN;

    protected function rules()
    {
        return [
            'token' => 'required',
            'email' => 'required|email',
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
            'password_confirmation' => 'required',
        ];
    }

    protected function validationErrorMessages()
    {
        return [
            'token.required' => 'Token không được để trống',
            'email.required' => 'Email không được để trống',
            'email.email' => 'Dữ liệu không đúng định dãng email',
            'password.required' => 'Mật khẩu không được để trống',
            'password_confirmation.required' => 'Mật khẩu nhập lại không được để trống',
            'password.confirmed' => 'Mật khẩu nhập không giống nhau'
        ];
    }
    
}
