<?php

//php artisan supabase:export-storage [nom_fichier.zip]
//php artisan supabase:export-storage //par defaut

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use App\Services\SupabaseStorageService;
use Illuminate\Support\Facades\Http;
use ZipArchive;

class ExportSupabaseStorage extends Command
{
    protected $signature = 'supabase:export-storage {filename?}';
    protected $description = 'Exporter tout le contenu du Supabase Storage et le compresser en ZIP';

    public function handle()
    {
        $filename = $this->argument('filename');
        
        if ($filename) {
            // S'assurer que le nom de fichier a l'extension .zip
            if (!str_ends_with($filename, '.zip')) {
                $filename .= '.zip';
            }
            // Ajouter la date avant le nom du fichier
            $filename = date('Y-m-d_H-i-s') . '_' . $filename;
        } else {
            // Nom par défaut avec date
            $filename = 'supabase_storage_' . date('Y-m-d_H-i-s') . '.zip';
        }

        $this->info('Exportation du Supabase Storage...');

        try {
            // Utiliser la configuration depuis les variables d'environnement
            $supabaseUrl = env('SUPABASE_URL', 'https://cjes-nova-supabase-c2d40c-144-91-65-9.traefik.me');
            $serviceKey = env('SUPABASE_SERVICE_ROLE_KEY');
            $bucket = env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket');
            
            if (!$supabaseUrl || !$serviceKey || !$bucket) {
                $this->error('❌ Configuration manquante : SUPABASE_URL, SUPABASE_SERVICE_ROLE_KEY ou SUPABASE_STORAGE_BUCKET');
                $this->info('   Ajoutez ces variables dans votre fichier .env');
                return;
            }

            $this->info('🔗 Connexion à Supabase Storage...');
            
            // Créer un fichier temporaire pour le ZIP
            $tempZipFile = tempnam(sys_get_temp_dir(), 'supabase_storage_export_');
            $zipPath = $tempZipFile . '.zip';
            rename($tempZipFile, $zipPath);

            $zip = new ZipArchive();
            if ($zip->open($zipPath, ZipArchive::CREATE | ZipArchive::OVERWRITE) !== TRUE) {
                throw new \Exception('Impossible de créer le fichier ZIP');
            }

            // Récupérer tous les fichiers du bucket
            $this->info('📋 Récupération de la liste des fichiers...');
            $files = $this->getAllStorageFilesViaSQL($supabaseUrl, $serviceKey, $bucket);
            
            if (empty($files)) {
                $this->warn('⚠️  Aucun fichier trouvé dans le Supabase Storage');
                $this->info('📁 Création d\'un ZIP vide avec README...');
                
                // Ajouter un fichier README dans le ZIP vide
                $readmeContent = "# Export Supabase Storage\n\n";
                $readmeContent .= "Généré le : " . date('Y-m-d H:i:s') . "\n";
                $readmeContent .= "Bucket : " . $bucket . "\n";
                $readmeContent .= "URL : " . $supabaseUrl . "\n";
                $readmeContent .= "\nAucun fichier trouvé dans le Supabase Storage.\n";
                $readmeContent .= "Le ZIP a été généré mais ne contient aucun fichier.\n";
                
                $zip->addFromString('README.txt', $readmeContent);
                $totalFiles = 1;
                $totalSize = strlen($readmeContent);
                $processedFiles = 1;
            } else {
                $totalFiles = count($files);
                $totalSize = 0;
                $processedFiles = 0;

                foreach ($files as $index => $file) {
                    $fileName = $file['name'];
                    
                    // Ignorer les fichiers dans le dossier storage/ (ce sont des sauvegardes)
                    if (str_starts_with($fileName, 'storage/')) {
                        $this->info("⏭️  Ignoré (sauvegarde) : {$fileName}");
                        continue;
                    }
                    
                    $this->info("📁 Téléchargement : {$fileName} (" . $this->formatBytes($file['size']) . ")");
                    
                    // Télécharger le contenu du fichier
                    $fileContent = $this->downloadFile($supabaseUrl, $serviceKey, $bucket, $fileName);
                    
                    if ($fileContent !== false) {
                        // Ajouter le fichier au ZIP
                        $zip->addFromString($file['name'], $fileContent);
                        $totalSize += $file['size'];
                        $processedFiles++;
                        
                        // Libérer la mémoire immédiatement
                        unset($fileContent);
                    } else {
                        $this->warn("❌ Erreur lors du téléchargement : {$fileName}");
                    }
                    
                    // Pause entre les téléchargements pour éviter la surcharge
                    usleep(50000); // 0.05 seconde
                    
                    // Forcer le garbage collection tous les 10 fichiers
                    if (($index + 1) % 10 == 0) {
                        gc_collect_cycles();
                        $memoryUsage = memory_get_usage(true);
                        $this->info("🧹 Nettoyage mémoire : " . $this->formatBytes($memoryUsage));
                        
                        // Si la mémoire est trop élevée, arrêter
                        if ($memoryUsage > 120 * 1024 * 1024) { // 120MB max (augmenté)
                            $this->warn("⚠️  Limite mémoire atteinte, arrêt du téléchargement");
                            break;
                        }
                    }
                }
            }

            // Fermer le ZIP
            $zip->close();

            // Vérifier que le fichier ZIP existe
            if (!file_exists($zipPath)) {
                throw new \Exception('Le fichier ZIP n\'a pas été créé');
            }

            // Uploader le ZIP vers Supabase Storage
            $this->info('☁️  Upload du ZIP vers Supabase Storage...');
            $result = $this->uploadZipToSupabase($zipPath, $filename);

            // Supprimer le fichier temporaire
            unlink($zipPath);

            $this->info('✅ Exportation Supabase Storage réussie !');
            $this->info('📁 Fichier ZIP : ' . $filename);
            $this->info('📊 Fichiers exportés : ' . $processedFiles . '/' . $totalFiles);
            $this->info('📊 Taille totale : ' . $this->formatBytes($totalSize));
            
            // Copier le ZIP dans le dossier storage/ pour le rendre accessible
            $this->copyZipToStorageFolder($result, $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur lors de l\'exportation : ' . $e->getMessage());
        }

        return 0;
    }

    private function getAllStorageFiles($supabaseUrl, $serviceKey, $bucket)
    {
        $files = [];
        
        try {
            // Méthode 1: Essayer avec l'API REST de Supabase Storage
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json'
            ])->get($supabaseUrl . '/storage/v1/object/' . $bucket, [
                'limit' => 10000
            ]);

            if ($response->successful()) {
                $data = $response->json();
                if (is_array($data)) {
                    foreach ($data as $item) {
                        if (isset($item['name']) && isset($item['metadata']['size'])) {
                            $files[] = [
                                'name' => $item['name'],
                                'size' => $item['metadata']['size']
                            ];
                        }
                    }
                }
            }
        } catch (\Exception $e) {
            $this->info("❌ Méthode API REST échouée : " . $e->getMessage());
        }

        // Méthode 2: Essayer avec RPC si disponible
        if (empty($files)) {
            try {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->post($supabaseUrl . '/rest/v1/rpc/list_storage_files', [
                    'bucket_name' => $bucket
                ]);

                if ($response->successful()) {
                    $data = $response->json();
                    if (is_array($data)) {
                        foreach ($data as $item) {
                            if (isset($item['name']) && isset($item['size'])) {
                                $files[] = [
                                    'name' => $item['name'],
                                    'size' => $item['size']
                                ];
                            }
                        }
                    }
                }
            } catch (\Exception $e) {
                $this->info("❌ Méthode RPC échouée : " . $e->getMessage());
            }
        }

        // Méthode 3: Scanner avec des noms de fichiers communs
        if (empty($files)) {
            $this->warn("⚠️  Détection automatique échouée, scan manuel...");
            
            $commonFiles = [
                'avatars/', 'uploads/', 'images/', 'documents/', 'files/',
                'profile.jpg', 'logo.png', 'banner.jpg', 'default.png',
                'export.sql', 'backup.sql', 'data.json'
            ];
            
            foreach ($commonFiles as $fileName) {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/storage/v1/object/' . $bucket . '/' . $fileName, [
                    'select' => 'metadata'
                ]);

                if ($response->successful()) {
                    $metadata = $response->json();
                    if (isset($metadata['size'])) {
                        $files[] = [
                            'name' => $fileName,
                            'size' => $metadata['size']
                        ];
                        $this->info("✅ Fichier trouvé : {$fileName}");
                    }
                }
            }
        }

        return $files;
    }

    private function downloadFile($supabaseUrl, $serviceKey, $bucket, $fileName)
    {
        try {
            // Vérifier l'utilisation mémoire avant de télécharger
            $memoryUsage = memory_get_usage(true);
            if ($memoryUsage > 100 * 1024 * 1024) { // 100MB max (augmenté)
                $this->warn("⚠️  Limite mémoire atteinte, saut du fichier : {$fileName}");
                return false;
            }
            
            // Obtenir d'abord la taille du fichier avec HEAD request
            $headResponse = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey
            ])->head($supabaseUrl . '/storage/v1/object/' . $bucket . '/' . $fileName);
            
            if (!$headResponse->successful()) {
                return false;
            }
            
            $fileSize = (int) $headResponse->header('Content-Length', 0);
            $maxFileSize = 5 * 1024 * 1024; // 5MB max par fichier (augmenté)
            
            if ($fileSize > $maxFileSize) {
                $this->warn("⚠️  Fichier trop gros, ignoré : {$fileName} (" . $this->formatBytes($fileSize) . ")");
                return false;
            }
            
            // Télécharger le fichier avec timeout et options de stream
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey
            ])->timeout(15)
            ->withOptions([
                'read_timeout' => 15,
                'connect_timeout' => 10
            ])->get($supabaseUrl . '/storage/v1/object/' . $bucket . '/' . $fileName);

            if ($response->successful()) {
                $content = $response->body();
                
                // Vérifier la taille du contenu téléchargé
                if (strlen($content) > $maxFileSize) {
                    unset($content);
                    return false;
                }
                
                // Libérer la mémoire après chaque téléchargement réussi
                $content = $content; // Force copy pour optimiser
                return $content;
            }
        } catch (\Exception $e) {
            $this->error("❌ Erreur téléchargement {$fileName} : " . $e->getMessage());
        }

        return false;
    }

    private function uploadZipToSupabase($zipPath, $filename)
    {
        try {
            // Vérifier si Supabase est configuré
            if (!env('SUPABASE_URL') || !env('SUPABASE_SERVICE_ROLE_KEY') || !env('SUPABASE_STORAGE_BUCKET')) {
                // Fallback vers le stockage local
                $this->info('⚠️  Supabase non configuré, sauvegarde locale...');
                return $this->saveLocally($zipPath, $filename);
            }

            // Vérifier si c'est une URL locale
            if (str_contains(env('SUPABASE_URL'), '127.0.0.1') || str_contains(env('SUPABASE_URL'), 'localhost')) {
                $this->warn('⚠️  URL Supabase locale détectée !');
                $this->warn('📍  Pour le stockage Supabase, utilisez l\'URL de production');
                $this->warn('🔄  Fallback vers sauvegarde locale...');
                return $this->saveLocally($zipPath, $filename);
            }

            // Augmenter la limite de mémoire temporairement (si autorisé)
            $memoryLimit = ini_get('memory_limit');
            try {
                ini_set('memory_limit', '512M');
            } catch (\Exception $e) {
                $this->warn('⚠️  Impossible d\'augmenter la limite de mémoire, utilisation de la configuration actuelle');
            }
            
            // Utiliser le service Supabase existant
            $storage = new SupabaseStorageService();
            
            // Générer un nom de fichier unique pour éviter les doublons
            $uniqueFilename = pathinfo($filename, PATHINFO_FILENAME);
            $extension = pathinfo($filename, PATHINFO_EXTENSION);
            $timestamp = date('Y-m-d_H-i-s');
            $finalFilename = $uniqueFilename . '_' . $timestamp . '.' . $extension;
            
            // Vérifier la taille du fichier avant de continuer
            $fileSize = filesize($zipPath);
            $this->info('📊 Taille du ZIP : ' . $this->formatBytes($fileSize));
            
            // Si le fichier est trop gros, utiliser directement le fallback local
            if ($fileSize > 20 * 1024 * 1024) { // 20MB max
                $this->warn('⚠️  Fichier trop gros pour upload direct (' . $this->formatBytes($fileSize) . '), utilisation de la sauvegarde locale...');
                ini_set('memory_limit', $memoryLimit);
                return $this->saveLocally($zipPath, $finalFilename);
            }
            
            // Lire le contenu du fichier avec gestion de mémoire stricte
            $fileHandle = fopen($zipPath, 'rb');
            $fileContent = '';
            
            // Lire par chunks de 512KB pour limiter l'utilisation mémoire
            while (!feof($fileHandle)) {
                $chunk = fread($fileHandle, 512 * 1024); // 512KB chunks
                if ($chunk === false) break;
                
                $fileContent .= $chunk;
                
                // Vérifier l'utilisation mémoire et arrêter si nécessaire
                $memoryUsage = memory_get_usage(true);
                if ($memoryUsage > 80 * 1024 * 1024) { // 80MB max
                    fclose($fileHandle);
                    $this->warn('⚠️  Limite mémoire atteinte (' . $this->formatBytes($memoryUsage) . '), utilisation de la sauvegarde locale...');
                    ini_set('memory_limit', $memoryLimit);
                    return $this->saveLocally($zipPath, $finalFilename);
                }
            }
            
            fclose($fileHandle);
            
            // Uploader vers Supabase Storage dans le dossier storage/
            $result = $storage->upload(
                'storage/' . $finalFilename,
                $fileContent,
                'application/zip'
            );
            
            // Restaurer la limite de mémoire
            ini_set('memory_limit', $memoryLimit);

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase: ' . json_encode($result));
            }

            $this->info('☁️  Upload Supabase réussi !');
            $this->info('📁 Fichier : ' . $finalFilename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/storage/' . $finalFilename);
            
            return ['type' => 'supabase', 'filename' => $finalFilename, 'url' => env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/storage/' . $finalFilename];

        } catch (\Exception $e) {
            $this->error('❌ Erreur upload Supabase : ' . $e->getMessage());
            $this->info('🔄 Fallback vers sauvegarde locale...');
            return $this->saveLocally($zipPath, $filename);
        }
    }
    
    private function saveLocally($filePath, $finalFilename)
    {
        try {
            // Augmenter la limite de mémoire temporairement
            $memoryLimit = ini_get('memory_limit');
            ini_set('memory_limit', '512M');
            
            // Utiliser SupabaseStorageService pour stocker dans le dossier storage/
            $storage = new SupabaseStorageService();
            
            // Vérifier la taille du fichier avant de continuer
            $fileSize = filesize($filePath);
            $this->info('📊 Taille du fichier : ' . $this->formatBytes($fileSize));
            
            // Si le fichier est trop gros, utiliser uniquement la sauvegarde locale
            if ($fileSize > 20 * 1024 * 1024) { // 20MB max
                $this->warn('⚠️  Fichier trop gros pour upload (' . $this->formatBytes($fileSize) . '), sauvegarde locale uniquement...');
                ini_set('memory_limit', $memoryLimit);
                
                // Copier locale simple
                $localDir = storage_path('app/exports');
                if (!File::exists($localDir)) {
                    File::makeDirectory($localDir, 0755, true);
                }
                
                // Générer un nom de fichier unique
                $uniqueFilename = pathinfo($finalFilename, PATHINFO_FILENAME);
                $extension = pathinfo($finalFilename, PATHINFO_EXTENSION);
                $timestamp = date('Y-m-d_H-i-s');
                $localFinalFilename = $uniqueFilename . '_' . $timestamp . '.' . $extension;
                
                $localPath = $localDir . '/' . $localFinalFilename;
                File::copy($filePath, $localPath);
                
                $this->info('✅ Sauvegarde locale réussie !');
                $this->info('📁 Fichier : ' . $localFinalFilename);
                $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
                $this->info('📍 Chemin : ' . $localPath);
                
                return ['type' => 'local', 'filename' => $localFinalFilename, 'path' => $localPath];
            }
            
            // Lire le contenu du fichier avec gestion de mémoire stricte
            $fileHandle = fopen($filePath, 'rb');
            $fileContent = '';
            
            // Lire par chunks de 512KB pour limiter l'utilisation mémoire
            while (!feof($fileHandle)) {
                $chunk = fread($fileHandle, 512 * 1024); // 512KB chunks
                if ($chunk === false) break;
                
                $fileContent .= $chunk;
                
                // Vérifier l'utilisation mémoire et arrêter si nécessaire
                $memoryUsage = memory_get_usage(true);
                if ($memoryUsage > 80 * 1024 * 1024) { // 80MB max
                    fclose($fileHandle);
                    $this->warn('⚠️  Limite mémoire atteinte (' . $this->formatBytes($memoryUsage) . '), sauvegarde locale uniquement...');
                    ini_set('memory_limit', $memoryLimit);
                    
                    // Copier locale simple
                    $localDir = storage_path('app/exports');
                    if (!File::exists($localDir)) {
                        File::makeDirectory($localDir, 0755, true);
                    }
                    
                    $localFinalFilename = pathinfo($finalFilename, PATHINFO_FILENAME) . '_' . date('Y-m-d_H-i-s') . '.' . pathinfo($finalFilename, PATHINFO_EXTENSION);
                    $localPath = $localDir . '/' . $localFinalFilename;
                    File::copy($filePath, $localPath);
                    
                    $this->info('✅ Sauvegarde locale réussie !');
                    $this->info('📁 Fichier : ' . $localFinalFilename);
                    $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
                    $this->info('📍 Chemin : ' . $localPath);
                    
                    return ['type' => 'local', 'filename' => $localFinalFilename, 'path' => $localPath];
                }
            }
            
            fclose($fileHandle);
            
            // Uploader vers Supabase dans le dossier storage/
            $path = 'storage/' . $finalFilename;
            $result = $storage->upload(
                $path,
                $fileContent,
                'application/zip'
            );
            
            // Restaurer la limite de mémoire
            ini_set('memory_limit', $memoryLimit);

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase (storage/): ' . json_encode($result));
            }

            $this->info('✅ Sauvegarde dans Supabase Storage (storage/) réussie !');
            $this->info('📁 Fichier : ' . $finalFilename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/' . $path);

            return ['type' => 'supabase', 'filename' => $finalFilename, 'url' => env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/' . $path];

        } catch (\Exception $e) {
            $this->error('❌ Erreur sauvegarde Supabase (storage/): ' . $e->getMessage());
            throw $e;
        }
    }

    private function formatBytes($bytes, $precision = 2) {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');
        
        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }
        
        return round($bytes, $precision) . ' ' . $units[$i];
    }

    private function getAllStorageFilesViaSQL($supabaseUrl, $serviceKey, $bucket)
    {
        $files = [];
        
        try {
            // Méthode 1: Utiliser l'API REST PostgreSQL sur la vue publique (si elle existe)
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json'
            ])->get($supabaseUrl . '/rest/v1/storage_files_view', [
                'bucket_id' => 'eq.' . $bucket,
                'select' => 'name,created_at',
                'order' => 'name.asc',
                'limit' => 10000
            ]);

            if ($response->successful()) {
                $data = $response->json();
                if (is_array($data)) {
                    foreach ($data as $item) {
                        if (isset($item['name'])) {
                            $files[] = [
                                'name' => $item['name'],
                                'size' => 0, // Taille non disponible dans cette vue
                                'created_at' => $item['created_at'] ?? null
                            ];
                        }
                    }
                }
                $this->info("📊 " . count($files) . " fichier(s) trouvé(s) via vue publique");
                $this->info("✅ Vue 'storage_files_view' accessible");
                return $files;
            } else {
                $this->info("❌ Vue 'storage_files_view' non accessible : " . $response->status());
            }
        } catch (\Exception $e) {
            $this->info("❌ Erreur vue publique : " . $e->getMessage());
        }

        // Méthode 2: Utiliser l'API Storage directe de Supabase
        $bucketVariations = [
            $bucket,                    // Original
            strtolower($bucket),        // tout en minuscules
            strtoupper($bucket),        // tout en majuscules
            'storage',                 // Bucket par défaut Supabase
            'public',                 // Alternative
            'ecijes-bucket',          // Votre bucket original
        ];
        
        $found = false;
        foreach ($bucketVariations as $bucketVar) {
            try {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/storage/v1/object/list/' . $bucketVar, [
                    'limit' => 10000
                ]);

                if ($response->successful()) {
                    $data = $response->json();
                    if (is_array($data)) {
                        foreach ($data as $item) {
                            if (isset($item['name'])) {
                                $files[] = [
                                    'name' => $item['name'],
                                    'size' => $item['size'] ?? 0,
                                    'created_at' => $item['created_at'] ?? null
                                ];
                            }
                        }
                    }
                    $this->info("📊 " . count($files) . " fichier(s) trouvé(s) via API Storage");
                    $this->info("✅ Bucket trouvé : $bucketVar (original: $bucket)");
                    $found = true;
                    break;
                } else {
                    $this->info("❌ Bucket $bucketVar échoué : " . $response->status());
                    if (strpos($response->body(), 'Bucket not found') !== false) {
                        $this->info("   Ce bucket n'existe pas. Essayez avec : 'storage', 'public', ou vérifiez l'orthographe");
                    }
                }
            } catch (\Exception $e) {
                $this->info("❌ Erreur API Storage avec bucket $bucketVar : " . $e->getMessage());
            }
        }
        
        if (!$found) {
            $this->info("❌ Aucune variation du bucket trouvée. Le bucket '$bucket' n'existe peut-être pas.");
            $this->info("💡 Solution : Créez une vue publique dans Supabase SQL Editor :");
            $this->info("   CREATE VIEW public.storage_files_view AS");
            $this->info("   SELECT bucket_id, name, created_at, updated_at FROM storage.objects;");
            $this->info("   GRANT SELECT ON public.storage_files_view TO anon, authenticated, service_role;");
        }

        return $files;
    }

    private function copyZipToStorageFolder($result, $originalFilename)
    {
        try {
            // Utiliser le service SupabaseStorageService pour copier dans storage/
            $storage = new SupabaseStorageService();
            
            // Générer un nom unique pour éviter les doublons
            $uniqueFilename = pathinfo($originalFilename, PATHINFO_FILENAME);
            $extension = pathinfo($originalFilename, PATHINFO_EXTENSION);
            $timestamp = date('Y-m-d_H-i-s');
            $targetFilename = $uniqueFilename . '_copie_' . $timestamp . '.' . $extension;
            $targetPath = 'storage/' . $targetFilename;
            
            // Si le fichier est déjà sur Supabase, le copier dans le dossier storage/
            if ($result && isset($result['type']) && $result['type'] === 'supabase') {
                // Télécharger le fichier depuis Supabase
                $sourcePath = 'storage/' . $result['filename'];
                $response = Http::withHeaders([
                    'apikey' => env('SUPABASE_SERVICE_ROLE_KEY'),
                    'Authorization' => 'Bearer ' . env('SUPABASE_SERVICE_ROLE_KEY')
                ])->get(env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/' . $sourcePath);
                
                if ($response->successful()) {
                    // Uploader dans le dossier storage/ avec un nom unique
                    $uploadResult = $storage->upload(
                        $targetPath,
                        $response->body(),
                        'application/zip'
                    );
                    
                    if (isset($uploadResult['Key']) && $uploadResult['Key']) {
                        $downloadUrl = env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/' . $targetPath;
                        $this->info('📋 ZIP copié dans storage/ pour accès direct :');
                        $this->info('🔗 Lien de téléchargement direct :');
                        $this->line($downloadUrl);
                        return $downloadUrl;
                    }
                }
            }
            
            // Si le fichier est local, le télécharger et l'uploader dans storage/
            if ($result && isset($result['type']) && $result['type'] === 'local') {
                $localPath = $result['path'];
                if (file_exists($localPath)) {
                    $fileContent = file_get_contents($localPath);
                    
                    $uploadResult = $storage->upload(
                        $targetPath,
                        $fileContent,
                        'application/zip'
                    );
                    
                    if (isset($uploadResult['Key']) && $uploadResult['Key']) {
                        $downloadUrl = env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket') . '/' . $targetPath;
                        $this->info('📋 ZIP copié dans storage/ pour accès direct :');
                        $this->info('🔗 Lien de téléchargement direct :');
                        $this->line($downloadUrl);
                        return $downloadUrl;
                    }
                }
            }
            
            $this->warn('⚠️  Impossible de copier le ZIP dans storage/');
            
        } catch (\Exception $e) {
            $this->error('❌ Erreur copie vers storage/ : ' . $e->getMessage());
        }
        
        return false;
    }
}
