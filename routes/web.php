<?php

use App\Http\Controllers\Admin\FaqController;
use App\Http\Controllers\Admin\MessageController;
use App\Http\Controllers\Admin\ReviewController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RezerveController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route ;

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


Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/aboutus', [HomeController::class, 'aboutus'])->name('aboutus');
Route::get('/references', [HomeController::class, 'references'])->name('references');
Route::get('/faq', [HomeController::class, 'faq'])->name('faq');
Route::get('/contact', [HomeController::class, 'contact'])->name('contact');
Route::post('/sendmessage', [HomeController::class, 'sendmessage'])->name('sendmessage');
Route::get('/hotel/{id}/{slug}', [HomeController::class, 'hotel'])->name('hotel');
Route::get('/categoryhotels/{id}/{slug}', [HomeController::class, 'categoryhotels'])->name('categoryhotels');
Route::get('/search_page', [HomeController::class, 'search_page'])->name('search_page');
Route::get('/review', [HomeController::class, 'review'])->name('review');
Route::post('/gethotel', [HomeController::class, 'gethotel'])->name('gethotel');
Route::get('/hotellist/{search}', [HomeController::class, 'hotellist'])->name('hotellist');
Route::get('/logout', [HomeController::class, 'logout'])->name('logout');
Route::post('/sendreview/{id}/{slug}', [HomeController::class, 'sendreview'])->name('sendreview');
Route::post('/sendrezerve/{id}', [HomeController::class, 'sendrezerve'])->name('sendrezerve');
Route::post('/rezerve/{id}', [HomeController::class, 'rezerve'])->name('rezerve');


Route::get('/test/{id}/{name}', [HomeController::class, 'test'])->whereNumber('id')->whereAlpha('name')->name('test');

//Admin
Route::middleware('auth')->prefix('admin')->group(function () {
    Route::middleware('admin')->group(function() {

    Route::get('/', [\App\Http\Controllers\Admin\HomeController::class, 'index'])->name('admin_home');

    Route::get('category',[\App\Http\Controllers\Admin\CategoryController::class, 'index'])->name('admin_category');
    Route::get('category/add',[\App\Http\Controllers\Admin\CategoryController::class, 'add'])->name('admin_category_add');
    Route::post('category/create',[\App\Http\Controllers\Admin\CategoryController::class, 'create'])->name('admin_category_create');
    Route::get('category/edit/{id}',[\App\Http\Controllers\Admin\CategoryController::class, 'edit'])->name('admin_category_edit');
    Route::post('category/update/{id}',[\App\Http\Controllers\Admin\CategoryController::class, 'update'])->name('admin_category_update');
    Route::get('category/delete/{id}',[\App\Http\Controllers\Admin\CategoryController::class, 'destroy'])->name('admin_category_delete');
    Route::get('category/show',[\App\Http\Controllers\Admin\CategoryController::class, 'show'])->name('admin_category_show');

//Hotel
Route::prefix('hotel')->group(function (){
    Route::get('/',[\App\Http\Controllers\Admin\HotelController::class,'index'])->name('admin_hotels');
    Route::get('create',[\App\Http\Controllers\Admin\HotelController::class,'create'])->name('admin_hotel_add');
    Route::post('store',[\App\Http\Controllers\Admin\HotelController::class,'store'])->name('admin_hotel_store');
    Route::get('edit/{id}',[\App\Http\Controllers\Admin\HotelController::class,'edit'])->name('admin_hotel_edit');
    Route::post('update/{id}',[\App\Http\Controllers\Admin\HotelController::class,'update'])->name('admin_hotel_update');
    Route::get('delete/{id}',[\App\Http\Controllers\Admin\HotelController::class,'destroy'])->name('admin_hotel_delete');
    Route::get('show',[\App\Http\Controllers\Admin\HotelController::class,'show'])->name('admin_hotel_show');


    });
//Room
    Route::prefix('room')->group(function (){
        Route::get('/',[\App\Http\Controllers\Admin\RoomController::class,'index'])->name('admin_rooms');
        Route::get('create',[\App\Http\Controllers\Admin\RoomController::class,'create'])->name('admin_room_add');
        Route::post('store',[\App\Http\Controllers\Admin\RoomController::class,'store'])->name('admin_room_store');
        Route::get('edit/{id}',[\App\Http\Controllers\Admin\RoomController::class,'edit'])->name('admin_room_edit');
        Route::post('update/{id}',[\App\Http\Controllers\Admin\RoomController::class,'update'])->name('admin_room_update');
        Route::get('delete/{id}',[\App\Http\Controllers\Admin\RoomController::class,'destroy'])->name('admin_room_delete');
        Route::get('show/{id}',[\App\Http\Controllers\Admin\RoomController::class,'show'])->name('admin_room_show');


    });
//message
    Route::prefix('messages')->group(function (){

        Route::get('/',[MessageController::class,'index'])->name('admin_message');
        Route::get('edit/{id}',[MessageController::class,'edit'])->name('admin_message_edit');
        Route::post('update/{id}',[MessageController::class,'update'])->name('admin_message_update');
        Route::get('delete/{id}',[MessageController::class,'destroy'])->name('admin_message_delete');
        Route::post('show',[MessageController::class,'show'])->name('admin_message_show');

    });
    //review
    Route::prefix('reviews')->group(function (){

        Route::get('/',[ReviewController::class,'index'])->name('admin_review');
        Route::get('edit/{id}',[ReviewController::class,'edit'])->name('admin_review_edit');
        Route::post('update/{id}',[ReviewController::class,'update'])->name('admin_review_update');
        Route::get('delete/{id}',[ReviewController::class,'destroy'])->name('admin_review_delete');
        Route::post('show',[ReviewController::class,'show'])->name('admin_review_show');
         });
    //rezerve
    Route::prefix('rezerves')->group(function (){

        Route::get('/',[\App\Http\Controllers\Admin\RezerveController::class,'index'])->name('admin_rezerve');
        Route::get('edit/{id}',[\App\Http\Controllers\Admin\RezerveController::class,'edit'])->name('admin_rezerve_edit');
        Route::post('update/{id}',[\App\Http\Controllers\Admin\RezerveController::class,'update'])->name('admin_rezerve_update');
        Route::get('delete/{id}',[\App\Http\Controllers\Admin\RezerveController::class,'destroy'])->name('admin_rezerve_delete');
        Route::post('show',[\App\Http\Controllers\Admin\RezerveController::class,'show'])->name('admin_rezerve_show');
    });
//Hotel image gallery
    Route::prefix('image')->group(function (){

        Route::get('create/{hotel_id}',[\App\Http\Controllers\Admin\ImageController::class,'create'])->name('admin_image_add');
        Route::post('store/{hotel_id}',[\App\Http\Controllers\Admin\ImageController::class,'store'])->name('admin_image_store');
        Route::get('delete/{id}/{hotel_id}',[\App\Http\Controllers\Admin\ImageController::class,'destroy'])->name('admin_image_delete');
        Route::post('show',[\App\Http\Controllers\Admin\ImageController::class,'show'])->name('admin_image_show');

    });
    #setting
    Route::get('setting', [\App\Http\Controllers\Admin\SettingController::class, 'index'])->name('admin_setting');
    Route::post('setting/update',[\App\Http\Controllers\Admin\SettingController::class,'update'])->name('admin_setting_update');


    Route::prefix('faq')->group(function () {
        Route::get('/', [FaqController::class, 'index'])->name('admin_faq');
        Route::get('create', [FaqController::class, 'create'])->name('admin_faq_add');
        Route::post('store', [FaqController::class, 'store'])->name('admin_faq_store');
        Route::get('edit/{id}', [FaqController::class, 'edit'])->name('admin_faq_edit');
        Route::post('update/{id}', [FaqController::class, 'update'])->name('admin_faq_update');
        Route::get('delete/{id}', [FaqController::class, 'destroy'])->name('admin_faq_delete');
        Route::get('show', [FaqController::class, 'show'])->name('admin_faq_show');

    });
        Route::prefix('user')->group(function () {
            Route::get('/', [\App\Http\Controllers\Admin\UserController::class, 'index'])->name('admin_users');
            Route::post('create', [\App\Http\Controllers\Admin\UserController::class, 'create'])->name('admin_user_add');
            Route::post('store', [\App\Http\Controllers\Admin\UserController::class, 'store'])->name('admin_user_store');
            Route::get('edit/{id}', [\App\Http\Controllers\Admin\UserController::class, 'edit'])->name('admin_user_edit');
            Route::post('update/{id}', [\App\Http\Controllers\Admin\UserController::class, 'update'])->name('admin_user_update');
            Route::get('delete/{id}', [\App\Http\Controllers\Admin\UserController::class, 'destroy'])->name('admin_user_delete');
            Route::get('show/{id}', [\App\Http\Controllers\Admin\UserController::class, 'show'])->name('admin_user_show');
            Route::get('userrole/{id}', [\App\Http\Controllers\Admin\UserController::class, 'user_roles'])->name('admin_user_roles');
            Route::post('userrolestore/{id}', [\App\Http\Controllers\Admin\UserController::class, 'user_role_store'])->name('admin_user_role_add');
            Route::get('userroledelete/{userid}/{roleid}', [\App\Http\Controllers\Admin\UserController::class, 'user_role_delete'])->name('admin_user_role_delete');

        });
    });
});
Route::middleware('auth')->prefix('myaccount')->namespace('myaccount')->group(function () {

    Route::get('/',[UserController::class,'index'])->name('myprofile');


});

Route::middleware('auth')->prefix('user')->namespace('user')->group(function () {

    Route::get('/profile',[UserController::class,'index'])->name('profile');
//review
    Route::prefix('review')->group(function (){

        Route::get('/',[\App\Http\Controllers\ReviewController::class,'index'])->name('user_review');
        Route::post('update/{id}',[\App\Http\Controllers\ReviewController::class,'update'])->name('user_review_update');
        Route::get('delete/{id}',[\App\Http\Controllers\ReviewController::class,'destroy'])->name('user_review_delete');
        Route::get('show/{id}',[\App\Http\Controllers\ReviewController::class,'show'])->name('user_review_show');

    });
    Route::prefix('rezerve')->group(function (){

        Route::get('/',[RezerveController::class,'index'])->name('user_rezerve');
        Route::post('update/{id}',[RezerveController::class,'update'])->name('user_rezerve_update');
        Route::get('delete/{id}',[RezerveController::class,'destroy'])->name('user_rezerve_delete');
        Route::get('show/{id}',[RezerveController::class,'show'])->name('user_rezerve_show');

    });

});


Route::get('/admin', [\App\Http\Controllers\Admin\HomeController::class, 'index'])->name('admin_home')->middleware('auth');

Route::get('/admin/login', [HomeController::class, 'login'])->name('admin_login');

Route::post('/admin/logincheck', [HomeController::class, 'logincheck'])->name('admin_logincheck');

Route::get('/admin/logout', [HomeController::class, 'logout'])->name('admin_logout');


Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
