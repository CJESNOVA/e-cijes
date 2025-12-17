<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Pagelibre;

class PageLibresSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $pages = [
            [
                'id' => 1,
                'titre' => 'À propos du CIJES',
                'resume' => "L’incubateur qui transforme vos ambitions en réalités. Le Centre d’Incubation des Juniors Entreprises et Startups (CIJES) est bien plus qu’un incubateur : c’est une plateforme d’accompagnement hybride (physique et digital), pensée pour propulser les jeunes entreprises et startups togolaises vers la compétitivité, l’innovation et la durabilité.\r\nGrâce à un modèle unique basé sur les crédits d’incubation et les bons d’accompagnement, le CIJET offre un écosystème complet pour soutenir les entrepreneurs dans toutes les phases de leur développement.",
                'description' => null,
                'langue_id' => 1,
                'vignette' => 'storage/pagelibres/2025/07/21/687e9858cd1ab_groupe-d-afro-americains-travaillant-ensemble (1).jpg',
                'parent' => 1,
                'spotlight' => 1,
                'etat' => 1,
                'created_at' => '2025-07-21 19:43:20',
                'updated_at' => '2025-09-09 13:21:20',
            ],
            [
                'id' => 2,
                'titre' => 'Notre Vision',
                'resume' => "Devenir le catalyseur incontournable de l’entrepreneuriat innovant en Afrique de l’Ouest, en faisant du Togo un hub de référence pour les jeunes entreprises performantes, responsables et connectées aux marchés internationaux.",
                'description' => null,
                'langue_id' => 1,
                'vignette' => null,
                'parent' => 1,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-21 19:44:18',
                'updated_at' => '2025-07-21 19:44:18',
            ],
            [
                'id' => 3,
                'titre' => 'Notre Mission',
                'resume' => null,
                'description' => '<p><strong>Structurer</strong> les projets pour les rendre viables et bancables.</p><p><strong>Accompagner</strong> les entrepreneurs avec des outils adaptés, du mentorat et des formations ciblées.</p><p><strong>Faciliter l’accès aux financements</strong> et aux opportunités de marché.</p><p><strong>Intégrer la technologie</strong> et l’intelligence artificielle pour booster la compétitivité des startups.</p>',
                'langue_id' => 1,
                'vignette' => null,
                'parent' => 1,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-21 19:44:53',
                'updated_at' => '2025-07-21 19:44:53',
            ],
            [
                'id' => 4,
                'titre' => 'Nos Valeurs',
                'resume' => null,
                'description' => '<p><strong>Innovation</strong> : Anticiper et intégrer les meilleures solutions pour l’entrepreneuriat.</p><p><strong>Collaboration</strong> : Créer un écosystème basé sur l’entraide et le partage d’expériences.</p><p><strong>Intégrité</strong> : Garantir la transparence dans tous nos processus et partenariats.</p><p><strong>Inclusion</strong> : Offrir un accès équitable aux services, sans barrières sociales ou financières.</p><p><strong>Impact</strong> : Mesurer notre réussite par la croissance et la durabilité des entreprises incubées.</p>',
                'langue_id' => 1,
                'vignette' => null,
                'parent' => 1,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-21 19:45:36',
                'updated_at' => '2025-07-21 19:45:36',
            ],
            [
                'id' => 5,
                'titre' => 'Notre Approche Unique',
                'resume' => null,
                'description' => '<p>CIJES combine <strong>expertise humaine</strong> et <strong>technologies avancées</strong> pour offrir :</p><ol><li data-list="bullet"><span class="ql-ui" contenteditable="false"></span>Un <strong>parcours d’incubation personnalisé</strong> adapté aux besoins réels.</li><li data-list="bullet"><span class="ql-ui" contenteditable="false"></span>Des <strong>bons d’accompagnement intelligents</strong> pour les services stratégiques.</li><li data-list="bullet"><span class="ql-ui" contenteditable="false"></span>Une <strong>intelligence artificielle intégrée</strong> pour le suivi et l’analyse en temps réel.</li><li data-list="bullet"><span class="ql-ui" contenteditable="false"></span>Une <strong>plateforme digitale</strong> accessible 24/7 pour rester connecté et progresser.</li></ol><p><br></p>',
                'langue_id' => 1,
                'vignette' => null,
                'parent' => 1,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2025-07-21 19:46:10',
                'updated_at' => '2025-07-21 19:46:10',
            ],
        ];

        foreach ($pages as $page) {
            Pagelibre::updateOrCreate(['id' => $page['id']], $page);
        }
    }
}
