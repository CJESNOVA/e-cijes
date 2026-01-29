<?php

use App\Http\Controllers\Auth\LoginController;
use Illuminate\Support\Facades\Route;

// Remplacer les routes de login d'Orchid par les nôtres
Route::prefix('admin')->group(function () {
    // Route de login GET
    Route::get('/login', [LoginController::class, 'showLoginForm'])
        ->name('platform.login')
        ->middleware('guest');
    
    // Route de login POST avec notre middleware personnalisé
    Route::post('/login', [LoginController::class, 'login'])
        ->name('platform.login.auth')
        ->middleware(['guest', 'App\Http\Middleware\EnsureLoginRedirect']);
    
    // Route de logout
    Route::post('/logout', [LoginController::class, 'logout'])
        ->name('platform.logout');
});
