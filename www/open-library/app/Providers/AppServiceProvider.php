<?php

namespace App\Providers;

use App\Models;
use App\Models\Author;
use App\Models\Category;
use App\Models\Navbar;
//use Illuminate\View\View;
use View;
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
            //$navbars = Navbar::orderBy('ordering')->get();
            //$view->with('navbars', $navbars);

            $controllers = [
                'book' => 'Book',
                'author' => 'Author',
                'category' => 'Category',
                'publisher' => 'Publisher',
            ];
            $nav = [];
            $methods = [
                '' => 'List',
                'create' => 'Create'
            ];
            foreach ($controllers as $controllerPath => $controllerName) {
                $children = [];
                foreach ($methods as $methodPath => $methodName) {
                    $children[] = [
                        'text' => $methodName,
                        'url' => '/'.$controllerPath . '/' . $methodPath
                    ];
                }

                $nav[] = [
                    'text' => $controllerName,
                    'url' => $controllerPath,
                    'children' => $children
                ];
            }

            $view->with('navbars', $nav);
        });
    }
}
