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
            // Utiliser la configuration locale Supabase
            $supabaseUrl = 'http://127.0.0.1:54321';
            $serviceKey = env('SUPABASE_SERVICE_ROLE_KEY'); // Votre clé locale
            $bucket = 'ecijes-bucket'; // Le vrai bucket où sont vos fichiers
            
            if (!$supabaseUrl || !$serviceKey || !$bucket) {
                throw new \Exception('Configuration Supabase manquante');
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
            // Sauvegarder localement au lieu d'uploader (comme pour le script de base de données)
            $this->info('💾 Sauvegarde locale du fichier ZIP...');
            return $this->saveLocally($zipPath, $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur sauvegarde ZIP : ' . $e->getMessage());
            throw $e;
        }
    }
    
    private function saveLocally($filePath, $filename)
    {
        try {
            // Créer le répertoire local si nécessaire
            $localDir = storage_path('app/exports');
            if (!File::exists($localDir)) {
                File::makeDirectory($localDir, 0755, true);
            }

            // Copier le fichier vers le stockage local
            $localPath = $localDir . '/' . $filename;
            File::copy($filePath, $localPath);
            
            $fileSize = File::size($localPath);

            $this->info('✅ Sauvegarde locale réussie !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('� Chemin : ' . $localPath);

        } catch (\Exception $e) {
            $this->error('❌ Erreur sauvegarde locale : ' . $e->getMessage());
            throw $e;
        }
    }

    private function saveZipLocally($zipPath, $filename)
    {
        try {
            // Utiliser SupabaseStorageService pour stocker dans /storage/
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier ZIP
            $fileContent = File::get($zipPath);
            $fileSize = strlen($fileContent);
            
            // Uploader vers Supabase dans le dossier storage/
            $path = 'storage/' . $filename;
            $result = $storage->upload(
                $path,
                $fileContent,
                'application/zip'
            );

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload ZIP (storage/): ' . json_encode($result));
            }

            $this->info('✅ Sauvegarde ZIP dans Supabase Storage (storage/) réussie !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $path);

            return $path;

        } catch (\Exception $e) {
            $this->error('❌ Erreur sauvegarde ZIP (storage/): ' . $e->getMessage());
            throw $e;
        }
    }

    private function getAllStorageFilesViaSQL($supabaseUrl, $serviceKey, $bucket)
    {
        $files = [];
        
        try {
            // Essayer d'utiliser l'API REST PostgreSQL directement sur la table storage.objects
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json',
                'Accept' => 'application/vnd.pgrst.object+json'
            ])->get($supabaseUrl . '/rest/v1/storage.objects', [
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
                                'size' => 0, // Taille non disponible
                                'created_at' => $item['created_at'] ?? null
                            ];
                        }
                    }
                }
                $this->info("📊 " . count($files) . " fichier(s) trouvé(s) via table storage.objects");
            } else {
                $this->info("❌ Accès table storage.objects échoué : " . $response->status());
                $this->info("   Body : " . substr($response->body(), 0, 200) . "...");
            }
        } catch (\Exception $e) {
            $this->info("❌ Erreur accès table storage.objects : " . $e->getMessage());
        }

        return $files;
    }

    private function formatBytes($bytes, $precision = 2)
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');
        
        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }
        
        return round($bytes, $precision) . ' ' . $units[$i];
    }
}
