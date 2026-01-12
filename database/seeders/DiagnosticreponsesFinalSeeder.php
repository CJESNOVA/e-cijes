<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticreponsesFinalSeeder extends Seeder
{
    public function run(): void
    {
        // Toutes les réponses restantes de 285 à 501
        $responses = [
            // Réponses 285-320
            [
                'id' => 285, 'titre' => 'Aucune procédure n\'existe', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 166,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 286, 'titre' => 'Le travail se fait au cas par cas, sans méthode commune', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 166,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 287, 'titre' => 'Quelques consignes ou notes existent, mais elles sont incomplètes', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 166,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 288, 'titre' => 'Les procédures ne sont pas systématiquement suivies', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 166,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 289, 'titre' => 'Des procédures claires existent pour les tâches essentielles', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 166,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 290, 'titre' => 'Ces procédures sont connues et appliquées par l\'équipe', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 166,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 291, 'titre' => 'L\'organisation est désordonnée et dépend des urgences', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 167,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 292, 'titre' => 'Le travail se fait sans planification claire', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 167,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 293, 'titre' => 'L\'organisation existe, mais elle manque de clarté ou de régularité', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 167,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 294, 'titre' => 'Certaines tâches sont planifiées, d\'autres non', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 167,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 295, 'titre' => 'L\'organisation du travail est claire et structurée', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 167,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 296, 'titre' => 'Les tâches sont planifiées, suivies et exécutées selon un cadre connu', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 167,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 297, 'titre' => 'Les délais sont rarement respectés', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 168,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 298, 'titre' => 'Les retards sont fréquents et peu anticipés', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 168,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 299, 'titre' => 'Les délais sont parfois respectés, parfois non', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 168,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 300, 'titre' => 'Les retards sont gérés, mais souvent dans l\'urgence', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 168,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 301, 'titre' => 'Les délais sont généralement respectés', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 168,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 302, 'titre' => 'Les retards sont anticipés, expliqués et maîtrisés', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 168,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 303, 'titre' => 'Je ne peux pas déléguer, tout dépend de moi', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 169,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 304, 'titre' => 'L\'entreprise ne fonctionne pas sans ma présence', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 169,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 305, 'titre' => 'Je délègue certaines tâches, mais de manière limitée', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 169,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 306, 'titre' => 'La délégation existe, mais reste fragile', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 169,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 307, 'titre' => 'Je délègue de manière fonctionnelle et organisée', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 169,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 308, 'titre' => 'L\'entreprise peut fonctionner normalement en mon absence', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 169,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 309, 'titre' => 'Je travaille seul(e), sans équipe', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 170,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 310, 'titre' => 'L\'activité repose uniquement sur moi', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 170,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 311, 'titre' => 'Je fais appel à des aides occasionnelles ou temporaires', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 170,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 312, 'titre' => 'L\'équipe change fréquemment et manque de stabilité', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 170,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 313, 'titre' => 'Je dispose d\'une équipe stable, même réduite', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 170,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 314, 'titre' => 'Les personnes clés sont présentes de manière régulière et durable', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 170,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 315, 'titre' => 'Il n\'existe aucun contrat ni accord clair', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 171,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 316, 'titre' => 'Les relations de travail reposent uniquement sur la confiance', 'position' => 1, 'score' => 1,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 171,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 317, 'titre' => 'Des accords existent, mais uniquement de manière verbale', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 171,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 318, 'titre' => 'Les règles sont connues, mais non formalisées par écrit', 'position' => 2, 'score' => 2,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 171,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 319, 'titre' => 'Les relations de travail sont encadrées par des contrats ou accords écrits', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 171,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
            [
                'id' => 320, 'titre' => 'Les rôles, obligations et conditions sont clairement définis par écrit', 'position' => 3, 'score' => 3,
                'langue_id' => 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'diagnosticquestion_id' => 171,
                'spotlight' => 0, 'etat' => 1, 'created_at' => '2026-01-12 19:57:41', 'updated_at' => '2026-01-12 19:57:41'
            ],
        ];

        DB::table('diagnosticreponses')->insert($responses);
    }
}
