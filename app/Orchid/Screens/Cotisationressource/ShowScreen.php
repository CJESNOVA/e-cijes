<?php

namespace App\Orchid\Screens\Cotisationressource;

use App\Models\Cotisationressource;
use Orchid\Screen\Screen;
use Orchid\Screen\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    /**
     * Query data.
     *
     * @param Cotisationressource $cotisationressource
     *
     * @return array
     */
    public function query(Cotisationressource $cotisationressource): iterable
    {
        $cotisationressource->load(['cotisation', 'membre', 'entreprise', 'paiementstatut', 'accompagnement', 'ressourcecompte']);

        return [
            'cotisationressource' => $cotisationressource,
        ];
    }

    /**
     * The name of the screen displayed in the header.
     */
    public function name(): ?string
    {
        return 'Détail du paiement de la cotisation';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return 'Fiche complète du paiement de la cotisation sélectionnée';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('cotisationressource', [
                Sight::make('id', 'ID'),
                Sight::make('montant', 'Montant'),
                Sight::make('reference', 'Référence'),
                Sight::make('cotisation.reference', 'Cotisation'),
                Sight::make('membre.nom_complet', 'Membre'),
                Sight::make('entreprise.nom', 'Entreprise'),
                Sight::make('paiementstatut.titre', 'Statut de paiement'),
                Sight::make('accompagnement.nom_complet', 'Accompagnement'),
                Sight::make('ressourcecompte.titre', 'Compte de ressource'),
                Sight::make('spotlight', 'Spotlight')->render(fn($cotisationressource) => $cotisationressource->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($cotisationressource) => $cotisationressource->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
