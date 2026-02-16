<?php

namespace App\Orchid\Screens\Diagnosticmodulescore;

use Orchid\Screen\Screen;

use App\Models\Diagnosticmodulescore;
use App\Models\Diagnostic;
use App\Models\Diagnosticmodule;

use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Diagnosticmodulescore
     */
    public $diagnosticmodulescore;

    /**
     * Query data.
     *
     * @param Diagnosticmodulescore $diagnosticmodulescore
     *
     * @return array
     */
    public function query(Diagnosticmodulescore $diagnosticmodulescore): array
    {
        return [
            'diagnosticmodulescore' => $diagnosticmodulescore
        ];
    }

    /**
     * The name of screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->diagnosticmodulescore->exists ? 'Modification du score de module de diagnostic' : 'Créer un score de module de diagnostic';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Gestion des scores des modules de diagnostics";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un score de module')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->diagnosticmodulescore->exists),

            Button::make('Modifier le score de module')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->diagnosticmodulescore->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->diagnosticmodulescore->exists),
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
                Select::make('diagnosticmodulescore.diagnostic_id')
                    ->title('Diagnostic')
                    ->placeholder('Choisir le diagnostic')
                    ->fromModel(\App\Models\Diagnostic::class, 'id')
                    ->empty('Choisir', 0),

                Select::make('diagnosticmodulescore.diagnosticmodule_id')
                    ->title('Module de diagnostic')
                    ->placeholder('Choisir le module')
                    ->fromModel(\App\Models\Diagnosticmodule::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('diagnosticmodulescore.score_total')
                    ->title('Score total')
                    ->placeholder('Saisir le score total')
                    ->type('number'),

                Input::make('diagnosticmodulescore.score_max')
                    ->title('Score maximum')
                    ->placeholder('Saisir le score maximum')
                    ->type('number'),

                Input::make('diagnosticmodulescore.score_pourcentage')
                    ->title('Score en pourcentage')
                    ->placeholder('Saisir le score en pourcentage')
                    ->type('number')
                    ->step('0.01'),

                Input::make('diagnosticmodulescore.niveau')
                    ->title('Niveau')
                    ->placeholder('Saisir le niveau'),

                Select::make('diagnosticmodulescore.diagnosticblocstatut_id')
                    ->title('Statut de bloc')
                    ->placeholder('Choisir le statut de bloc')
                    ->fromModel(\App\Models\Diagnosticblocstatut::class, 'titre')
                    ->empty('Aucun', '0')
                    ->help('Statut du bloc pour ce score'),
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
        $data = $request->get('diagnosticmodulescore');

        $this->diagnosticmodulescore->fill($data)->save();

        Alert::info('Score de module de diagnostic enregistré avec succès.');

        return redirect()->route('platform.diagnosticmodulescore.list');
    }

    /**
     * Remove the model.
     *
     * @param Diagnosticmodulescore $diagnosticmodulescore
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->diagnosticmodulescore->delete();

        Alert::info('Vous avez supprimé le score de module de diagnostic avec succès.');

        return redirect()->route('platform.diagnosticmodulescore.list');
    }
}
