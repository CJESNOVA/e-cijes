<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Proposition;
use App\Models\Membre;
use App\Models\Expert;
use App\Models\Prestation;
use App\Models\Plantemplate;
use App\Models\Accompagnement;
use App\Models\Propositionstatut;

class PropositionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Récupérer quelques données existantes
        $membre = Membre::first();
        $expert = Expert::first();
        $prestation = Prestation::first();
        $plan = Plantemplate::first();
        $accompagnement = Accompagnement::first();
        $statut = Propositionstatut::first();

        if ($membre && $expert && $prestation && $statut) {
            $propositions = [
                [
                    'membre_id' => $membre->id,
                    'expert_id' => $expert->id,
                    'prestation_id' => $prestation->id,
                    'plan_id' => $plan ? $plan->id : null,
                    'accompagnement_id' => $accompagnement ? $accompagnement->id : null,
                    'message' => 'Proposition d\'accompagnement pour le développement digital',
                    'prix_propose' => 1500.00,
                    'duree_prevue' => 30,
                    'propositionstatut_id' => $statut->id,
                    'date_proposition' => now(),
                    'date_expiration' => now()->addDays(30),
                    'spotlight' => false,
                    'etat' => true,
                ],
                [
                    'membre_id' => $membre->id,
                    'expert_id' => $expert->id,
                    'prestation_id' => $prestation->id,
                    'plan_id' => null,
                    'accompagnement_id' => null,
                    'message' => 'Consultation en stratégie marketing',
                    'prix_propose' => 800.00,
                    'duree_prevue' => 15,
                    'propositionstatut_id' => $statut->id,
                    'date_proposition' => now()->subDays(1),
                    'date_expiration' => now()->addDays(20),
                    'spotlight' => true,
                    'etat' => true,
                ],
                [
                    'membre_id' => $membre->id,
                    'expert_id' => $expert->id,
                    'prestation_id' => $prestation->id,
                    'plan_id' => $plan ? $plan->id : null,
                    'accompagnement_id' => $accompagnement ? $accompagnement->id : null,
                    'message' => 'Formation continue en gestion de projet',
                    'prix_propose' => 2500.00,
                    'duree_prevue' => 60,
                    'propositionstatut_id' => $statut->id,
                    'date_proposition' => now()->subDays(3),
                    'date_expiration' => now()->addDays(45),
                    'spotlight' => false,
                    'etat' => true,
                ],
            ];

            foreach ($propositions as $proposition) {
                Proposition::create($proposition);
            }

            $this->command->info('Propositions créées avec succès.');
        } else {
            $this->command->warn('Impossible de créer les propositions: données manquantes.');
        }
    }
}
