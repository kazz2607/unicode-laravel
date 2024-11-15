<?php

namespace App\Http\Controllers\Doctors\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\ResetsPasswords;
use Illuminate\Support\Facades\Password;
use Illuminate\Validation\Rules;
use Illuminate\Support\Facades\Auth;

class ResetPasswordController extends Controller
{
    use ResetsPasswords;

    protected $redirectTo = '/doctors';

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

    public function showResetForm(Request $request)
    {
        $token = $request->route()->parameter('token');
        //dd($token);
        return view('doctors.auth.reset')->with(
            ['token' => $token, 'email' => $request->email]
        );
    }

    public function broker()
    {
        return Password::broker('doctors');
    }

    protected function guard()
    {
        return Auth::guard('doctor');
    }
}
