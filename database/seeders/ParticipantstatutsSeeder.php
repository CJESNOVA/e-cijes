<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ParticipantstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Oui', 'etat' => 1, 'created_at' => '2025-08-11 14:36:26', 'updated_at' => '2026-01-12 17:16:20'],
            ['id' => 2, 'titre' => 'Peut-être', 'etat' => 1, 'created_at' => '2026-01-12 17:17:04', 'updated_at' => '2026-01-12 17:17:04'],
            ['id' => 3, 'titre' => 'Non', 'etat' => 1, 'created_at' => '2026-01-12 17:17:29', 'updated_at' => '2026-01-12 17:17:29'],
        ];

        foreach ($data as $item) {
            DB::table('participantstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
