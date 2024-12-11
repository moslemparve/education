<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\EventController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ImagesController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\NoticeController;
use App\Http\Controllers\CareerController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\SliderController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\MappingController;
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

// Auth

Route::get('login', [AuthenticatedSessionController::class, 'create'])
    ->name('login')
    ->middleware('guest');

Route::post('login', [AuthenticatedSessionController::class, 'store'])
    ->name('login.store')
    ->middleware('guest');

Route::delete('logout', [AuthenticatedSessionController::class, 'destroy'])
    ->name('logout');

// Dashboard

Route::get('/dashboard', [DashboardController::class, 'index'])
    ->name('dashboard')
    ->middleware('auth');

// Users

Route::get('users', [UsersController::class, 'index'])
    ->name('users')
    ->middleware('auth');

Route::get('users/create', [UsersController::class, 'create'])
    ->name('users.create')
    ->middleware('auth');

Route::post('users', [UsersController::class, 'store'])
    ->name('users.store')
    ->middleware('auth');

Route::get('users/{user}/edit', [UsersController::class, 'edit'])
    ->name('users.edit')
    ->middleware('auth');

Route::put('users/{user}', [UsersController::class, 'update'])
    ->name('users.update')
    ->middleware('auth');

Route::delete('users/{user}', [UsersController::class, 'destroy'])
    ->name('users.destroy')
    ->middleware('auth');

Route::put('users/{user}/restore', [UsersController::class, 'restore'])
    ->name('users.restore')
    ->middleware('auth');

// Organizations
Route::prefix('admin')->name('admin.')->middleware('auth')->group(function(){
    Route::prefix('events')->controller(EventController::class)->name('events.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::post('/store','store')->name('store');
        Route::get('/{event}/edit','edit')->name('edit');
        Route::post('/{event}','update')->name('update');
        Route::delete('/{event}', 'destroy')->name('destroy');
        
    });
    Route::prefix('notices')->controller(NoticeController::class)->name('notices.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::post('/store','store')->name('store');
        Route::get('/{notice}/edit','edit')->name('edit');
        Route::put('/{notice}','update')->name('update');
        Route::delete('/{notice}', 'destroy')->name('destroy');
        
    });
    Route::prefix('careers')->controller(CareerController::class)->name('careers.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::post('/store','store')->name('store');
        Route::get('/{career}/edit','edit')->name('edit');
        Route::put('/{career}','update')->name('update');
        Route::delete('/{career}', 'destroy')->name('destroy');
    });
    Route::prefix('mappings')->controller(MappingController::class)->name('mappings.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::post('/store','store')->name('store');
        Route::get('/{mapping}/edit','edit')->name('edit');
        Route::post('/{mapping}','update')->name('update');
        Route::delete('/{mapping}', 'destroy')->name('destroy');
    });
    Route::prefix('settings')->controller(SettingController::class)->name('settings.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/{module}','show')->name('module');
        Route::post('/{module}','update')->name('update');
    });
    Route::prefix('messages')->controller(MessageController::class)->name('messages.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::post('/store','store')->name('store');
        Route::get('/{message}/edit','edit')->name('edit');
        Route::post('/{message}','update')->name('update');
        Route::delete('/{message}', 'destroy')->name('destroy');
    });
    Route::prefix('news')->controller(NewsController::class)->name('news.')->group(function(){
        Route::get('/','index')->name('index');
        Route::get('/create','create')->name('create');
        Route::post('/store','store')->name('store');
        Route::get('/{news}/edit','edit')->name('edit');
        Route::post('/{news}','update')->name('update');
        Route::delete('/{news}', 'destroy')->name('destroy');
    });

    Route::prefix('sliders')->controller(SliderController::class)->name('sliders.')->group(function(){
        Route::get('/', 'index')->name('index');
        Route::get('/create', 'create')->name('create');
        Route::post('/store', 'store')->name('store');
        Route::get('/{slider}/edit', 'edit')->name('edit');
        Route::post('/{slider}', 'update')->name('update');
        Route::delete('/{slider}', 'destroy')->name('destroy');
    });

    Route::prefix('projects')->controller(ProjectController::class)->name('projects.')->group(function(){
        Route::get('/', 'index')->name('index');
        Route::get('/create', 'create')->name('create');
        Route::post('/store', 'store')->name('store');
        Route::get('/{project}/edit', 'edit')->name('edit');
        Route::post('/{project}', 'update')->name('update');
        Route::delete('/{project}', 'destroy')->name('destroy');
    });
});

//website
Route::prefix('/')->controller(HomeController::class)->name('website.')->group(function(){
    Route::get('/','index')->name('home');
    Route::get('about','about')->name('about');
    Route::get('event/{id}','event')->name('event');
    Route::get('message/{id}','message')->name('message');
    Route::get('schools','school')->name('school');
    Route::get('events','events')->name('events');
    Route::get('projects', 'projects')->name('projects');
    Route::get('project/{id}', 'project')->name('project');
    // Route::get('/notices', 'notices')->name('notices');
    // Route::get('/events-details', function(){
    //     return view('website.event-details');
    // })->name('events.details');
});