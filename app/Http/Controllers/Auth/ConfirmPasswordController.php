<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ConfirmsPasswords;
use App\Providers\RouteServiceProvider;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Mail\Message;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;

class ConfirmPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Confirm Password Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password confirmations and
    | uses a simple trait to include the behavior. You're free to explore
    | this trait and override any functions that require customization.
    |
    */

    use ConfirmsPasswords;

    /**
     * Where to redirect users when the intended url fails.
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
        $this->middleware('auth');
    }

    protected function rules()
    {
        return [
            'password' => 'required|current_password:web',
        ];
    }

    protected function validationErrorMessages()
    {
        return [
            'password.required' => 'Mật khẩu không được để trống',
            'password.current_password' => 'Mật khẩu không chính xác',
        ];
    }

    public function confirm(Request $request)
    {
        $request->validate($this->rules(), $this->validationErrorMessages());

        $this->resetPasswordConfirmationTimeout($request);

        // Xử lý gửi email khi confirm thành công
        $email = Auth::user()->email; // Lấy về email người dùng
        $name = Auth::user()->name;

        $messageBody = 'Chào bạn '.$name.' đã xác nhận mật khẩu thành công';

        Mail::html($messageBody, function ($message) use ($messageBody, $email) {
            //$message->from($request->recipient, $request->name);
            $message->to($email);
            $message->subject('Mail xác nhận mật khẩu thành công');
            $message->html($messageBody);
        });

        return $request->wantsJson()
                    ? new JsonResponse([], 204)
                    : redirect()->intended($this->redirectPath());
    }
}
