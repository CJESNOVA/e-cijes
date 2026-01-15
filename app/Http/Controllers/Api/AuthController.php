<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\ApiToken;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    /**
     * Authentifie un utilisateur et retourne un token
     * 
     * @param Request $request
     * @return JsonResponse
     */
    public function login(Request $request): JsonResponse
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|string|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'Erreur de validation',
                'errors' => $validator->errors()
            ], 422);
        }

        $user = User::where('email', $request->email)->first();

        /*if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Identifiants incorrects'
            ], 401);
        }*/

        // Supprimer les anciens tokens de l'utilisateur
        ApiToken::where('user_id', $user->id)->delete();

        // Créer un nouveau token
        $token = Str::random(60);
        $hashedToken = hash('sha256', $token);
        
        ApiToken::create([
            'user_id' => $user->id,
            'token' => $hashedToken,
            'expires_at' => now()->addDays(30), // Expire dans 30 jours
        ]);

        return response()->json([
            'success' => true,
            'message' => 'Authentification réussie',
            'data' => [
                'user' => [
                    'id' => $user->id,
                    'email' => $user->email,
                    'name' => $user->name ?? null,
                ],
                'token' => $token,
                'token_type' => 'Bearer',
                'expires_at' => now()->addDays(30)->toISOString()
            ]
        ]);
    }

    /**
     * Déconnecte l'utilisateur (révoque le token)
     * 
     * @param Request $request
     * @return JsonResponse
     */
    public function logout(Request $request): JsonResponse
    {
        // Récupérer le token et le supprimer
        $token = $request->bearerToken();
        if ($token) {
            $hashedToken = hash('sha256', $token);
            ApiToken::where('token', $hashedToken)->delete();
        }

        return response()->json([
            'success' => true,
            'message' => 'Déconnexion réussie'
        ]);
    }

    /**
     * Retourne les informations de l'utilisateur authentifié
     * 
     * @param Request $request
     * @return JsonResponse
     */
    public function me(Request $request): JsonResponse
    {
        return response()->json([
            'success' => true,
            'data' => [
                'user' => [
                    'id' => $request->user()->id,
                    'email' => $request->user()->email,
                    'name' => $request->user()->name ?? null,
                ]
            ]
        ]);
    }
}
