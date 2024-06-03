<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\TextController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;



Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function(){
        Route::get('/', function () {
            return view('index');
        });
        Route::get('/', [HomeController::class, 'index'])->name('main.index');

        Route::resource('/text-editor', TextController::class);

    });
