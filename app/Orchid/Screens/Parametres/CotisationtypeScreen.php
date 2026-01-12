<?php

namespace App\Orchid\Screens\Parametres;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\ModalToggle;

use App\Models\Cotisationtype;
use Illuminate\Http\Request;

use Orchid\Screen\TD;
use Orchid\Screen\Actions\Button;

use Illuminate\Support\Facades\Redirect;

class CotisationtypeScreen extends Screen
{
    /**
     * Fetch data to be displayed on screen.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'cotisationtypes' => Cotisationtype::latest()->paginate(20),
        ];
    }

    /**
     * The name of screen displayed in header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des types de cotisations';
    }

    /**
     * Displays a description on user's screen
     * directly under the heading.
     */
    public function description(): ?string
    {
        return "Paramètres";
    }

    public function asyncCotisationtype(Cotisationtype $cotisationtype): iterable
    {
        return [
            'cotisationtype' => $cotisationtype
        ];
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            ModalToggle::make('Ajouter un type de cotisation')
                ->modal('cotisationtypeModal')
                ->method('create')
                ->icon('plus'),
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
            Layout::table('cotisationtypes', [
                TD::make('titre'),

                TD::make('montant', 'Montant')
                    ->render(function (Cotisationtype $cotisationtype) {
                        return number_format($cotisationtype->montant, 2, ',', ' ') . ' FCFA';
                    }),

                TD::make('entrepriseprofil.titre', 'Profil d\'entreprise')
                    ->render(function (Cotisationtype $cotisationtype) {
                        return $cotisationtype->entrepriseprofil_id > 0 ? 
                            ($cotisationtype->entrepriseprofil->titre ?? 'Profil inconnu') : 
                            '—';
                    }),

                TD::make('nombre_jours', 'Nombre de jours')
                    ->render(function (Cotisationtype $cotisationtype) {
                        return $cotisationtype->nombre_jours . ' jours';
                    }),

                TD::make('etat', 'État')
                    ->render(function (Cotisationtype $cotisationtype) {
                        return Button::make($cotisationtype->etat ? 'Désactiver' : 'Activer')
                            ->method('toggleEtat', [
                                'cotisationtype' => $cotisationtype->id,
                            ])
                            ->icon($cotisationtype->etat ? 'toggle-on' : 'toggle-off')
                            ->class($cotisationtype->etat ? 'btn btn-success' : 'btn btn-secondary');
                    }),

                TD::make('Actions')
                    ->alignRight()
                    ->render(function (Cotisationtype $cotisationtype) {
                        return ModalToggle::make('Modifier')
                                ->modal('editCotisationtypeModal')
                                ->modalTitle('Modifier le type de cotisation')
                                ->method('update')
                                ->asyncParameters([
                                    'cotisationtype' => $cotisationtype->id,
                                ])
                                ->icon('pencil')
                                ->class('btn btn-sm btn-warning')
                            . ' ' . 
                            Button::make('Supprimer')
                                ->confirm('Après la suppression, le type de cotisation disparaîtra définitivement.')
                                ->method('delete', ['cotisationtype' => $cotisationtype->id])
                                ->icon('trash')
                                ->class('btn btn-sm btn-danger');
                    }),

            ]),

            Layout::modal('cotisationtypeModal', Layout::rows([
                Input::make('cotisationtype.titre')
                    ->title('Titre')
                    ->placeholder('Entrez le nom du type de cotisation')
                    ->help('Le nom du type de cotisation à créer.'),

                Input::make('cotisationtype.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->placeholder('Entrez le montant')
                    ->help('Montant de la cotisation en FCFA.'),

                Select::make('cotisationtype.entrepriseprofil_id')
                    ->title('Profil d\'entreprise')
                    ->placeholder('Choisir le profil')
                    ->fromModel(\App\Models\Entrepriseprofil::class, 'titre')
                    ->empty('Choisir', 0)
                    ->help('Profil d\'entreprise concerné par cette cotisation.'),

                Input::make('cotisationtype.nombre_jours')
                    ->title('Nombre de jours')
                    ->type('number')
                    ->placeholder('Entrez le nombre de jours')
                    ->help('Durée en jours pour cette cotisation.')
                    ->default(0),
            ]))
                ->title('Créer un type de cotisation')
                ->applyButton('Ajouter un type de cotisation'),


            Layout::modal('editCotisationtypeModal', Layout::rows([
                Input::make('cotisationtype.id')->type('hidden'),

                Input::make('cotisationtype.titre')
                    ->title('Titre')
                    ->required(),

                Input::make('cotisationtype.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->required(),

                Select::make('cotisationtype.entrepriseprofil_id')
                    ->title('Profil d\'entreprise')
                    ->placeholder('Choisir le profil')
                    ->fromModel(\App\Models\Entrepriseprofil::class, 'titre')
                    ->empty('Choisir', 0),

                Input::make('cotisationtype.nombre_jours')
                    ->title('Nombre de jours')
                    ->type('number')
                    ->placeholder('Entrez le nombre de jours')
                    ->default(0),
            ]))
                ->async('asyncCotisationtype')
                ->applyButton('Mettre à jour'),

        ];
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return void
     */
    public function create(Request $request)
    {
        // Validate form data, save cotisationtype to database, etc.
        $request->validate([
            'cotisationtype.titre' => 'required|max:255',
            'cotisationtype.montant' => 'required|numeric|min:0',
            'cotisationtype.entrepriseprofil_id' => 'nullable|integer|min:0',
            'cotisationtype.nombre_jours' => 'nullable|integer|min:0',
        ]);

        $cotisationtype = new Cotisationtype();
        $cotisationtype->titre = $request->input('cotisationtype.titre');
        $cotisationtype->montant = $request->input('cotisationtype.montant');
        $cotisationtype->entrepriseprofil_id = $request->input('cotisationtype.entrepriseprofil_id', 0);
        $cotisationtype->nombre_jours = $request->input('cotisationtype.nombre_jours', 0);
        $cotisationtype->save();
    }

    /**
     * @param Cotisationtype $cotisationtype
     *
     * @return void
     */
    public function delete(Cotisationtype $cotisationtype)
    {
        $cotisationtype->delete();
    }



    public function toggleEtat(Request $request)
    {
        $cotisationtype = Cotisationtype::findOrFail($request->input('cotisationtype'));
        $cotisationtype->etat = !$cotisationtype->etat;
        $cotisationtype->save();
    }

    public function update(Request $request)
    {
        $request->validate([
            'cotisationtype.titre' => 'required|max:255',
            'cotisationtype.montant' => 'required|numeric|min:0',
            'cotisationtype.entrepriseprofil_id' => 'nullable|integer|min:0',
            'cotisationtype.nombre_jours' => 'nullable|integer|min:0',
        ]);

        $cotisationtype = Cotisationtype::findOrFail($request->input('cotisationtype.id'));
        $cotisationtype->titre = $request->input('cotisationtype.titre');
        $cotisationtype->montant = $request->input('cotisationtype.montant');
        $cotisationtype->entrepriseprofil_id = $request->input('cotisationtype.entrepriseprofil_id', 0);
        $cotisationtype->nombre_jours = $request->input('cotisationtype.nombre_jours', 0);
        $cotisationtype->save();
    }

}
