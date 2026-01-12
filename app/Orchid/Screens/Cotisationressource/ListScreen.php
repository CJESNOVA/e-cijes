<?php

namespace App\Orchid\Screens\Cotisationressource;

use App\Models\Cotisationressource;
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
            'cotisationressources' => Cotisationressource::with(['cotisation', 'membre', 'entreprise', 'paiementstatut'])
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
        return 'Paiements des cotisations';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Liste des paiements des cotisations";
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
                ->route('platform.cotisationressource.edit'),
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
            Layout::table('cotisationressources', [
                TD::make('id', 'ID')->sort(),
                TD::make('montant', 'Montant')->sort(),
                TD::make('reference', 'Référence')->sort(),
                TD::make('cotisation.reference', 'Cotisation')->sort(),
                TD::make('membre.nom_complet', 'Membre')->sort(),
                TD::make('entreprise.nom', 'Entreprise')->sort(),
                TD::make('paiementstatut.titre', 'Statut')->sort(),
                TD::make('spotlight', 'Spotlight')->render(function (Cotisationressource $cotisationressource) {
                    return $cotisationressource->spotlight ? '✅' : '❌';
                })->sort(),
                TD::make('etat', 'État')->render(function (Cotisationressource $cotisationressource) {
                    return $cotisationressource->etat ? '✅' : '❌';
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
                    ->render(function (Cotisationressource $cotisationressource) {
                        return Link::make('Voir')
                            ->icon('eye')
                            ->route('platform.cotisationressource.show', $cotisationressource);
                    }),
            ]),
        ];
    }

    public function toggleSpotlight(Cotisationressource $cotisationressource)
    {
        $cotisationressource->spotlight = !$cotisationressource->spotlight;
        $cotisationressource->save();
        
        Alert::info('Spotlight mis à jour avec succès.');
    }

    public function toggleEtat(Cotisationressource $cotisationressource)
    {
        $cotisationressource->etat = !$cotisationressource->etat;
        $cotisationressource->save();
        
        Alert::info('État mis à jour avec succès.');
    }

    public function delete(Cotisationressource $cotisationressource)
    {
        $cotisationressource->delete();
        
        Alert::info('Paiement de la cotisation supprimé avec succès.');
    }
}
