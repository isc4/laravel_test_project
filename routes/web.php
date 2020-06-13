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




Route::get('/', 'ProductsController@index')->name('product.index'); // +
Route::get('/products', 'ProductsController@sorting')->name('product.sorting');
Route::get('/product/{id?}','ProductsController@show')->name('product.show');

Route::get('/cart', 'CartController@index')->name('cart.index');
Route::get('/cart/add/{id?}', 'CartController@add')->name('cart.add');
Route::get('/cart/delete/{id?}', 'CartController@delete')->name('cart.delete');
Route::get('/cart/toggle/{id?}', 'CartController@toggle')->name('cart.toggle');

Route::get('/ajax', 'CartController@ajax')->name('ajax');


