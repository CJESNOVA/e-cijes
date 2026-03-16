<?php

namespace App\Orchid\Screens\Plan;

use Orchid\Screen\Screen;

use App\Models\Plan;
use App\Models\Plantemplate;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Quill;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Plan
     */
    public $plan;

    /**
     * Query data.
     *
     * @param Plan $plan
     *
     * @return array
     */
    public function query(Plan $plan): array
    {
        return [
            'plan' => $plan,
            'plantemplates' => Plantemplate::pluck('objectif', 'id'),
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->plan->exists ? 'Modification du plan' : 'Créer un plan';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Tous les plans d'accompagnements enregistrés";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un plan')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->plan->exists),

            Button::make('Modifier le plan')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->plan->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->plan->exists),
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
                TextArea::make('plan.objectif')
                    ->title('Objectif')
                    ->placeholder('Saisir l\'objectif'),

                DateTimer::make('plan.dateplan')
                    ->title('Date du plan')
                    ->format('Y-m-d'),

                /*TextArea::make('plan.actionprioritaire')
                    ->title('Actions prioritaires')
                    ->placeholder('Saisir la actionprioritaire'),
                    //->help('Spécifiez une actionprioritaire pour cette plan')*/

                Quill::make('plan.actionprioritaire')
                    ->title('Actions prioritaires')
                    //->popover('Saisir les actions prioritaires')
                    ->placeholder('Saisir les actions prioritaires'),

                Select::make('plan.accompagnement_id')
                    ->title('Accompagnement')
                    ->placeholder('Choisir l\'accompagnement')
                    //->help('Spécifiez un accompagnement.')
                    ->options(
                        \App\Models\Accompagnement::with('membre', 'entreprise')->get()
                            ->mapWithKeys(function ($accompagnement) {
                                $membre = $accompagnement->membre ? $accompagnement->membre->prenom . ' ' . $accompagnement->membre->nom : '';
                                $entreprise = $accompagnement->entreprise ? $accompagnement->entreprise->nom : '';
                                return [$accompagnement->id => "$membre - $entreprise"];
                            })
                            ->toArray()
                    )
                    ->empty('Choisir', 0),

                Select::make('plan.diagnostic_id')
                    ->title('Diagnostic')
                    ->placeholder('Choisir le diagnostic')
                    ->fromModel(\App\Models\Diagnostic::class, 'id')
                    ->empty('Choisir', 0),

                Select::make('plan.diagnosticmodule_id')
                    ->title('Module de diagnostic')
                    ->placeholder('Choisir le module')
                    ->fromModel(\App\Models\Diagnosticmodule::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('plan.diagnosticquestion_id')
                    ->title('Question de diagnostic')
                    ->placeholder('Choisir la question')
                    ->fromModel(\App\Models\Diagnosticquestion::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('plan.plantemplate_id')
                    ->title('Modèle de plan')
                    ->placeholder('Choisir le modèle de plan')
                    ->fromModel(Plantemplate::class, 'objectif')
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
    $data = $request->get('plan');

    $this->plan->fill($data)->save();

    Alert::info('Plan enregistré avec succès.');

    return redirect()->route('platform.plan.list');
}

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->plan->delete();

        Alert::info('Vous avez supprimé le plan avec succès.');

        return redirect()->route('platform.plan.list');
    }

}
