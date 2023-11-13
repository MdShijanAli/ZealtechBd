<?php

use App\Http\Controllers\Admin\AboutController;
use App\Http\Controllers\Admin\AuthenticationController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ClientController;
use App\Http\Controllers\Admin\CompanyProfileController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\GalleryController;
use App\Http\Controllers\Admin\NewPageController;
use App\Http\Controllers\Admin\PortfolioController;
use App\Http\Controllers\Admin\RegistrationController;
use App\Http\Controllers\Admin\ServiceController;
use App\Http\Controllers\Admin\TeamController;
use App\Http\Controllers\Admin\TestimonialController;
use App\Http\Controllers\ContactUsController;
use App\Http\Controllers\HomeController;
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

Route::get('/', [HomeController::class, 'index'])->name('home');

// contact 
Route::get('/contact', [ContactUsController::class, 'contact'])->name('contact');
Route::post('/contact', [ContactUsController::class, 'contactStore'])->name('contact.store');

// subscriber 
Route::post('/subscriber', [ContactUsController::class, 'subscriberStore'])->name('subscriber.store');

// service
Route::get('/service', [HomeController::class, 'service'])->name('service');
Route::get('/service/{slug}', [HomeController::class, 'singleService'])->name('single-service');

// team member
Route::get('/team', [HomeController::class, 'teamMember'])->name('team');

Route::get('/portfolios', [HomeController::class, 'portfolio'])->name('portfolios');

// gallery 
Route::get('/gallery', [HomeController::class, 'gallery'])->name('gallery');
// other page 
Route::get('/other-page/{slug}', [HomeController::class, 'newPages'])->name('other-page');

//  *****  Admin Route *****

// login
Route::get('/admin', [AuthenticationController::class, 'login'])->name('login');
Route::post('/admin', [AuthenticationController::class, 'AuthCheck'])->name('login.check');
Route::put('/admin', [AuthenticationController::class, 'passwordUpdate'])->name('password.change');

// Admin dashboard route
Route::group(['middleware' => ['auth']] , function(){

    // Dashboard
    Route::get('/home', [DashboardController::class, 'index'])->name('admin');

    // logout
    Route::get('/logout', [AuthenticationController::class, 'logout'])->name('logout');

    // company profile 
    Route::get('/company-profile', [CompanyProfileController::class, 'edit'])->name('company.edit');
    Route::put('/company-profile/{company}', [CompanyProfileController::class, 'update'])->name('company.update');

    // Company About 
    Route::get('/company-about', [AboutController::class, 'edit'])->name('about.edit');
    Route::put('/company-about/{about}', [AboutController::class, 'update'])->name('about.update');

    // Team
    Route::resource('/teams', TeamController::class)->except('show');

    // service
    Route::resource('/services', ServiceController::class)->except('show');
    Route::get('/get_service/{id}', [ServiceController::class, 'getServiceId']);

    // Testimonial
    Route::resource('/testimonial', TestimonialController::class)->except('show');

    // client 
    Route::resource('/client', ClientController::class)->except('show', 'create');

    // Gallery
    Route::resource('/galleries', GalleryController::class)->except('create', 'show');

    // Category
    Route::resource('category', CategoryController::class)->except('create', 'show');

    // contact
    Route::get('/contact-list', [ContactUsController::class, 'contactList'])->name('contact.list');
    Route::get('/get_contact/{id}', [ContactUsController::class, 'getContactById']);
    Route::delete('/contact/{contact}', [ContactUsController::class, 'destroy'])->name('contact.destroy');

    // subscriber 
    Route::get('/subscriber', [ContactUsController::class, 'subscriberList'])->name('subscriber.list');
    Route::delete('/subscriber/{subscriber}', [ContactUsController::class, 'subscriberDestroy'])->name('subscriber.destroy');

    // Create user
    Route::get('/registration', [RegistrationController::class, 'index'])->name('register.create');
    Route::post('/registration', [RegistrationController::class, 'store'])->name('register.store');

    // newPages
    Route::resource('/pages', NewPageController::class)->except('show');

    // portfolio
    Route::resource('portfolio', PortfolioController::class)->except('show');

    Route::get('/profile', [AuthenticationController::class, 'profile'])->name('profile');
    Route::put('/profile', [AuthenticationController::class, 'profileUpdate'])->name('profile.update');

});