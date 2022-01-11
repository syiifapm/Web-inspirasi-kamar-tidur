<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ConceptController;
use App\Models\Concept;

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
    return view('frontend.index', [
        'concepts' => Concept::latest()->take(4)->get()
    ]);
});

Route::get('/more_concept', function () {
    return view('frontend.more', [
        'concepts' => Concept::latest()->get()
    ]);
});

// User Controller
Route::get('/register', [UserController::class, 'register']);
Route::get('/login', [UserController::class, 'login'])->name('login');
Route::post('/registered', [UserController::class, 'store']);
Route::post('/auth', [UserController::class, 'masuk']);

// Admin Controller
Route::resource('/dashboard/concept', ConceptController::class);
