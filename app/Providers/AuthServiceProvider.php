<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use App\Models\Doctors;
use Illuminate\Auth\Notifications\ResetPassword;
use App\Models\User;
use App\Models\Posts;
use App\Policies\PostPolicy;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        //
    ];

    /**
     * Register any authentication / authorization services.
     */
    public function boot(): void
    {
        //
        ResetPassword::createUrlUsing(function (Doctors $doctor, string $token) {
            return route('doctors.reset-password', ['token' => $token]).'?email='.$doctor->email;
        });

        // Định nghĩa Gate
        Gate::define('posts.add', function (User $user) {
            return false;
        });
        
        // Gate::define('posts.add', [PostPolicy::class, 'add']);

        Gate::define('posts.edit',function(User $user, Posts $post){
            return $user->id == $post->user_id;
        });
    }
}
