<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticorientationsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            // Orientations pour bloc critique - Modules 38-47
            [
                'diagnosticmodule_id' => 38, // Stratégie
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'CIJET – Structuration stratégique',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 39, // Finance & Comptabilité
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'CGA / comptabilité simplifiée',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 40, // Juridique
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Formalisation / RCCM / NIF',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 41, // Ressources humaines
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Mise en place RH de base',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 42, // Marketing
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Positionnement & offre',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 43, // Communication
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Communication de base',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 44, // Commercial
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Sous traitance Premiers Deals',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 45, // Opérations
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Organisation & process',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 46, // Digital
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Digitalisation de base',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 47, // Administration
                'diagnosticblocstatut_id' => 1, // critique
                'seuil_max' => 7,
                'dispositif' => 'Structuration administrative',
                'created_at' => now(),
                'updated_at' => now()
            ],

            // Orientations pour bloc fragile - Modules 38-47
            [
                'diagnosticmodule_id' => 38, // Stratégie
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'CIJET – stratégie & gouvernance',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 39, // Finance & Comptabilité
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'CGA / préparation financement',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 40, // Juridique
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Mise en conformité avancée',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 41, // Ressources humaines
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Structuration RH & social',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 42, // Marketing
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Positionnement & branding',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 43, // Communication
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Communication structurée',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 44, // Commercial
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Premiers Deals avancé',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 45, // Opérations
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Optimisation & process',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 46, // Digital
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Digitalisation & outils',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 47, // Administration
                'diagnosticblocstatut_id' => 2, // fragile
                'seuil_max' => 11,
                'dispositif' => 'Gouvernance & reporting',
                'created_at' => now(),
                'updated_at' => now()
            ],

            // Orientations pour bloc intermédiaire - Modules 48-57
            [
                'diagnosticmodule_id' => 48,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Stratégie',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 49,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Finance',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 50,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Juridique',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 51,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - RH',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 52,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Marketing',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 53,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Communication',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 54,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Commercial',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 55,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Opérations',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 56,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Digital',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 57,
                'diagnosticblocstatut_id' => 3, // intermédiaire
                'seuil_max' => 15,
                'dispositif' => 'Ateliers thématiques - Administration',
                'created_at' => now(),
                'updated_at' => now()
            ],

            // Orientations pour bloc conforme - Modules 101-110
            [
                'diagnosticmodule_id' => 101,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources stratégiques',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 102,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources financières',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 103,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources juridiques',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 104,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources RH',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 105,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources marketing',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 106,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources communication',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 107,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources commerciales',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 108,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources opérationnelles',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 109,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources digitales',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 110,
                'diagnosticblocstatut_id' => 4, // conforme
                'seuil_max' => 16,
                'dispositif' => 'Auto-formation - Ressources administratives',
                'created_at' => now(),
                'updated_at' => now()
            ],

            // Orientations pour bloc de référence - Modules 101-110
            [
                'diagnosticmodule_id' => 101,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat stratégique',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 102,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat financier',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 103,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat juridique',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 104,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat RH',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 105,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat marketing',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 106,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat communication',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 107,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat commercial',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 108,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat opérationnel',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 109,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat digital',
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'diagnosticmodule_id' => 110,
                'diagnosticblocstatut_id' => 5, // référence
                'seuil_max' => 20,
                'dispositif' => 'Programme ambassadeur - Mentorat administratif',
                'created_at' => now(),
                'updated_at' => now()
            ],
        ];

        foreach ($data as $item) {
            DB::table('diagnosticorientations')->updateOrInsert(
                [
                    'diagnosticmodule_id' => $item['diagnosticmodule_id'],
                    'diagnosticblocstatut_id' => $item['diagnosticblocstatut_id']
                ],
                $item
            );
        }
    }
}
