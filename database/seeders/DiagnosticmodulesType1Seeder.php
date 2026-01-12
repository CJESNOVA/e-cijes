<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticmodulesType1Seeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Insérer les données de type 1 (modules 1-4)
        DB::table('diagnosticmodules')->insert([
            [
                'id' => 1,
                'titre' => 'Profil du porteur de projet ou de l\'entrepreneur débutant',
                'position' => 1,
                'description' => '<p>Identifier les forces personnelles, la maturité entrepreneuriale, la résilience émotionnelle, la capacité d\'organisation et la vision stratégique du porteur de projet.</p>',
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 1,
                'parent' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => '8409335f-e085-4597-9cae-359a60a816c6',
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-29 09:50:21',
                'updated_at' => '2025-07-29 13:02:09',
            ],
            [
                'id' => 2,
                'titre' => 'A. Posture entrepreneuriale et soft skills',
                'position' => 1,
                'description' => '<p><br></p>',
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 1,
                'parent' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => '8409335f-e085-4597-9cae-359a60a816c6',
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-29 13:14:05',
                'updated_at' => '2025-07-29 13:15:29',
            ],
            [
                'id' => 3,
                'titre' => 'B. Intelligence émotionnelle et résilience',
                'position' => 2,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 1,
                'parent' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => '8409335f-e085-4597-9cae-359a60a816c6',
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-29 13:15:14',
                'updated_at' => '2025-07-29 13:15:14',
            ],
            [
                'id' => 4,
                'titre' => 'C. Analyse SWOT personnel',
                'position' => 3,
                'description' => NULL,
                'vignette' => NULL,
                'diagnosticmoduletype_id' => 1,
                'parent' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'pays_id' => '8409335f-e085-4597-9cae-359a60a816c6',
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-29 13:16:38',
                'updated_at' => '2025-07-29 13:16:38',
            ],
        ]);
    }
}
