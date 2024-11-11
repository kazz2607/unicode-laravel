@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Xác nhận mật khẩu') }}</div>

                <div class="card-body">
                    <div class="alert alert-warning">
                        {{ __('Vui lòng xác nhận mật khẩu trước khi tiếp tục.') }}
                    </div>
                    <form method="POST" action="{{ route('password.confirm') }}">
                        @csrf
                        @if($errors->any())
                            <div class="alert alert-danger">
                                Đã có lỗi xảy ra. Vui lòng kiểm tra dữ liệu bên dưới.
                            </div>
                        @endif
                        <div class="row mb-3">
                            <label for="password" class="col-md-4 col-form-label text-md-end">{{ __('Mật khẩu') }}</label>

                            <div class="col-md-6">
                                <input id="password" placeholder="Mật khẩu" type="password" class="form-control @error('password') is-invalid @enderror" name="password" autocomplete="current-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="row mb-0">
                            <div class="col-md-8 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Xác nhận mật khẩu') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="btn btn-link" href="{{ route('password.request') }}">
                                        {{ __('Quên mật khẩu?') }}
                                    </a>
                                @endif
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
