<?php

$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://odin.cjesnova.com/rest/v1/languages',
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'GET',
  CURLOPT_HTTPHEADER => array(
    'apikey: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3NzA2NDM4MDQsImV4cCI6MTg5MzQ1NjAwMCwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlzcyI6InN1cGFiYXNlIn0.s6dQhoyDPXWWDaE91non2TrB39KT1wro7_IhYvwdsCA',
    'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE3NzA2NDM4MDQsImV4cCI6MTg5MzQ1NjAwMCwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlzcyI6InN1cGFiYXNlIn0.s6dQhoyDPXWWDaE91non2TrB39KT1wro7_IhYvwdsCA'
  ),
  CURLOPT_VERBOSE => true, // Activer le mode verbose pour le debug
  CURLOPT_SSL_VERIFYPEER => false, // Temporairement désactiver SSL verification
));

$response = curl_exec($curl);

// Vérifier les erreurs cURL
if (curl_errno($curl)) {
    echo 'Erreur cURL: ' . curl_error($curl) . "\n";
    echo 'Code d\'erreur cURL: ' . curl_errno($curl) . "\n";
} else {
    // Obtenir les informations HTTP
    $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
    echo "Code HTTP: $httpCode\n";
    
    if ($httpCode == 200) {
        echo "Réponse brute:\n";
        var_dump($response);
        
        // Décoder le JSON
        $data = json_decode($response, true);
        if (json_last_error() === JSON_ERROR_NONE) {
            echo "\nDonnées décodées:\n";
            print_r($data);
            echo "\nNombre d'enregistrements: " . count($data) . "\n";
        } else {
            echo "\nErreur JSON: " . json_last_error_msg() . "\n";
        }
    } else {
        echo "Erreur HTTP: $httpCode\n";
        echo "Réponse: $response\n";
    }
}

curl_close($curl);
?>
