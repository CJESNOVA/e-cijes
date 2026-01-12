<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticmodulesType2Seeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Insérer les données de type 2 (modules 5-12)
        DB::table('diagnosticmodules')->insert([
            [
                'id' => 5,
                'titre' => 'BLOC 1 – STRUCTURE ORGANISATIONNELLE',
                'position' => 1,
                'description' => NULL,
                'vignette' => 'diagnosticmodules/1767798744_affaire.JPG',
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => '0',
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:12:59',
                'updated_at' => '2026-01-07 15:12:24',
            ],
            [
                'id' => 6,
                'titre' => 'BLOC 2 – MODÈLE ÉCONOMIQUE & VIABILITÉ',
                'position' => 2,
                'description' => NULL,
                'vignette' => 'diagnosticmodules/1767800689_contrat.JPG',
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => '0',
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2026-01-07 15:44:49',
            ],
            [
                'id' => 7,
                'titre' => 'BLOC 3 – GOUVERNANCE & LEADERSHIP',
                'position' => 3,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => NULL,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2025-08-22 11:16:58',
            ],
            [
                'id' => 8,
                'titre' => 'BLOC 4 – RESSOURCES HUMAINES',
                'position' => 4,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => NULL,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2025-08-22 11:16:58',
            ],
            [
                'id' => 9,
                'titre' => 'BLOC 5 – CONFORMITÉ LÉGALE, FISCALE ET SOCIALE',
                'position' => 5,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => NULL,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2025-08-22 11:16:58',
            ],
            [
                'id' => 10,
                'titre' => 'BLOC 6 – GESTION FINANCIÈRE & COMPTABILITÉ',
                'position' => 6,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => NULL,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2025-08-22 11:16:58',
            ],
            [
                'id' => 11,
                'titre' => 'BLOC 7 – SYSTÈME D\'INFORMATION & DIGITALISATION',
                'position' => 7,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => NULL,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2025-08-22 11:16:58',
            ],
            [
                'id' => 12,
                'titre' => 'BLOC 8 – STRATÉGIE DE DÉVELOPPEMENT & PARTENARIATS',
                'position' => 8,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 2,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => NULL,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-08-22 11:16:58',
                'updated_at' => '2025-08-22 11:16:58',
            ],
        ]);
    }
}
