<?php

namespace App\Orchid\Screens\Diagnosticorientation;

use App\Models\Diagnosticorientation;
use App\Models\Diagnosticmodule;
use App\Models\Diagnosticstatut;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class EditScreen extends Screen
{
    /**
     * @var Diagnosticorientation
     */
    public $diagnosticorientation;

    /**
     * Query data.
     *
     * @param Diagnosticorientation $diagnosticorientation
     *
     * @return array
     */
    public function query(Diagnosticorientation $diagnosticorientation): iterable
    {
        return [
            'diagnosticorientation' => $diagnosticorientation,
            'diagnosticmodules' => Diagnosticmodule::where('etat', 1)->pluck('titre', 'id'),
            'diagnosticstatuts' => Diagnosticstatut::where('etat', 1)->pluck('titre', 'id'),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->diagnosticorientation->exists ? 'Modifier une orientation' : 'Ajouter une orientation';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return $this->diagnosticorientation->exists ? 'Modifier les paramètres d\'orientation' : 'Créer une nouvelle orientation';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Sauvegarder')
                ->icon('bs.check-circle')
                ->method('save'),

            Button::make('Supprimer')
                ->icon('bs.trash')
                ->method('remove')
                ->canSee($this->diagnosticorientation->exists),

            Link::make('Annuler')
                ->icon('bs.arrow-left')
                ->route('platform.diagnosticorientation.list'),
        ];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            Layout::rows([
                Select::make('diagnosticorientation.diagnosticmodule_id')
                    ->title('Module')
                    ->placeholder('Choisir le module')
                    ->fromModel(Diagnosticmodule::class, 'titre')
                    ->empty('Choisir', 0)
                    ->required(),

                Select::make('diagnosticorientation.diagnosticblocstatut_id')
                    ->title('Statut de bloc')
                    ->placeholder('Choisir le statut de bloc')
                    ->fromModel(Diagnosticblocstatut::class, 'titre')
                    ->empty('Choisir', 0)
                    ->required(),

                Input::make('diagnosticorientation.seuil_max')
                    ->title('Seuil maximum')
                    ->type('number')
                    ->placeholder('Seuil maximum')
                    ->required()
                    ->help('Score maximum pour cette orientation'),

                Input::make('diagnosticorientation.dispositif')
                    ->title('Dispositif')
                    ->placeholder('Nom du dispositif')
                    ->required()
                    ->help('Nom du dispositif d\'accompagnement proposé'),
            ]),
        ];
    }

    /**
     * Save the orientation.
     *
     * @param Diagnosticorientation $diagnosticorientation
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function save(Diagnosticorientation $diagnosticorientation, Request $request)
    {
        $data = $request->get('diagnosticorientation');
        $diagnosticorientation->fill($data)->save();

        Alert::info('Orientation sauvegardée avec succès.');

        return redirect()->route('platform.diagnosticorientation.list');
    }

    /**
     * Remove the orientation.
     *
     * @param Diagnosticorientation $diagnosticorientation
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Diagnosticorientation $diagnosticorientation)
    {
        $diagnosticorientation->delete();

        Alert::info('Orientation supprimée avec succès.');

        return redirect()->route('platform.diagnosticorientation.list');
    }
}
