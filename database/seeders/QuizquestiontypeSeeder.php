<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class QuizquestiontypeSeeder extends BaseSeeder
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
                'titre' => 'Question à choix multiples',
                'description' => 'Question avec plusieurs choix possibles',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Question vrai/faux',
                'description' => 'Question binaire vrai ou faux',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Question ouverte',
                'description' => 'Question avec réponse libre',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Question à remplir',
                'description' => 'Question avec texte à compléter',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Question image',
                'description' => 'Question avec support visuel',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('quizquestiontypes', 'titre', $data);
        
        $this->command->info("Quizquestiontypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
