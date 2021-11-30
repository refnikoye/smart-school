<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:admin')->get('/school', function (Request $request) {
    return $request->school();
});

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('/school', SchoolController::class);
Route::resource('/user', UserController::class);
Route::get('/userbyschool/{id}',[UserController::class, 'showbyschool']);
Route::post('/loginadmin', [AdminLoginController::class, 'login']);
Route::post('/logoutadmin', [AdminLoginController::class, 'logout']);
Route::post('/loginuser', [UserLoginController::class, 'login']);
Route::post('/logoutuser', [UserLoginController::class, 'logout']);
Route::get('kirim-email',[tesEmail::class, 'index']);

Route::get('/comments', 'CommentController@fetchComments');
Route::post('/comments', 'CommentController@store');

//Route::group(['prefix' => 'message'], function () {
    Route::get('user-message/{id}', [MessageController::class, 'fetchMessage']);
    Route::post('user-message', [MessageController::class, 'send']);
//});