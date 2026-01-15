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
    
    // Routes pour les diagnostics
    Route::prefix('diagnostic')->group(function () {
        // Récupérer tous les diagnostics complets pour un utilisateur via son email
        Route::get('/complet/{email}', [DiagnosticController::class, 'getDiagnosticComplet'])
            ->name('api.diagnostic.complet');
    });
    
});
