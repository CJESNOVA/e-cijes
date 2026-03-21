<?php

//php artisan supabase:import-storage supabase_storage.zip [fichier.zip]
//php artisan supabase:import-storage //par defaut cherche le dernier zip

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use App\Services\SupabaseStorageService;
use Illuminate\Support\Facades\Http;
use ZipArchive;

class ImportSupabaseStorage extends Command
{
    protected $signature = 'supabase:import-storage {filename?}';
    protected $description = 'Importer les fichiers depuis un ZIP vers le nouveau Supabase Storage';

    public function handle()
    {
        $filename = $this->argument('filename');
        
        if (!$filename) {
            // Chercher le dernier ZIP (racine du projet en priorité)
            $filename = $this->findLatestZip();
            if (!$filename) {
                $this->error('❌ Aucun fichier ZIP trouvé');
                $this->info('   Recherche effectuée dans :');
                $this->info('   - Racine du projet : ' . base_path());
                $this->info('   - Dossier storage/ : ' . storage_path('app/storage'));
                $this->info('   Utilisez : php artisan supabase:import-storage [nom_fichier.zip]');
                return;
            }
        }

        $this->info('🚀 Importation vers le nouveau Supabase Storage...');
        $this->info('📁 Fichier ZIP : ' . $filename);

        try {
            // Configuration du nouveau Supabase
            $newSupabaseUrl = env('NEW_SUPABASE_URL');
            $newServiceKey = env('NEW_SUPABASE_SERVICE_ROLE_KEY');
            $newBucket = env('NEW_SUPABASE_STORAGE_BUCKET', 'ecijes-bucket');
            
            if (!$newSupabaseUrl || !$newServiceKey || !$newBucket) {
                $this->error('❌ Configuration du nouveau Supabase manquante :');
                $this->info('   NEW_SUPABASE_URL');
                $this->info('   NEW_SUPABASE_SERVICE_ROLE_KEY');
                $this->info('   NEW_SUPABASE_STORAGE_BUCKET (optionnel)');
                $this->info('   Ajoutez ces variables dans votre fichier .env');
                return;
            }

            $this->info('🔗 Vérification de la connexion au nouveau Supabase...');
            $this->info('   URL : ' . $newSupabaseUrl);
            $this->info('   Bucket : ' . $newBucket);
            
            // Test de connexion au nouveau Supabase
            $testResponse = Http::withHeaders([
                'apikey' => $newServiceKey,
                'Authorization' => 'Bearer ' . $newServiceKey
            ])->get($newSupabaseUrl . '/storage/v1/bucket/' . $newBucket);
            
            if (!$testResponse->successful()) {
                $this->error('❌ Impossible de se connecter au nouveau Supabase :');
                $this->error('   Status : ' . $testResponse->status());
                $this->error('   Message : ' . $testResponse->body());
                $this->info('');
                $this->info('💡 Solutions possibles :');
                $this->info('   1. Vérifiez NEW_SUPABASE_URL et NEW_SUPABASE_SERVICE_ROLE_KEY');
                $this->info('   2. Créez le bucket "' . $newBucket . '" dans le nouveau Supabase');
                $this->info('   3. Vérifiez que les permissions sont correctes');
                return;
            }
            
            $this->info('✅ Connexion au nouveau Supabase réussie !');

            // Vérifier l'ancienne configuration pour télécharger le ZIP
            $oldSupabaseUrl = env('SUPABASE_URL');
            $oldServiceKey = env('SUPABASE_SERVICE_ROLE_KEY');
            $oldBucket = env('SUPABASE_STORAGE_BUCKET', 'ecijes-bucket');
            
            if (!$oldSupabaseUrl || !$oldServiceKey || !$oldBucket) {
                $this->error('❌ Configuration de l\'ancien Supabase manquante pour télécharger le ZIP');
                return;
            }

            $this->info('📥 Téléchargement du ZIP depuis l\'ancien Supabase...');
            
            // Télécharger le ZIP depuis l'ancien Supabase
            $zipContent = $this->downloadZipFromOldSupabase($oldSupabaseUrl, $oldServiceKey, $oldBucket, $filename);
            
            if (!$zipContent) {
                $this->error('❌ Impossible de télécharger le ZIP depuis l\'ancien Supabase');
                return;
            }

            $this->info('✅ ZIP téléchargé (' . $this->formatBytes(strlen($zipContent)) . ')');
            
            // Créer un fichier temporaire pour le ZIP
            $tempZipFile = tempnam(sys_get_temp_dir(), 'supabase_import_');
            file_put_contents($tempZipFile, $zipContent);
            
            // Extraire et traiter le ZIP
            $this->processZipFile($tempZipFile, $newSupabaseUrl, $newServiceKey, $newBucket);
            
            // Nettoyer
            unlink($tempZipFile);
            unset($zipContent);
            
            $this->info('✅ Importation terminée avec succès !');

        } catch (\Exception $e) {
            $this->error('❌ Erreur lors de l\'importation : ' . $e->getMessage());
        }

        return 0;
    }

    private function findLatestZip()
    {
        // Chercher d'abord dans la racine du projet
        $rootZipFiles = glob(base_path('*.zip'));
        
        if (!empty($rootZipFiles)) {
            // Trier par date de modification (plus récent en premier)
            usort($rootZipFiles, function($a, $b) {
                return filemtime($b) - filemtime($a);
            });
            return basename($rootZipFiles[0]);
        }
        
        // Si rien dans la racine, chercher dans storage/
        $storageDir = storage_path('app/storage');
        
        if (File::exists($storageDir)) {
            $zipFiles = glob($storageDir . '/*.zip');
            
            if (!empty($zipFiles)) {
                // Trier par date de modification (plus récent en premier)
                usort($zipFiles, function($a, $b) {
                    return filemtime($b) - filemtime($a);
                });
                return basename($zipFiles[0]);
            }
        }
        
        return null;
    }

    private function downloadZipFromOldSupabase($supabaseUrl, $serviceKey, $bucket, $filename)
    {
        try {
            // Vérifier si le fichier existe dans la racine du projet
            $rootPath = base_path($filename);
            if (file_exists($rootPath)) {
                $this->info('📁 Fichier trouvé dans la racine du projet : ' . $filename);
                $this->info('📊 Taille : ' . $this->formatBytes(filesize($rootPath)));
                return file_get_contents($rootPath);
            }
            
            // Sinon, télécharger depuis l'ancien Supabase
            $path = 'storage/' . $filename;
            
            $this->info('🔗 Connexion à l\'ancien Supabase...');
            $this->info('📁 Chemin : ' . $path);
            
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey
            ])->timeout(60)
            ->withOptions([
                'read_timeout' => 60,
                'connect_timeout' => 30
            ])->get($supabaseUrl . '/storage/v1/object/' . $bucket . '/' . $path);

            if ($response->successful()) {
                return $response->body();
            } else {
                $this->error('❌ Erreur HTTP : ' . $response->status());
                $this->error('   Réponse : ' . $response->body());
                return false;
            }
        } catch (\Exception $e) {
            $this->error('❌ Erreur de connexion : ' . $e->getMessage());
            return false;
        }
    }

    private function processZipFile($zipPath, $newSupabaseUrl, $newServiceKey, $newBucket)
    {
        $zip = new ZipArchive();
        
        if ($zip->open($zipPath) !== TRUE) {
            throw new \Exception('Impossible d\'ouvrir le fichier ZIP');
        }

        $totalFiles = $zip->numFiles;
        $importedFiles = 0;
        $skippedFiles = 0;
        $errorFiles = 0;
        $totalSize = 0;

        $this->info('📦 Analyse du ZIP...');
        $this->info('📊 Fichiers dans le ZIP : ' . $totalFiles);

        // Créer une barre de progression
        $progressBar = $this->output->createProgressBar($totalFiles);
        $progressBar->start();

        for ($i = 0; $i < $totalFiles; $i++) {
            $filename = $zip->getNameIndex($i);
            
            // Ignorer les dossiers et les fichiers spéciaux
            if (str_ends_with($filename, '/') || str_starts_with($filename, '__MACOSX/') || str_contains($filename, '.DS_Store')) {
                $skippedFiles++;
                $progressBar->advance();
                continue;
            }

            // Ignorer les fichiers de sauvegarde (éviter les boucles infinies)
            if (str_starts_with($filename, 'storage/')) {
                $this->info("\n⏭️  Ignoré (sauvegarde) : {$filename}");
                $skippedFiles++;
                $progressBar->advance();
                continue;
            }

            try {
                // Extraire le contenu du fichier
                $fileContent = $zip->getFromIndex($i);
                
                if ($fileContent === false) {
                    $errorFiles++;
                    $progressBar->advance();
                    continue;
                }

                $fileSize = strlen($fileContent);
                $totalSize += $fileSize;

                // Uploader vers le nouveau Supabase
                $result = $this->uploadToNewSupabase($newSupabaseUrl, $newServiceKey, $newBucket, $filename, $fileContent);
                
                if ($result) {
                    $importedFiles++;
                    
                    // Afficher tous les 10 fichiers importés
                    if ($importedFiles % 10 === 0) {
                        $progressBar->setMessage("Importés : {$importedFiles}/{$totalFiles}");
                    }
                } else {
                    $errorFiles++;
                }
                
                // Libérer la mémoire
                unset($fileContent);
                
                // Pause pour éviter la surcharge
                usleep(25000); // 0.025 seconde
                
                // Nettoyage mémoire tous les 20 fichiers
                if (($i + 1) % 20 === 0) {
                    gc_collect_cycles();
                }
                
            } catch (\Exception $e) {
                $this->error("\n❌ Erreur fichier {$filename} : " . $e->getMessage());
                $errorFiles++;
            }
            
            $progressBar->advance();
        }

        $progressBar->finish();
        $this->info("\n");

        $zip->close();

        // Résumé
        $this->info('📊 RÉSUMÉ DE L\'IMPORTATION :');
        $this->info('✅ Fichiers importés : ' . $importedFiles);
        $this->info('⏭️  Fichiers ignorés : ' . $skippedFiles);
        $this->info('❌ Fichiers en erreur : ' . $errorFiles);
        $this->info('📊 Total traités : ' . ($importedFiles + $skippedFiles + $errorFiles) . '/' . $totalFiles);
        $this->info('📦 Taille totale : ' . $this->formatBytes($totalSize));
        $this->info('🎯 Taux de réussite : ' . round(($importedFiles / max(1, $importedFiles + $errorFiles)) * 100, 2) . '%');
    }

    private function uploadToNewSupabase($supabaseUrl, $serviceKey, $bucket, $filename, $fileContent)
    {
        try {
            // Limiter la taille des fichiers à 10MB
            $maxFileSize = 10 * 1024 * 1024;
            if (strlen($fileContent) > $maxFileSize) {
                $this->warn("\n⚠️  Fichier trop gros, ignoré : {$filename} (" . $this->formatBytes(strlen($fileContent)) . ")");
                return false;
            }

            // Détecter le type MIME basé sur l'extension
            $mimeType = $this->getMimeType($filename);
            
            // Pour les fichiers texte, s'assurer que l'encodage est correct
            if (!$this->isBinaryFile($filename)) {
                if (!mb_check_encoding($fileContent, 'UTF-8')) {
                    $fileContent = mb_convert_encoding($fileContent, 'UTF-8', 'UTF-8');
                }
            }
            
            // Utiliser withBody pour éviter l'encodage JSON des fichiers binaires
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => $mimeType
            ])->timeout(30)
            ->withOptions([
                'read_timeout' => 30,
                'connect_timeout' => 15
            ])->withBody($fileContent, $mimeType)
            ->put($supabaseUrl . '/storage/v1/object/' . $bucket . '/' . $filename);

            if ($response->successful()) {
                return true;
            } else {
                $this->warn("\n⚠️  Erreur upload {$filename} : " . $response->status());
                if ($response->status() === 400) {
                    $this->warn("   Détail : " . $response->body());
                }
                return false;
            }
            
        } catch (\Exception $e) {
            $this->warn("\n⚠️  Erreur upload {$filename} : " . $e->getMessage());
            return false;
        }
    }

    private function getMimeType($filename)
    {
        $extension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
        
        $mimeTypes = [
            'jpg' => 'image/jpeg',
            'jpeg' => 'image/jpeg',
            'png' => 'image/png',
            'gif' => 'image/gif',
            'webp' => 'image/webp',
            'pdf' => 'application/pdf',
            'sql' => 'text/plain',
            'txt' => 'text/plain',
            'csv' => 'text/csv',
            'doc' => 'application/msword',
            'docx' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
            'xls' => 'application/vnd.ms-excel',
            'xlsx' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        ];
        
        return $mimeTypes[$extension] ?? 'application/octet-stream';
    }

    private function isBinaryFile($filename)
    {
        $binaryExtensions = [
            'jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp', 'ico', 'svg', 'jfif',
            'pdf', 'zip', 'rar', 'tar', 'gz', '7z',
            'doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx',
            'mp4', 'avi', 'mov', 'wmv', 'flv', 'mkv',
            'mp3', 'wav', 'ogg', 'flac',
            'exe', 'dll', 'so', 'dylib'
        ];
        $extension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
        return in_array($extension, $binaryExtensions);
    }

    private function formatBytes($bytes, $precision = 2) {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');
        
        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }
        
        return round($bytes, $precision) . ' ' . $units[$i];
    }
}
