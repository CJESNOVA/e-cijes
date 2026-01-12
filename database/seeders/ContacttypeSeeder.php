<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ContacttypeSeeder extends BaseSeeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'titre' => 'Email',
                'description' => 'Communication par email',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Téléphone',
                'description' => 'Communication par téléphone',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formulaire web',
                'description' => 'Contact via formulaire du site',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Réunion physique',
                'description' => 'Rencontre en personne',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Visioconférence',
                'description' => 'Réunion par visioconférence',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Réseaux sociaux',
                'description' => 'Contact via réseaux sociaux',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'SMS',
                'description' => 'Communication par SMS',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Courrier',
                'description' => 'Communication par courrier postal',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('contacttypes', 'titre', $data);
        
        $this->command->info("Contacttypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
