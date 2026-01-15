<?php

use App\Http\Controllers\Api\DiagnosticController;
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

Route::prefix('v1')->group(function () {
    
    // Routes d'authentification (publiques)
    Route::prefix('auth')->group(function () {
        Route::post('/login', [App\Http\Controllers\Api\AuthController::class, 'login']);
        Route::post('/logout', [App\Http\Controllers\Api\AuthController::class, 'logout'])->middleware('api.token');
        Route::get('/me', [App\Http\Controllers\Api\AuthController::class, 'me'])->middleware('api.token');
    });
    
    // Routes pour les diagnostics (protégées par token)
    Route::prefix('diagnostic')->middleware('api.token')->group(function () {
        // Récupérer tous les diagnostics complets pour un utilisateur via son email
        Route::get('/complet/{email}', [DiagnosticController::class, 'getDiagnosticComplet'])
            ->name('api.diagnostic.complet');
    });
    
});
