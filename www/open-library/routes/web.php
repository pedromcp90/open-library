<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PublisherController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

//Route::resource('user', UserController::class);

//Add Book Routes
//Route::resource('book', BookController::class)->middleware('auth');

//Authentication routes
Auth::routes();

//The route to the home
//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Redirect to the index view in the Book controller
Route::group(['middleware' => 'auth'], function () {
    //Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

    Route::get('/', [HomeController::class, 'index'])->name('home');
    Route::resource('book', BookController::class);
    Route::resource('category', CategoryController::class);
    Route::resource('author', AuthorController::class);
    Route::resource('publisher', PublisherController::class);

    Route::get('navbars', 'NavbarController@index');
    Route::get('navbars-show', 'NavbarController@show');
    Route::post('navbars', 'NavbarController@store')->name('navbars.store');
});
