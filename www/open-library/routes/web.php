<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\BookUserController;
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


//Authentication routes
Auth::routes();

//Home Route
Route::get('/', [BookController::class, 'publicIndex'])->name('home');
//Public path to list books, authors,
Route::get('/book', [BookController::class, 'publicIndex']);
Route::get('/book/{id}', [BookController::class, 'show']);
Route::get('/author/{id}', [AuthorController::class, 'show']);


Route::group(['middleware' => 'auth'], function () {
    //Admin paths to edit or create
    Route::get('/admin', [HomeController::class, 'admin'])->name('admin');
    Route::get('/admin/reservation', [BookUserController::class, 'index']);
    Route::resource('admin/book', BookController::class);
    Route::resource('admin/category', CategoryController::class);
    Route::resource('admin/author', AuthorController::class);
    Route::resource('admin/publisher', PublisherController::class);
});

