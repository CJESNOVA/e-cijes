<?php

namespace App\Orchid\Screens\Proposition;

use Orchid\Screen\Screen;
use App\Models\Proposition;
use App\Models\Membre;
use App\Models\Expert;
use App\Models\Prestation;
use App\Models\Plan;
use App\Models\Accompagnement;
use App\Models\Propositionstatut;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Proposition
     */
    public $proposition;

    /**
     * Query data.
     *
     * @param Proposition $proposition
     *
     * @return array
     */
    public function query(Proposition $proposition): array
    {
        return [
            'proposition' => $proposition
        ];
    }

    /**
     * The name of screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->proposition->exists ? 'Modification de la proposition' : 'Créer une proposition';
    }

    /**
     * The description is displayed on user's screen under the heading
     */
    public function description(): ?string
    {
        return "Gestion des propositions d'accompagnement";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer une proposition')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->proposition->exists),

            Button::make('Modifier la proposition')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->proposition->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->proposition->exists),
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
                Select::make('proposition.membre_id')
                    ->title('Membre')
                    ->placeholder('Choisir le membre')
                    ->options(
                        \App\Models\Membre::all()
                            ->mapWithKeys(function ($membre) {
                                return [$membre->id => trim("{$membre->prenom} {$membre->nom}")];
                            })
                            ->toArray())
                    ->empty('Choisir', 0),

                Select::make('proposition.expert_id')
                    ->title('Expert')
                    ->placeholder('Choisir l\'expert')
                    ->fromModel(Expert::class, 'domaine')
                    ->empty('Choisir', 0),

                Select::make('proposition.prestation_id')
                    ->title('Prestation')
                    ->placeholder('Choisir la prestation')
                    ->fromModel(Prestation::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('proposition.plan_id')
                    ->title('Plan d\'accompagnement')
                    ->placeholder('Choisir le plan')
                    ->fromModel(Plan::class, 'objectif')
                    ->empty('Choisir', 0),

                Select::make('proposition.accompagnement_id')
                    ->title('Accompagnement')
                    ->placeholder('Choisir l\'accompagnement')
                    ->options(
                        \App\Models\Accompagnement::all()
                            ->mapWithKeys(function ($accompagnement) {
                                return [$accompagnement->id => $accompagnement->nom_complet];
                            })
                            ->toArray())
                    ->empty('Choisir', 0),

                TextArea::make('proposition.message')
                    ->title('Message')
                    ->placeholder('Décrire la proposition')
                    ->rows(4),

                Input::make('proposition.prix_propose')
                    ->title('Prix proposé')
                    ->placeholder('Saisir le prix')
                    ->type('number')
                    ->step('0.01'),

                Input::make('proposition.duree_prevue')
                    ->title('Durée prévue (jours)')
                    ->placeholder('Saisir la durée')
                    ->type('number'),

                Select::make('proposition.propositionstatut_id')
                    ->title('Statut')
                    ->placeholder('Choisir le statut')
                    ->fromModel(Propositionstatut::class, 'titre')
                    ->empty('Choisir', 0),

                DateTimer::make('proposition.date_proposition')
                    ->title('Date de proposition')
                    ->placeholder('Choisir la date')
                    ->format('Y-m-d H:i'),

                DateTimer::make('proposition.date_expiration')
                    ->title('Date d\'expiration')
                    ->placeholder('Choisir la date d\'expiration')
                    ->format('Y-m-d H:i')
                    ->allowEmpty(),
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
        $data = $request->get('proposition');

        $this->proposition->fill($data)->save();

        Alert::info('Proposition enregistrée avec succès.');

        return redirect()->route('platform.proposition.list');
    }

    /**
     * @param Proposition $proposition
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->proposition->delete();

        Alert::info('Vous avez supprimé la proposition avec succès.');

        return redirect()->route('platform.proposition.list');
    }
}
