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
        $this->call([
            // Pages et contenu statique
            PageLibresSeeder::class,
            
            // Types de ressources et offres
            RessourcetypeSeeder::class,
            OffretypeSeeder::class,
            
            // Types concrets selon offres
            PrestationtypeSeeder::class,
            FormationtypeSeeder::class,
            EvenementtypeSeeder::class,
            EspacetypeSeeder::class,
            
            // Types de réductions
            ReductiontypeSeeder::class,
            
            // Types de membres et conseillers
            MembretypeSeeder::class,
            ConseillertypeSeeder::class,
            
            // Communication et cotisations
            NewslettertypeSeeder::class,
            CotisationtypeSeeder::class,
            
            // Accompagnement et quiz
            AccompagnementtypeSeeder::class,
            QuizquestiontypeSeeder::class,
            
            // Experts et langues
            ExperttypeSeeder::class,
            LangueSeeder::class,
            
            // Système
            JourSeeder::class,
            
            // Statuts divers
            MembrestatutSeeder::class,
            AccompagnementstatutSeeder::class,
            PaiementstatutSeeder::class,
            
            // Entreprises et secteurs
            EntreprisetypeSeeder::class,
            SecteurSeeder::class,
            
            // Documents et pièces
            DocumenttypeSeeder::class,
            PiecetypeSeeder::class,
            OperationtypeSeeder::class,
            ContacttypeSeeder::class,
            
            // Interface et contenu
            SlidertypeSeeder::class,
        ]);
    }
}
