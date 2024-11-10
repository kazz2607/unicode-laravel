<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Validation\ValidationException;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::ADMIN;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('auth')->only('logout');
    }

    public function logout(Request $request)
    {
        $this->guard()->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        if ($response = $this->loggedOut($request)) {
            return $response;
        }

        return $request->wantsJson()
            ? new JsonResponse([], 204)
            : redirect(route('login'));
    }

    protected function validateLogin(Request $request)
    {
        $request->validate([
            $this->username() => 'required|string',
            'password' => 'required|string|min:6',
        ],
        [
            $this->username().'.required' => 'Tên đăng nhập bắt buộc phải nhập',
            $this->username().'.string' => 'Tên đăng nhập không hợp lệ',
            $this->username().'.email' => 'Tên đăng nhập phải là định dạng email',
            'password.required' => 'Mật khẩu bắt buộc phải nhập',
            'password.string' => 'Mật khẩu dữ liệu không hợp lệ',
            'password.min' => 'Mật khẩu bắt buộc phải từ :min ký tự',
        ]
        );
    }

    protected function sendFailedLoginResponse(Request $request)
    {
        throw ValidationException::withMessages([
            $this->username() => ['Thông tin đăng nhập không hợp lệ'],
        ]);
    }

    public function username()
    {
        return 'username';
    }

    protected function credentials(Request $request)
    {   
        if (filter_var($request->username, FILTER_VALIDATE_EMAIL)){
            $fieldDB = 'email';
        }else{
            $fieldDB = 'username'; 
        }

        $dataArr = [
            $fieldDB => $request->username,
            'password' => $request->password
        ];
        
        return $dataArr;

        // return $request->only($this->username(), 'password');
    }
}
