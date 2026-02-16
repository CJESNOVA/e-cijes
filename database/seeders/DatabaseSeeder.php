<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(): void
    {
        // Accompagnements
        $this->call([
            AccompagnementniveausSeeder::class,
            AccompagnementstatutsSeeder::class,
            AccompagnementtypesSeeder::class,
        ]);

        // Contenu et communication
        $this->call([
            ActualitetypesSeeder::class,
            AlertetypesSeeder::class,
            NewslettertypesSeeder::class,
            ForumtypesSeeder::class,
        ]);

        // Ressources et finances
        $this->call([
            BonstatutsSeeder::class,
            BontypesSeeder::class,
            CreditstatutsSeeder::class,
            PaiementstatutsSeeder::class,
            RessourcetypesSeeder::class,
            OperationtypesSeeder::class,
        ]);

        // Diagnostics
        $this->call([
            DiagnosticmoduletypesSeeder::class,
            DiagnosticquestiontypesSeeder::class,
            DiagnosticstatutsSeeder::class,
            DiagnosticstatutreglesSeeder::class,
            DiagnosticorientationsSeeder::class,
            DiagnostictypesSeeder::class,
            DiagnosticBlocStatutSeeder::class,
        ]);

        // Entreprises et membres
        $this->call([
            EntrepriseprofilsSeeder::class,
            EntreprisetypesSeeder::class,
            MembrecategoriesSeeder::class,
            MembrestatutsSeeder::class,
            MembretypesSeeder::class,
            CotisationtypesSeeder::class,
        ]);

        // Experts et conseillers
        $this->call([
            ExperttypesSeeder::class,
            ExpertvalidesSeeder::class,
            ConseillertypesSeeder::class,
            ConseillervalidesSeeder::class,
        ]);

        // Formations et événements
        $this->call([
            FormationtypesSeeder::class,
            FormationniveausSeeder::class,
            EvenementtypesSeeder::class,
            EvenementinscriptiontypesSeeder::class,
            ParticipantstatutsSeeder::class,
        ]);

        // Espaces et prestations
        $this->call([
            EspacetypesSeeder::class,
            PrestationtypesSeeder::class,
            PrestationrealiseestatutsSeeder::class,
            ReservationstatutsSeeder::class,
        ]);

        // Documents et pièces
        $this->call([
            DocumenttypesSeeder::class,
            PiecetypesSeeder::class,
        ]);

        // Système et configuration
        $this->call([
            SecteursSeeder::class,
            JoursSeeder::class,
            SlidertypesSeeder::class,
            OffretypesSeeder::class,
            PartenairetypesSeeder::class,
        ]);

        // Propositions et recommandations
        $this->call([
            PropositionstatutsSeeder::class,
            RecommandationoriginesSeeder::class,
            SuivistatutsSeeder::class,
        ]);
    }
}
