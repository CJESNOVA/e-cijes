<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PropositionstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2026-01-21 22:23:24', 'updated_at' => '2026-01-21 22:23:24'],
            ['id' => 2, 'titre' => 'Acceptée', 'etat' => 1, 'created_at' => '2026-01-21 22:23:24', 'updated_at' => '2026-01-21 22:23:24'],
            ['id' => 3, 'titre' => 'Refusée', 'etat' => 1, 'created_at' => '2026-01-21 22:23:24', 'updated_at' => '2026-01-21 22:23:24'],
            ['id' => 4, 'titre' => 'Payée', 'etat' => 1, 'created_at' => '2026-01-21 22:23:24', 'updated_at' => '2026-01-21 22:23:24'],
        ];

        foreach ($data as $item) {
            DB::table('propositionstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
