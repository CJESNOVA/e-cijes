<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\ApiToken;

class ApiTokenAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        $token = $request->bearerToken();
        
        if (!$token) {
            return response()->json([
                'success' => false,
                'message' => 'Token manquant'
            ], 401);
        }

        // Hash le token pour le comparer avec celui en base de données
        $hashedToken = hash('sha256', $token);
        $apiToken = ApiToken::where('token', $hashedToken)
            ->where('expires_at', '>', now())
            ->with('user')
            ->first();

        if (!$apiToken) {
            return response()->json([
                'success' => false,
                'message' => 'Token invalide ou expiré'
            ], 401);
        }

        // Ajouter l'utilisateur authentifié à la requête
        $request->setUserResolver(function () use ($apiToken) {
            return $apiToken->user;
        });

        return $next($request);
    }
}
