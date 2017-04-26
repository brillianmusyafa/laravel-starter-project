<?php

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
Route::get('/admin',function(){
  return view('layouts.adminlte');
});

Route::group(['prefix'=>'docs'],function(){
  Route::get('icons',function(){
      return view('pages.icons');
  });
});

Auth::routes();

Route::get('/home', 'HomeController@index');

Route::resource('users', 'UsersController');
Route::resource('admin/role', 'Admin\\RoleController');