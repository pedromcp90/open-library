<?php

namespace App\Providers;

use View;
use App\Helpers\Helper;
use Illuminate\Pagination\Paginator;
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
        //Add pagination
        Paginator::useBootstrap();

        //Add the navigation elements
        View::composer('*', function ($view) {
            $nav = Helper::generateNav();
            $view->with('navbars', $nav);
            $pathInfo = Helper::getPathInfoAsArray();
            $view->with('currentPath', $pathInfo);
        });
    }
}
