<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\RegisterController;
use \CoinMarketCapApi as CMC;
use App\Models\User;
use App\Models\Referal;

use Illuminate\Support\Facades\Hash;

Auth::routes();

Route::get('/clear-cache',function(){
    Artisan::call('cache:clear');
    return 'Cache cleared successfully';
});

Route::get('/', function () {
    $cryptos = CMC::all_cryptos()->status->get();
    return $cryptos;
    return view('welcome', compact('cryptos'));

});

// Route::get('/test', function(){
//     $user = Referal::all()->where('user_id', '=', auth()->user()->id)->first();
//     return $user->ref_code;

// });

Route::middleware(['auth'])->group(function(){
    Route::get('/dashboard', 'HomeController@index');

    // Get User Referals
    Route::get('/referals', 'ReferalController@index');

    // Get User profile
    Route::get('/profile', 'UserController@userProfile');
    Route::post('/profile/edit','UserController@store');

});

Route::middleware(['admin'])->group(function(){
    Route::get('/users', 'UserController@index');
    Route::get('/users/{id}', 'UserController@getUser');
    Route::post('users/delete', 'UserController@delete');
});

Route::get('/deposit', 'DepositController@index');

