<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PaiementstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2026-01-12 17:12:06', 'updated_at' => '2026-01-12 17:12:06'],
            ['id' => 2, 'titre' => 'Echoué', 'etat' => 1, 'created_at' => '2026-01-12 17:12:36', 'updated_at' => '2026-01-12 17:12:36'],
            ['id' => 3, 'titre' => 'Annulé', 'etat' => 1, 'created_at' => '2026-01-12 17:13:07', 'updated_at' => '2026-01-12 17:13:07'],
            ['id' => 4, 'titre' => 'Payé', 'etat' => 1, 'created_at' => '2026-01-12 17:13:42', 'updated_at' => '2026-01-12 17:13:42'],
            ['id' => 5, 'titre' => 'Remboursé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('paiementstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
