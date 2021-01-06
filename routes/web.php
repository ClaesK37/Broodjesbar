<?php

use Illuminate\Support\Facades\Route;

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
    return view('welcome');
});

Route::get('/broodjes', 'App\Http\Controllers\BroodjeController@index')->name('broodjes.index');
Route::get('/broodjes/create', 'App\Http\Controllers\BroodjeController@create')->name('broodjes.create');
//Route::post('/broodjes', 'App\Http\Controllers\BroodjeController@store');
Route::get('/broodjes/{id}', 'App\Http\Controllers\BroodjeController@show');
//Route::delete('/broodjes/{id}', 'App\Http\Controllers\BroodjeController@destroy');

Route::get('/orders', 'App\Http\Controllers\OrderController@index')->name('orders.index')->middleware('auth');
Route::get('/orders/create', 'App\Http\Controllers\OrderController@create')->name('orders.create');
Route::post('/orders', 'App\Http\Controllers\OrderController@store')->name('orders.store');
Route::get('/orders/{id}', 'App\Http\Controllers\OrderController@show')->name('orders.show')->middleware('auth');
Route::delete('/orders/{id}', 'App\Http\Controllers\OrderController@destroy')->name('orders.destroy')->middleware('auth');



Auth::routes([
    'register' => false
]);

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
