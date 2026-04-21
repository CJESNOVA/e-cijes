<?php

echo "=== DÉBOGAGE AUTHENTIFICATION SUPABASE ===\n\n";

// 1. Vérifier les variables d'environnement
echo "1. VARIABLES D'ENVIRONNEMENT :\n";
echo "SUPABASE_URL: " . (env('SUPABASE_URL') ? '✅ Définie' : '❌ Non définie') . "\n";
echo "SUPABASE_API_KEY: " . (env('SUPABASE_API_KEY') ? '✅ Définie (' . substr(env('SUPABASE_API_KEY'), 0, 20) . '...)' : '❌ Non définie') . "\n";
echo "SUPABASE_SERVICE_ROLE_KEY: " . (env('SUPABASE_SERVICE_ROLE_KEY') ? '✅ Définie (' . substr(env('SUPABASE_SERVICE_ROLE_KEY'), 0, 20) . '...)' : '❌ Non définie') . "\n\n";

// 2. Test de connexion avec clé API
echo "2. TEST CONNEXION AVEC SUPABASE_API_KEY :\n";
if (env('SUPABASE_API_KEY')) {
    $response = Http::withHeaders([
        'apikey' => env('SUPABASE_API_KEY'),
        'Authorization' => 'Bearer ' . env('SUPABASE_API_KEY'),
        'Content-Type' => 'application/json',
    ])->get(env('SUPABASE_URL') . '/rest/v1/countries?limit=1');
    
    echo "Status: " . $response->status() . "\n";
    echo "Réponse: " . $response->body() . "\n\n";
} else {
    echo "❌ SUPABASE_API_KEY non définie\n\n";
}

// 3. Test de connexion avec SERVICE_ROLE_KEY
echo "3. TEST CONNEXION AVEC SUPABASE_SERVICE_ROLE_KEY :\n";
if (env('SUPABASE_SERVICE_ROLE_KEY')) {
    $response = Http::withHeaders([
        'apikey' => env('SUPABASE_SERVICE_ROLE_KEY'),
        'Authorization' => 'Bearer ' . env('SUPABASE_SERVICE_ROLE_KEY'),
        'Content-Type' => 'application/json',
    ])->get(env('SUPABASE_URL') . '/rest/v1/countries?limit=1');
    
    echo "Status: " . $response->status() . "\n";
    echo "Réponse: " . $response->body() . "\n\n";
} else {
    echo "❌ SUPABASE_SERVICE_ROLE_KEY non définie\n\n";
}

// 4. Test de l'URL Supabase
echo "4. TEST URL SUPABASE :\n";
if (env('SUPABASE_URL')) {
    $response = Http::get(env('SUPABASE_URL'));
    echo "Status: " . $response->status() . "\n";
    echo "URL testée: " . env('SUPABASE_URL') . "\n\n";
} else {
    echo "❌ SUPABASE_URL non définie\n\n";
}

// 5. Vérification du format des clés
echo "5. VÉRIFICATION FORMAT CLÉS :\n";
if (env('SUPABASE_API_KEY')) {
    $apiKey = env('SUPABASE_API_KEY');
    echo "SUPABASE_API_KEY length: " . strlen($apiKey) . " chars\n";
    echo "Format JWT: " . (preg_match('/^[a-zA-Z0-9._-]+$/', $apiKey) ? '✅' : '❌') . "\n";
}

if (env('SUPABASE_SERVICE_ROLE_KEY')) {
    $roleKey = env('SUPABASE_SERVICE_ROLE_KEY');
    echo "SUPABASE_SERVICE_ROLE_KEY length: " . strlen($roleKey) . " chars\n";
    echo "Format JWT: " . (preg_match('/^[a-zA-Z0-9._-]+$/', $roleKey) ? '✅' : '❌') . "\n";
}

echo "\n=== FIN DÉBOGAGE ===\n";
?>
