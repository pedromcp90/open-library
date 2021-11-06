<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BookController;


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
Route::resource('book', BookController::class)->middleware('auth');

//Authentication routes
Auth::routes();

//The route to the home
//Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

//Redirect to the index view in the Book controller
Route::group(['middleware' => 'auth'], function(){
    Route::get('/home', [BookController::class, 'index'])->name('home');
});

