<?php

namespace App\Orchid\Screens\Abonnementressource;

use App\Models\Abonnementressource;
use Orchid\Screen\Screen;
use Orchid\Screen\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    /**
     * Query data.
     *
     * @param Abonnementressource $abonnementressource
     *
     * @return array
     */
    public function query(Abonnementressource $abonnementressource): iterable
    {
        $abonnementressource->load(['abonnement', 'membre', 'entreprise', 'paiementstatut', 'accompagnement', 'ressourcecompte']);

        return [
            'abonnementressource' => $abonnementressource,
        ];
    }

    /**
     * The name of the screen displayed in the header.
     */
    public function name(): ?string
    {
        return 'Détail du paiement de l\'abonnement';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return 'Fiche complète du paiement de l\'abonnement sélectionné';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('abonnementressource', [
                Sight::make('id', 'ID'),
                Sight::make('montant', 'Montant'),
                Sight::make('reference', 'Référence'),
                Sight::make('abonnement.reference', 'Abonnement'),
                Sight::make('membre.nom_complet', 'Membre'),
                Sight::make('entreprise.nom', 'Entreprise'),
                Sight::make('paiementstatut.titre', 'Statut de paiement'),
                Sight::make('accompagnement.nom_complet', 'Accompagnement'),
                Sight::make('ressourcecompte.titre', 'Compte de ressource'),
                Sight::make('spotlight', 'Spotlight')->render(fn($abonnementressource) => $abonnementressource->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($abonnementressource) => $abonnementressource->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
