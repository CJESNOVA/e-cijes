<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En cours', 'etat' => 1, 'created_at' => '2025-08-22 10:27:32', 'updated_at' => '2025-08-22 10:27:32'],
            ['id' => 2, 'titre' => 'Validé', 'etat' => 1, 'created_at' => '2025-08-22 10:29:11', 'updated_at' => '2025-08-22 10:29:11'],
            ['id' => 3, 'titre' => 'Brouillon', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Archivé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('diagnosticstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
