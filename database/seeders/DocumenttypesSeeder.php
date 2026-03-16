<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DocumenttypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Carte d\'identité', 'etat' => 1, 'created_at' => '2025-07-28 21:17:05', 'updated_at' => '2025-08-22 10:20:42'],
            ['id' => 2, 'titre' => 'Passeport', 'etat' => 1, 'created_at' => '2025-07-28 21:17:05', 'updated_at' => '2025-08-22 10:20:57'],
            ['id' => 3, 'titre' => 'Acte de naissance', 'etat' => 1, 'created_at' => '2025-07-28 21:17:05', 'updated_at' => '2025-08-22 10:21:17'],
            ['id' => 4, 'titre' => 'Certificat de nationalité', 'etat' => 1, 'created_at' => '2025-07-28 21:17:05', 'updated_at' => '2025-08-22 10:21:37'],
            ['id' => 5, 'titre' => 'Permis de conduire', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 6, 'titre' => 'Diplôme', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 7, 'titre' => 'CV', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 8, 'titre' => 'Justificatif de domicile', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('documenttypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
