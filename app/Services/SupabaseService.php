<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;

class SupabaseService
{
    protected $baseUrl;
    protected $apiKey;

    public function __construct()
    {
        $this->baseUrl = env('SUPABASE_URL') . '/rest/v1';
        $this->apiKey = env('SUPABASE_API_KEY');
        $this->roleKey = env('SUPABASE_SERVICE_ROLE_KEY');
    }

    private function headers()
    {
        return [
            'apikey' => $this->apiKey,
            'Authorization' => 'Bearer ' . $this->apiKey,
            'Content-Type' => 'application/json',
        ];
    }

    public function get($table, $query = [])
    {
        return Http::withHeaders($this->headers())
            ->get("{$this->baseUrl}/{$table}", $query)
            ->json();
    }

    public function insert($table, $data)
    {
        return Http::withHeaders($this->headers())
            ->post("{$this->baseUrl}/{$table}", $data)
            ->json();
    }

    public function update($table, $id, $data)
    {
        return Http::withHeaders($this->headers())
            ->patch("{$this->baseUrl}/{$table}?id=eq.{$id}", $data)
            ->json();
    }

    public function delete($table, $id)
    {
        return Http::withHeaders($this->headers())
            ->delete("{$this->baseUrl}/{$table}?id=eq.{$id}")
            ->json();
    }
    
public function insertWithServiceRole($table, $data)
{
    return Http::withHeaders([
        'apikey'        => env('SUPABASE_SERVICE_ROLE_KEY'),
        'Authorization' => 'Bearer ' . env('SUPABASE_SERVICE_ROLE_KEY'),
        'Content-Type'  => 'application/json',
        // ✅ On demande explicitement à Supabase de renvoyer les lignes créées
        'Prefer'        => 'return=representation',
    ])->post("{$this->baseUrl}/{$table}", $data)
      ->json();
}

    /**
     * Authentifie un utilisateur via Supabase Auth
     * 
     * @param string $email
     * @param string $password
     * @return array
     */
    public function login($email, $password)
    {
        $response = Http::withHeaders([
            'apikey' => $this->apiKey,
            'Authorization' => 'Bearer ' . $this->apiKey,
            'Content-Type' => 'application/json',
        ])->post(env('SUPABASE_URL') . '/auth/v1/token?grant_type=password', [
            'email' => $email,
            'password' => $password,
        ]);

        \Log::info('Supabase auth attempt:', [
            'url' => env('SUPABASE_URL') . '/auth/v1/token?grant_type=password',
            'email' => $email,
            'status' => $response->status(),
            'body' => $response->body(),
            'json' => $response->json()
        ]);

        if ($response->successful()) {
            return $response->json();
        }

        return [
            'error' => true,
            'message' => $response->json()['error_description'] ?? 'Erreur d\'authentification',
            'status' => $response->status(),
            'details' => $response->json()
        ];
    }

    /**
     * Récupère les informations de l'utilisateur depuis Supabase Auth
     * 
     * @param string $token
     * @return array
     */
    public function getUser($token)
    {
        $authUrl = env('SUPABASE_URL') . '/auth/v1/user';
        
        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . $token,
            'apikey' => $this->apiKey,
        ])->get($authUrl);

        if ($response->successful()) {
            return $response->json();
        }

        return [
            'error' => true,
            'message' => 'Token invalide',
            'status' => $response->status()
        ];
    }

    /**
     * Déconnecte l'utilisateur (révoque le token)
     * 
     * @param string $token
     * @return array
     */
    public function logout($token)
    {
        $authUrl = env('SUPABASE_URL') . '/auth/v1/logout';
        
        $response = Http::withHeaders([
            'Authorization' => 'Bearer ' . $token,
            'apikey' => $this->apiKey,
        ])->post($authUrl);

        if ($response->successful()) {
            return ['success' => true];
        }

        return [
            'error' => true,
            'message' => 'Erreur lors de la déconnexion',
            'status' => $response->status()
        ];
    }


}
