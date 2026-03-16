<?php

namespace App\Orchid\Screens\Accompagnementaxe;

use Orchid\Screen\Screen;

use App\Models\Accompagnementaxe;
use App\Models\Diagnosticmodule;

use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Quill;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Accompagnementaxe
     */
    public $accompagnementaxe;

    /**
     * Query data.
     *
     * @param Accompagnementaxe $accompagnementaxe
     *
     * @return array
     */
    public function query(Accompagnementaxe $accompagnementaxe): array
    {
        return [
            'accompagnementaxe' => $accompagnementaxe
        ];
    }

    /**
     * The name of screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->accompagnementaxe->exists ? 'Modification de l\'axe d\'accompagnement' : 'Créer un axe d\'accompagnement';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Gestion des axes d'accompagnement";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un axe d\'accompagnement')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->accompagnementaxe->exists),

            Button::make('Modifier l\'axe d\'accompagnement')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->accompagnementaxe->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->accompagnementaxe->exists),
        ];
    }

    /**
     * The screen's layout elements.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            Layout::rows([
                Input::make('accompagnementaxe.titre')
                    ->title('Titre')
                    ->required()
                    ->placeholder('Saisir le titre'),

                Quill::make('accompagnementaxe.description')
                    ->title('Description')
                    ->placeholder('Saisir la description'),

                Select::make('accompagnementaxe.diagnosticmodule_id')
                    ->title('Module de diagnostic')
                    ->placeholder('Choisir le module')
                    ->fromModel(\App\Models\Diagnosticmodule::class, 'titre')
                    ->empty('Choisir', 0),
            ])
        ];
    }
    
    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Request $request)
    {
        $data = $request->get('accompagnementaxe');

        $this->accompagnementaxe->fill($data)->save();

        Alert::info('Axe d\'accompagnement enregistré avec succès.');

        return redirect()->route('platform.accompagnementaxe.list');
    }

    /**
     * Remove the model.
     *
     * @param Accompagnementaxe $accompagnementaxe
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->accompagnementaxe->delete();

        Alert::info('Vous avez supprimé l\'axe d\'accompagnement avec succès.');

        return redirect()->route('platform.accompagnementaxe.list');
    }
}
