<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticquestiontypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Choix unique', 'etat' => 1, 'created_at' => '2025-07-29 12:55:21', 'updated_at' => '2025-07-29 12:55:21'],
            ['id' => 2, 'titre' => 'Choix multiple', 'etat' => 1, 'created_at' => '2025-07-29 12:55:42', 'updated_at' => '2025-07-29 12:55:42'],
        ];

        foreach ($data as $item) {
            DB::table('diagnosticquestiontypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
