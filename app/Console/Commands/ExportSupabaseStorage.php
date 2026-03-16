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
            $bucket = env('SUPABASE_STORAGE_BUCKET', 'storage');
            
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

                foreach ($files as $file) {
                    $this->info("📁 Téléchargement : {$file['name']} (" . $this->formatBytes($file['size']) . ")");
                    
                    // Télécharger le contenu du fichier
                    $fileContent = $this->downloadFile($supabaseUrl, $serviceKey, $bucket, $file['name']);
                    
                    if ($fileContent !== false) {
                        // Ajouter le fichier au ZIP
                        $zip->addFromString($file['name'], $fileContent);
                        $totalSize += $file['size'];
                        $processedFiles++;
                    } else {
                        $this->warn("❌ Erreur lors du téléchargement : {$file['name']}");
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
            $this->uploadZipToSupabase($zipPath, $filename);

            // Supprimer le fichier temporaire
            unlink($zipPath);

            $this->info('✅ Exportation Supabase Storage réussie !');
            $this->info('📁 Fichier ZIP : ' . $filename);
            $this->info('📊 Fichiers exportés : ' . $processedFiles . '/' . $totalFiles);
            $this->info('📊 Taille totale : ' . $this->formatBytes($totalSize));

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
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey
            ])->get($supabaseUrl . '/storage/v1/object/' . $bucket . '/' . $fileName);

            if ($response->successful()) {
                return $response->body();
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

            // Augmenter la limite de mémoire temporairement
            $memoryLimit = ini_get('memory_limit');
            ini_set('memory_limit', '512M');
            
            // Utiliser le service Supabase existant
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier par chunks pour éviter la surcharge mémoire
            $fileHandle = fopen($zipPath, 'rb');
            $fileSize = filesize($zipPath);
            $fileContent = '';
            
            // Lire par chunks de 1MB
            while (!feof($fileHandle)) {
                $chunk = fread($fileHandle, 1024 * 1024); // 1MB chunks
                $fileContent .= $chunk;
                
                // Si le contenu devient trop gros, on arrête et on utilise une autre approche
                if (strlen($fileContent) > 50 * 1024 * 1024) { // 50MB max
                    fclose($fileHandle);
                    $this->warn('⚠️  Fichier trop gros, utilisation de la sauvegarde locale...');
                    ini_set('memory_limit', $memoryLimit);
                    return $this->saveLocally($zipPath, $filename);
                }
            }
            
            fclose($fileHandle);
            
            // Uploader vers Supabase Storage dans le dossier storage/
            $result = $storage->upload(
                'storage/' . $filename,
                $fileContent,
                'application/zip'
            );
            
            // Restaurer la limite de mémoire
            ini_set('memory_limit', $memoryLimit);

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase: ' . json_encode($result));
            }

            $this->info('☁️  Upload Supabase réussi !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/storage/' . $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur upload Supabase : ' . $e->getMessage());
            $this->info('🔄 Fallback vers sauvegarde locale...');
            return $this->saveLocally($zipPath, $filename);
        }
    }
    
    private function saveLocally($filePath, $filename)
    {
        try {
            // Augmenter la limite de mémoire temporairement
            $memoryLimit = ini_get('memory_limit');
            ini_set('memory_limit', '512M');
            
            // Utiliser SupabaseStorageService pour stocker dans le dossier storage/
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier par chunks pour éviter la surcharge mémoire
            $fileHandle = fopen($filePath, 'rb');
            $fileSize = filesize($filePath);
            $fileContent = '';
            
            // Lire par chunks de 1MB
            while (!feof($fileHandle)) {
                $chunk = fread($fileHandle, 1024 * 1024); // 1MB chunks
                $fileContent .= $chunk;
                
                // Si le contenu devient trop gros, on arrête
                if (strlen($fileContent) > 50 * 1024 * 1024) { // 50MB max
                    fclose($fileHandle);
                    $this->warn('⚠️  Fichier trop gros pour upload, sauvegarde locale uniquement...');
                    ini_set('memory_limit', $memoryLimit);
                    
                    // Copier locale simple
                    $localDir = storage_path('app/exports');
                    if (!File::exists($localDir)) {
                        File::makeDirectory($localDir, 0755, true);
                    }
                    $localPath = $localDir . '/' . $filename;
                    File::copy($filePath, $localPath);
                    
                    $this->info('✅ Sauvegarde locale réussie !');
                    $this->info('📁 Fichier : ' . $filename);
                    $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
                    $this->info('📍 Chemin : ' . $localPath);
                    
                    return $localPath;
                }
            }
            
            fclose($fileHandle);
            
            // Uploader vers Supabase dans le dossier storage/
            $path = 'storage/' . $filename;
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
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $path);

            return $path;

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
}
