<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/product', [\App\Http\Controllers\ProductController::class, 'index']);
// Route::get('/product/create', [\App\Http\Controllers\ProductController::class, 'create']);
// Route::get('/product/{id}', [\App\Http\Controllers\ProductController::class, 'show']);
// Route::put('/product/edit/{id}', [\App\Http\Controllers\ProductController::class, 'edit']);
// Route::post('/product/update/{id}', [\App\Http\Controllers\ProductController::class, 'update']);
// Route::post('/product/create/{id}', [\App\Http\Controllers\ProductController::class, 'store']);
// Route::post('/product/delete/{id}', [\App\Http\Controllers\ProductController::class, 'destroy']);

Route::get('/product', [\App\Http\Controllers\ProductController::class, 'index']);
Route::get('/product/create', [\App\Http\Controllers\ProductController::class, 'create']);
Route::get('/product/{id}/edit', [\App\Http\Controllers\ProductController::class, 'edit']);
Route::get('/product/{id}', [\App\Http\Controllers\ProductController::class, 'show']);
Route::put('/product/{id}', [\App\Http\Controllers\ProductController::class, 'update']);
Route::post('/product', [\App\Http\Controllers\ProductController::class, 'store']);
Route::delete('/product/{id}', [\App\Http\Controllers\ProductController::class, 'destroy']);

Route::get('/login', function () {
    if (Auth::check()) return redirect('/product');
    return view('login');
    })->name('login');

Route::get('/logout', function () {
    Auth::logout();
    return redirect('/login');
    });
    
Route::resource('/product', \App\Http\Controllers\ProductController::class)->middleware('auth');


// Route::get('/session/tampil',[\App\Http\Controllers\SessionController::class, 'tampilkanSession']);
// Route::get('/session/buat',[\App\Http\Controllers\SessionController::class, 'buatSession']);
// Route::get('/session/hapus',[\App\Http\Controllers\SessionController::class, 'hapusSession']);
Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
