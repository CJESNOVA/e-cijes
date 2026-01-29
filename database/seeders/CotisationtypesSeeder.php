<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CotisationtypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Mensuel', 'montant' => '2000.00', 'entrepriseprofil_id' => 1, 'nombre_jours' => 30, 'etat' => 1, 'created_at' => '2026-01-06 14:33:46', 'updated_at' => '2026-01-12 17:41:38'],
            ['id' => 2, 'titre' => 'Annuel', 'montant' => '20000.00', 'entrepriseprofil_id' => 1, 'nombre_jours' => 365, 'etat' => 1, 'created_at' => '2026-01-12 17:42:08', 'updated_at' => '2026-01-12 17:42:08'],
            ['id' => 3, 'titre' => 'Mensuel', 'montant' => '5000.00', 'entrepriseprofil_id' => 2, 'nombre_jours' => 30, 'etat' => 1, 'created_at' => '2026-01-12 17:42:33', 'updated_at' => '2026-01-12 17:42:33'],
            ['id' => 4, 'titre' => 'Annuel', 'montant' => '50000.00', 'entrepriseprofil_id' => 2, 'nombre_jours' => 365, 'etat' => 1, 'created_at' => '2026-01-12 17:42:50', 'updated_at' => '2026-01-12 17:42:50'],
            ['id' => 5, 'titre' => 'Mensuel', 'montant' => '10000.00', 'entrepriseprofil_id' => 3, 'nombre_jours' => 30, 'etat' => 1, 'created_at' => '2026-01-12 17:43:13', 'updated_at' => '2026-01-12 17:43:13'],
            ['id' => 6, 'titre' => 'Annuel', 'montant' => '100000.00', 'entrepriseprofil_id' => 3, 'nombre_jours' => 365, 'etat' => 1, 'created_at' => '2026-01-12 17:43:33', 'updated_at' => '2026-01-12 17:43:33'],
        ];

        foreach ($data as $item) {
            DB::table('cotisationtypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
