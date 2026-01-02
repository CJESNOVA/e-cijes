<?php

namespace App\Helpers;

use Illuminate\Support\Str;

class FileHelper
{
    /**
     * Nettoie le nom de fichier pour Supabase Storage
     * - Transforme les accents en ASCII
     * - Remplace les caractères non valides par "_"
     * - Met en minuscule
     */
    public static function sanitizeFileName(string $filename): string
    {
        $filename = Str::ascii($filename);                    // é → e, ç → c
        $filename = preg_replace('/[^A-Za-z0-9\.\-_]/', '_', $filename);
        return strtolower($filename);
    }
}
