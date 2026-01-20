<?php

namespace App\Orchid\Screens\Plantemplate;

use Orchid\Screen\Screen;

use App\Models\Plantemplate;
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
     * @var Plantemplate
     */
    public $plantemplate;

    /**
     * Query data.
     *
     * @param Plantemplate $plantemplate
     *
     * @return array
     */
    public function query(Plantemplate $plantemplate): array
    {
        return [
            'plantemplate' => $plantemplate
        ];
    }

    /**
     * The name of screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->plantemplate->exists ? 'Modification du plan template' : 'Créer un plan template';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Gestion des plans templates";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un plan template')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->plantemplate->exists),

            Button::make('Modifier le plan template')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->plantemplate->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->plantemplate->exists),
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
                Input::make('plantemplate.niveau')
                    ->title('Niveau')
                    ->required()
                    ->placeholder('Saisir le niveau'),

                TextArea::make('plantemplate.objectif')
                    ->title('Objectif')
                    ->placeholder('Saisir l\'objectif'),

                Quill::make('plantemplate.actionprioritaire')
                    ->title('Action prioritaire')
                    ->placeholder('Saisir l\'action prioritaire'),

                Input::make('plantemplate.priorite')
                    ->title('Priorité')
                    ->placeholder('Saisir la priorité')
                    ->type('number'),

                Select::make('plantemplate.diagnosticmodule_id')
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
        $data = $request->get('plantemplate');

        $this->plantemplate->fill($data)->save();

        Alert::info('Plan template enregistré avec succès.');

        return redirect()->route('platform.plantemplate.list');
    }

    /**
     * Remove the model.
     *
     * @param Plantemplate $plantemplate
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->plantemplate->delete();

        Alert::info('Vous avez supprimé le plan template avec succès.');

        return redirect()->route('platform.plantemplate.list');
    }
}
