<?php

namespace App\Orchid\Screens\Ressourcetypeoffretype;

use Orchid\Screen\Screen;
use App\Models\Ressourcetypeoffretype;
use App\Models\Ressourcetype;
use App\Models\Offretype;
use App\Models\Prestationtype;
use App\Models\Formationtype;
use App\Models\Evenementtype;
use App\Models\Espacetype;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    public $ressourcetypeoffretype;

    public function query(Ressourcetypeoffretype $ressourcetypeoffretype): array
    {
        return [
            'ressourcetypeoffretype' => $ressourcetypeoffretype
        ];
    }

    public function name(): ?string
    {
        return $this->ressourcetypeoffretype->exists ? 'Modification de l\'association' : 'Créer une association';
    }

    public function description(): ?string
    {
        return 'Association d\'un type de ressource à un type d\'offre';
    }

    public function commandBar(): array
    {
        return [
            Button::make('Créer')
                ->icon('plus')
                ->method('createOrUpdate')
                ->canSee(!$this->ressourcetypeoffretype->exists),

            Button::make('Mettre à jour')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->ressourcetypeoffretype->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->ressourcetypeoffretype->exists),
        ];
    }

    public function layout(): array
    {
        return [
            Layout::rows([
                Select::make('ressourcetypeoffretype.ressourcetype_id')
                    ->title('Ressource Type')
                    ->placeholder('Choisir la ressource')
                    ->fromModel(Ressourcetype::class, 'titre')
                    ->empty('Choisir', 0)
                    ->required()
                    ->help('Sélectionnez le type de ressource à associer.'),

                Select::make('ressourcetypeoffretype.offretype_id')
                    ->title('Type d\'offre')
                    ->placeholder('Choisir le type d\'offre')
                    ->fromModel(Offretype::class, 'titre')
                    ->empty('Choisir', 0)
                    ->required()
                    ->help('Sélectionnez le type d\'offre auquel associer cette ressource.'),

                Input::make('ressourcetypeoffretype.table_id')
                    ->title('Table ID')
                    ->placeholder('Entrez l\'ID de la table')
                    ->required()
                    ->help('Entrez manuellement l\'ID correspondant au type d\'offre sélectionné.'),
            ]),
        ];
    }

    public function createOrUpdate(Request $request)
    {
        $validated = $request->validate([
            'ressourcetypeoffretype.ressourcetype_id' => 'required|exists:ressourcetypes,id',
            'ressourcetypeoffretype.offretype_id' => 'required|in:1,2,3,4',
            'ressourcetypeoffretype.table_id' => 'required|integer|min:1',
        ]);

        $data = $request->get('ressourcetypeoffretype');
        
        // Valeurs par défaut pour les champs cachés
        $data['spotlight'] = 0;
        $data['etat'] = 1;

        $this->ressourcetypeoffretype->fill($data)->save();

        Alert::info('Association enregistrée avec succès.');

        return redirect()->route('platform.ressourcetypeoffretype.list');
    }

    public function remove()
    {
        $this->ressourcetypeoffretype->delete();

        Alert::info('Association supprimée avec succès.');

        return redirect()->route('platform.ressourcetypeoffretype.list');
    }
}
