<?php

namespace App\Http\Controllers\Doctors\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Providers\RouteServiceProvider;

class LoginController extends Controller
{
    public function __construct(){
        
    }
    public function login(){
        if (Auth::guard('doctor')->check()){
            echo 'Đăng nhập thành công';
            $infoUser = Auth::guard('doctor')->user();
            dd($infoUser);
        }
        return view('doctors.auth.login');
    }
    public function postLogin(Request $request){
        $dataLogin = $request->except(['_token']);
        if (isDoctorActive($dataLogin['email'])){
            $check = Auth::guard('doctor')->attempt($dataLogin);
            if ($check){
                return redirect(RouteServiceProvider::DOCTOR);
            }
            return back()->with('msg','Email hoặc mật khẩu không hợp lệ');
        }
        return back()->with('msg','Tài khoản chưa được kích hoạt');
    }
}
