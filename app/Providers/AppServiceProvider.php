<?php

namespace App\Providers;

use App\Models\CompanyProfile;
use App\Models\Newpage;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->share('company', CompanyProfile::first());
        view()->share('pages', Newpage::all());
    }
}
