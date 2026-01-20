<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Accompagnementaxe;
use App\Models\Diagnosticmodule;

class AccompagnementaxesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Récupérer quelques modules de diagnostic pour les associer
        $diagnosticmodules = Diagnosticmodule::all();
        
        if ($diagnosticmodules->isEmpty()) {
            $this->command->warn('Aucun module de diagnostic trouvé. Veuillez exécuter le seeder des modules de diagnostic d\'abord.');
            return;
        }

        $accompagnementaxes = [
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'titre' => 'Accompagnement personnalisé',
                'description' => 'Un accompagnement sur mesure adapté aux besoins spécifiques de chaque situation. Cette approche permet de répondre précisément aux attentes et objectifs définis.',
                'spotlight' => true,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'titre' => 'Suivi régulier',
                'description' => 'Un suivi continu et régulier pour assurer la progression et l\'atteinte des objectifs fixés. Des points d\'étape réguliers permettent d\'ajuster la stratégie si nécessaire.',
                'spotlight' => false,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'titre' => 'Formation continue',
                'description' => 'Des sessions de formation régulières pour maintenir et développer les compétences. L\'apprentissage continu est essentiel pour rester performant dans un environnement en constante évolution.',
                'spotlight' => false,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'titre' => 'Mentorat',
                'description' => 'Un accompagnement par des experts expérimentés pour partager connaissances et meilleures pratiques. Le mentorat favorise le développement professionnel et personnel.',
                'spotlight' => true,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'titre' => 'Évaluation et ajustement',
                'description' => 'Une évaluation périodique des progrès et des ajustements stratégiques pour optimiser les résultats. Cette approche garantit l\'efficacité de l\'accompagnement.',
                'spotlight' => false,
                'etat' => false,
            ],
        ];

        foreach ($accompagnementaxes as $axe) {
            Accompagnementaxe::create($axe);
        }

        $this->command->info('Axes d\'accompagnement créés avec succès.');
    }
}
