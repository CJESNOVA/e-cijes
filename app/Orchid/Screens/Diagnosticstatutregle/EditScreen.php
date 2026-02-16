<?php

namespace App\Orchid\Screens\Diagnosticstatutregle;

use App\Models\Diagnosticstatutregle;
use App\Models\Diagnosticstatut;
use App\Models\Entrepriseprofil;
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
     * @var Diagnosticstatutregle
     */
    public $diagnosticstatutregle;

    /**
     * Query data.
     *
     * @param Diagnosticstatutregle $diagnosticstatutregle
     *
     * @return array
     */
    public function query(Diagnosticstatutregle $diagnosticstatutregle): iterable
    {
        return [
            'diagnosticstatutregle' => $diagnosticstatutregle,
            'entrepriseprofils' => Entrepriseprofil::where('etat', 1)->pluck('titre', 'id'),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->diagnosticstatutregle->exists ? 'Modifier une règle' : 'Ajouter une règle';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return $this->diagnosticstatutregle->exists ? 'Modifier les conditions de la règle' : 'Créer une nouvelle règle de statut';
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
                ->canSee($this->diagnosticstatutregle->exists),

            Link::make('Annuler')
                ->icon('bs.arrow-left')
                ->route('platform.diagnosticstatutregle.list'),
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
                Select::make('diagnosticstatutregle.entrepriseprofil_id')
                    ->title('Profil d\'entreprise')
                    ->placeholder('Choisir le profil d\'entreprise')
                    ->fromModel(Entrepriseprofil::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('diagnosticstatutregle.score_total_min')
                    ->title('Score total minimum')
                    ->type('number')
                    ->placeholder('Score total minimum')
                    ->help('Score total minimum pour atteindre ce statut'),

                Input::make('diagnosticstatutregle.score_total_max')
                    ->title('Score total maximum')
                    ->type('number')
                    ->placeholder('Score total maximum')
                    ->help('Score total maximum pour ce statut (laisser vide si illimité)'),

                Input::make('diagnosticstatutregle.min_blocs_score')
                    ->title('Minimum de blocs avec score')
                    ->type('number')
                    ->placeholder('Nombre minimum de blocs')
                    ->help('Nombre minimum de blocs ayant un score suffisant'),

                Input::make('diagnosticstatutregle.min_score_bloc')
                    ->title('Score minimum par bloc')
                    ->type('number')
                    ->placeholder('Score minimum par bloc')
                    ->help('Score minimum requis pour chaque bloc'),

                Input::make('diagnosticstatutregle.bloc_juridique_min')
                    ->title('Bloc juridique minimum')
                    ->type('number')
                    ->placeholder('Score juridique minimum')
                    ->help('Score minimum requis pour le bloc juridique'),

                Input::make('diagnosticstatutregle.bloc_finance_min')
                    ->title('Bloc finance minimum')
                    ->type('number')
                    ->placeholder('Score finance minimum')
                    ->help('Score minimum requis pour le bloc finance'),

                Input::make('diagnosticstatutregle.aucun_bloc_inf')
                    ->title('Aucun bloc inférieur à')
                    ->type('number')
                    ->placeholder('Seuil minimum')
                    ->help('Aucun bloc ne doit avoir un score inférieur à ce seuil'),

                Input::make('diagnosticstatutregle.duree_min_mois')
                    ->title('Durée minimum (mois)')
                    ->type('number')
                    ->placeholder('Durée en mois')
                    ->default(0)
                    ->help('Durée minimum en mois pour ce statut'),
            ]),
        ];
    }

    /**
     * Save the rule.
     *
     * @param Diagnosticstatutregle $diagnosticstatutregle
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function save(Diagnosticstatutregle $diagnosticstatutregle, Request $request)
    {
        $data = $request->get('diagnosticstatutregle');
        $diagnosticstatutregle->fill($data)->save();

        Alert::info('Règle sauvegardée avec succès.');

        return redirect()->route('platform.diagnosticstatutregle.list');
    }

    /**
     * Remove the rule.
     *
     * @param Diagnosticstatutregle $diagnosticstatutregle
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Diagnosticstatutregle $diagnosticstatutregle)
    {
        $diagnosticstatutregle->delete();

        Alert::info('Règle supprimée avec succès.');

        return redirect()->route('platform.diagnosticstatutregle.list');
    }
}
