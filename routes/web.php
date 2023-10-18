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

Route::get('/', [\App\Http\Controllers\HomeController::class, 'index']);
Route::get('lang/{locale}', function ($locale = null) {
    if (isset($locale) && in_array($locale, config('app.locales'))) {
        session()->put('locale', $locale);
        app()->setLocale($locale);
    }
    return redirect()->back();
});
Route::get('/about', [\App\Http\Controllers\AboutUsController::class ,'index']);
Route::get('/contact', [\App\Http\Controllers\ContactController::class ,'index']);
Route::get('/company/{id}', [\App\Http\Controllers\CompanyController::class ,'show']);
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
