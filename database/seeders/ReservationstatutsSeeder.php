<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ReservationstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-07-31 08:07:45', 'updated_at' => '2025-07-31 08:07:45'],
            ['id' => 2, 'titre' => 'Validé', 'etat' => 1, 'created_at' => '2025-07-31 08:07:45', 'updated_at' => '2025-07-31 08:07:45'],
            ['id' => 3, 'titre' => 'Confirmé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Annulé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('reservationstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
