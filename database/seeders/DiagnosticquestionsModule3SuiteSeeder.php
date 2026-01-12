<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticquestionsModule3SuiteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Insérer les questions restantes du module 3 (questions 90-96)
        DB::table('diagnosticquestions')->insert([
            [
                'id' => 90,
                'titre' => 'Les équipements dont vous disposez sont-ils adaptés à votre activité ?',
                'position' => '4',
                'diagnosticmodule_id' => 21,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
            [
                'id' => 91,
                'titre' => 'Les locaux et espaces utilisés sont-ils sécurisés et accessibles ?',
                'position' => '5',
                'diagnosticmodule_id' => 21,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
            [
                'id' => 92,
                'titre' => 'Votre entreprise est-elle accompagnée sur les questions juridiques ?',
                'position' => '1',
                'diagnosticmodule_id' => 22,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
            [
                'id' => 93,
                'titre' => 'Votre entreprise est-elle accompagnée sur les aspects comptables et de gestion ?',
                'position' => '2',
                'diagnosticmodule_id' => 22,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
            [
                'id' => 94,
                'titre' => 'Travaillez-vous avec des professionnels spécialisés nécessaires à votre activité (notaire, huissier, géomètre, architecte, bureau d\'études, etc., selon votre secteur) ?',
                'position' => '3',
                'diagnosticmodule_id' => 22,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
            [
                'id' => 95,
                'titre' => 'Votre entreprise dispose-t-elle de relations professionnelles stables et utiles, à la fois avec des partenaires financiers (banques, microfinances, assureurs, investisseurs) et des partenaires techniques crédibles (expert en gestion, informaticien, graphiste, etc.) ?',
                'position' => '4',
                'diagnosticmodule_id' => 22,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
            [
                'id' => 96,
                'titre' => 'Votre entreprise est-elle intégrée dans un réseau professionnel ou institutionnel actif ?',
                'position' => '5',
                'diagnosticmodule_id' => 22,
                'diagnosticquestiontype_id' => 1,
                'diagnosticquestioncategorie_id' => 0,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44',
                'obligatoire' => 1,
                'parent' => 0,
                'spotlight' => 0,
                'etat' => 1,
                'created_at' => '2026-01-12 19:57:41',
                'updated_at' => '2026-01-12 19:57:41',
            ],
        ]);
    }
}
