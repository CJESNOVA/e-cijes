<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ForumtypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Sujet sur l\'incubation', 'etat' => 1, 'created_at' => '2025-08-05 19:06:23', 'updated_at' => '2025-08-22 10:22:18'],
            ['id' => 2, 'titre' => 'Sujet sur le financement', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Sujet sur le marketing', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('forumtypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
