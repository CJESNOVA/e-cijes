<?php

namespace App\Orchid\Screens\Abonnementressource;

use App\Models\Abonnementressource;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Orchid\Screen\Components\Cells\DateTimeSplit;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class ListScreen extends Screen
{
    /**
     * Fetch data for the screen.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            'abonnementressources' => Abonnementressource::with(['abonnement', 'membre', 'entreprise', 'paiementstatut'])
                ->orderBy('created_at', 'desc')
                ->paginate(),
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Paiements des abonnements';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Liste des paiements des abonnements";
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): array
    {
        return [
            Link::make('Créer un paiement')
                ->icon('plus')
                ->route('platform.abonnementressource.edit'),
        ];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): array
    {
        return [
            Layout::table('abonnementressources', [
                TD::make('id', 'ID')->sort(),
                TD::make('montant', 'Montant')->sort(),
                TD::make('reference', 'Référence')->sort(),
                TD::make('abonnement.reference', 'Abonnement')->sort(),
                TD::make('membre.nom', 'Membre')->sort(),
                TD::make('entreprise.nom', 'Entreprise')->sort(),
                TD::make('paiementstatut.titre', 'Statut')->sort(),
                TD::make('spotlight', 'Spotlight')->render(function (Abonnementressource $abonnementressource) {
                    return $abonnementressource->spotlight ? '✅' : '❌';
                })->sort(),
                TD::make('etat', 'État')->render(function (Abonnementressource $abonnementressource) {
                    return $abonnementressource->etat ? '✅' : '❌';
                })->sort(),
                TD::make('created_at', 'Créé le')
                    ->usingComponent(DateTimeSplit::class)
                    ->sort(),
                TD::make('updated_at', 'Modifié le')
                    ->usingComponent(DateTimeSplit::class)
                    ->sort(),
                TD::make('Actions')
                    ->align(TD::ALIGN_CENTER)
                    ->width('100px')
                    ->render(function (Abonnementressource $abonnementressource) {
                        return Link::make('Voir')
                            ->icon('eye')
                            ->route('platform.abonnementressource.show', $abonnementressource);
                    }),
            ]),
        ];
    }

    public function toggleSpotlight(Abonnementressource $abonnementressource)
    {
        $abonnementressource->spotlight = !$abonnementressource->spotlight;
        $abonnementressource->save();
        
        Alert::info('Spotlight mis à jour avec succès.');
    }

    public function toggleEtat(Abonnementressource $abonnementressource)
    {
        $abonnementressource->etat = !$abonnementressource->etat;
        $abonnementressource->save();
        
        Alert::info('État mis à jour avec succès.');
    }

    public function delete(Abonnementressource $abonnementressource)
    {
        $abonnementressource->delete();
        
        Alert::info('Paiement de l\'abonnement supprimé avec succès.');
    }
}
