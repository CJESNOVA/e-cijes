<?php

require_once __DIR__ . '/vendor/autoload.php';

use Illuminate\Http\Request;

// Test de l'API de diagnostic complet

echo "=== Test de l'API de Diagnostic Complet ===\n\n";

// URL de base de l'API
$baseUrl = 'http://localhost/cijet/public/api/v1/diagnostic/complet/';

// Test avec un email utilisateur fictif
$testUserEmail = 'test@example.com';

echo "Test avec l'email utilisateur: $testUserEmail\n";
echo "URL: $baseUrl$testUserEmail\n\n";

// Utilisation de cURL pour tester l'API
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $baseUrl . $testUserEmail);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    'Accept: application/json',
    'Content-Type: application/json'
]);
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);

$response = curl_exec($ch);
$httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
$error = curl_error($ch);

curl_close($ch);

if ($error) {
    echo "Erreur cURL: $error\n";
} else {
    echo "Code HTTP: $httpCode\n";
    echo "Réponse brute:\n";
    echo $response . "\n\n";
    
    // Décoder la réponse JSON
    $data = json_decode($response, true);
    
    if (json_last_error() === JSON_ERROR_NONE) {
        echo "Réponse JSON valide\n\n";
        
        if ($data['success'] ?? false) {
            echo "✅ Succès: " . $data['message'] . "\n\n";
            
            // Afficher la structure des données
            echo "Structure des données reçues:\n";
            echo "- User ID: " . ($data['data']['user_id'] ?? 'N/A') . "\n";
            
            if (isset($data['data']['membre'])) {
                $membre = $data['data']['membre'];
                echo "- Membre: " . ($membre['nom_complet'] ?? 'N/A') . "\n";
                echo "- Email: " . ($membre['email'] ?? 'N/A') . "\n";
                echo "- Nombre d'entreprises: " . count($membre['entreprises'] ?? []) . "\n";
                echo "- Diagnostics directs: " . (isset($membre['diagnostics']) ? count($membre['diagnostics']) : 0) . "\n";
                
                // Afficher les détails des entreprises
                foreach ($membre['entreprises'] as $i => $entreprise) {
                    echo "  Entreprise " . ($i + 1) . ": " . $entreprise['nom'] . "\n";
                    echo "    - Diagnostics: " . count($entreprise['diagnostics'] ?? []) . "\n";
                    
                    foreach ($entreprise['diagnostics'] as $j => $diagnostic) {
                        echo "    Diagnostic " . ($j + 1) . ":\n";
                        echo "      - Score global: " . $diagnostic['score_global'] . "\n";
                        echo "      - Modules: " . count($diagnostic['modules'] ?? []) . "\n";
                        echo "      - Statut: " . $diagnostic['statut'] . "\n";
                    }
                }
            }
        } else {
            echo "❌ Erreur: " . ($data['message'] ?? 'Erreur inconnue') . "\n";
        }
    } else {
        echo "❌ Erreur de décodage JSON: " . json_last_error_msg() . "\n";
    }
}

echo "\n=== Fin du test ===\n";

// Instructions pour tester manuellement
echo "\nPour tester manuellement avec curl:\n";
echo "curl -X GET \"$baseUrl$testUserEmail\" -H \"Accept: application/json\"\n";

echo "\nPour tester dans un navigateur:\n";
echo "Visitez: $baseUrl$testUserEmail\n";

?>
