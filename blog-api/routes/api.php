<?php

use App\Http\Controllers\userauthcontroller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\studentController;
use App\Http\Controllers\membercontroller;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctm');

Route::get("/test", function () {
    return ["name=>nisha raiyani", 'channel' => "welcome"];
});

Route::post('signup', [userauthcontroller::class, 'signup']);

Route::post('login', [userauthcontroller::class, 'login']);


Route::group(['middleware' => "auth:sanctum"], function () {

    Route::get('students', [studentController::class, 'list']);

    Route::post('add-student', [studentController::class, 'addstudent']);

    Route::put('update-student', [studentController::class, 'updatestudent']);

    Route::delete('delete-student/{id}', [studentController::class, 'deletestudent']);

    Route::get('search-student/{title}', [studentController::class, 'searchstudent']);

});




