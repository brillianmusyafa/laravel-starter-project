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

// Route::get('/', function () {
//     return view('layouts.halaman_muka');
// });
Route::get('/','HomeController@index');
Route::get('/daftar/{kategori}','HomeController@daftar');
Route::get('/daftar/{id}/pertanyaan','HomeController@pertanyaan');
Route::get('/daftar_pertanyaan','PertanyaanController@list_pertanyaan');
Route::get('/perpustakaan_keuangan_daerah','HomeController@perpustakaan_keuangan_daerah');
Route::get('/apbd','HomeController@apbd');
Route::get('/admin',function(){
	return view('layouts.adminlte');
});


Route::group(['prefix'=>'admin'],function(){
	Route::get('dashboard','HomeController@dashboard');
	Route::resource('kategory', 'KategoryController');
	Route::resource('pertanyaan', 'PertanyaanController');

	Route::resource('peraturan_daerah', 'Peraturan_daerahController');
	Route::resource('berita', 'BeritaController');
	Route::resource('apbd', 'ApbdController');
});

Route::group(['prefix'=>'docs'],function(){
	Route::get('icons',function(){
		return view('pages.icons');
	});
});

Route::resource('users', 'UsersController');
Route::resource('admin/role', 'Admin\\RoleController');
Auth::routes();
Route::get('/home', 'HomeController@index');
Route::resource('buku_tamu', 'Buku_tamuController');
Route::resource('skpd', 'SkpdController');
Route::resource('bidang', 'BidangController');
