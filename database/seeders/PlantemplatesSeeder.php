<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Plantemplate;
use App\Models\Diagnosticmodule;

class PlantemplatesSeeder extends Seeder
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

        $plantemplates = [
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'niveau' => 'Débutant',
                'objectif' => 'Comprendre les concepts fondamentaux et les bases de la gestion.',
                'actionprioritaire' => 'Suivre les modules de formation initiaux et réaliser les exercices pratiques proposés.',
                'priorite' => 1,
                'spotlight' => true,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'niveau' => 'Intermédiaire',
                'objectif' => 'Développer des compétences avancées et appliquer les concepts dans des situations réelles.',
                'actionprioritaire' => 'Participer à des projets pratiques et collaborer avec des pairs pour renforcer l\'apprentissage.',
                'priorite' => 2,
                'spotlight' => false,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'niveau' => 'Avancé',
                'objectif' => 'Maîtriser les techniques complexes et développer une expertise approfondie.',
                'actionprioritaire' => 'Encadrer les débutants et contribuer à des projets de recherche ou d\'innovation.',
                'priorite' => 3,
                'spotlight' => false,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'niveau' => 'Expert',
                'objectif' => 'Devenir une référence dans le domaine et contribuer à l\'évolution des pratiques.',
                'actionprioritaire' => 'Développer des nouvelles méthodologies et partager l\'expertise à travers des publications et conférences.',
                'priorite' => 4,
                'spotlight' => true,
                'etat' => true,
            ],
            [
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'niveau' => 'Spécialisé',
                'objectif' => 'Se spécialiser dans un domaine spécifique pour répondre à des besoins particuliers.',
                'actionprioritaire' => 'Obtenir des certifications spécialisées et développer une expertise de niche.',
                'priorite' => 2,
                'spotlight' => false,
                'etat' => false,
            ],
        ];

        foreach ($plantemplates as $template) {
            Plantemplate::create($template);
        }

        $this->command->info('Plans templates créés avec succès.');
    }
}
