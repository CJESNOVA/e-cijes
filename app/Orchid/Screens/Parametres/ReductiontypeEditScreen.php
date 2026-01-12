<?php

namespace App\Orchid\Screens\Parametres;

use Orchid\Screen\Screen;
use App\Models\Reductiontype;
use App\Models\Entrepriseprofil;
use App\Models\Offretype;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;

class ReductiontypeEditScreen extends Screen
{
    public $reductiontype;

    public function query(Reductiontype $reductiontype): array
    {
        return [
            'reductiontype' => $reductiontype
        ];
    }

    public function name(): ?string
    {
        return $this->reductiontype->exists ? 'Modifier le type de réduction' : 'Créer un type de réduction';
    }

    public function description(): ?string
    {
        return 'Gestion des types de réductions';
    }

    public function layout(): iterable
    {
        return [
            Layout::rows([
                Input::make('reductiontype.titre')
                    ->title('Titre')
                    ->placeholder('Entrez le nom du type de réduction')
                    ->required()
                    ->help('Le nom du type de réduction à créer. Sera automatiquement complété si profil et offre sont sélectionnés.'),

                Select::make('reductiontype.entrepriseprofil_id')
                    ->title('Profil d\'entreprise')
                    ->placeholder('Choisir le profil')
                    ->fromModel(Entrepriseprofil::class, 'titre')
                    ->empty('Choisir', 0)
                    ->help('Profil d\'entreprise concerné par cette réduction.'),

                Select::make('reductiontype.offretype_id')
                    ->title('Type d\'offre')
                    ->placeholder('Choisir le type d\'offre')
                    ->fromModel(Offretype::class, 'titre')
                    ->empty('Choisir', 0)
                    ->help('Type d\'offre associé à cette réduction.'),

                Input::make('reductiontype.pourcentage')
                    ->title('Pourcentage')
                    ->type('number')
                    ->step('0.01')
                    ->placeholder('Entrez le pourcentage')
                    ->help('Pourcentage de réduction (ex: 10.50 pour 10.5%).')
                    ->default(0),

                Input::make('reductiontype.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->placeholder('Entrez le montant')
                    ->help('Montant fixe de réduction en FCFA.')
                    ->default(0),

                DateTimer::make('reductiontype.date_debut')
                    ->title('Date de début')
                    ->placeholder('Choisir la date de début')
                    ->help('Date de début de la promotion.')
                    ->format('Y-m-d'),

                DateTimer::make('reductiontype.date_fin')
                    ->title('Date de fin')
                    ->placeholder('Choisir la date de fin')
                    ->help('Date de fin de la promotion.')
                    ->format('Y-m-d'),
            ])
        ];
    }

    public function createOrUpdate(Request $request)
    {
        $validated = $request->validate([
            'reductiontype.titre' => 'required|max:255',
            'reductiontype.entrepriseprofil_id' => 'nullable|integer|min:0',
            'reductiontype.offretype_id' => 'nullable|integer|min:0',
            'reductiontype.pourcentage' => 'nullable|numeric|min:0|max:100',
            'reductiontype.montant' => 'nullable|numeric|min:0',
            'reductiontype.date_debut' => 'nullable|date',
            'reductiontype.date_fin' => 'nullable|date|after_or_equal:reductiontype.date_debut',
        ]);

        $data = $request->get('reductiontype');
        
        if (!$this->reductiontype->exists) {
            // Création
            $reductiontype = new Reductiontype();
            $reductiontype->fill($data)->save();
            Alert::info('Type de réduction créé avec succès.');
        } else {
            // Mise à jour
            $this->reductiontype->fill($data)->save();
            Alert::info('Type de réduction mis à jour avec succès.');
        }

        return redirect()->route('platform.reductiontype');
    }
}
