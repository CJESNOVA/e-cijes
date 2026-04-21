<?php

namespace App\Orchid\Screens\Parametres;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\ModalToggle;

use App\Models\Abonnementtype;
use Illuminate\Http\Request;

use Orchid\Screen\TD;
use Orchid\Screen\Actions\Button;

use Illuminate\Support\Facades\Redirect;

class AbonnementtypeScreen extends Screen
{
    /**
     * Fetch data to be displayed on screen.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'abonnementtypes' => Abonnementtype::latest()->paginate(20),
        ];
    }

    /**
     * The name of screen displayed in header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des types d\'abonnements';
    }

    /**
     * Displays a description on user's screen
     * directly under the heading.
     */
    public function description(): ?string
    {
        return "Paramètres";
    }

    public function asyncAbonnementtype(Abonnementtype $abonnementtype): iterable
    {
        return [
            'abonnementtype' => $abonnementtype
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
            ModalToggle::make('Ajouter un type d\'abonnement')
                ->modal('abonnementtypeModal')
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
            Layout::table('abonnementtypes', [
                TD::make('titre'),

                TD::make('montant', 'Montant')
                    ->render(function (Abonnementtype $abonnementtype) {
                        return number_format($abonnementtype->montant, 2, ',', ' ') . ' FCFA';
                    }),

                TD::make('nombre_jours', 'Nombre de jours')
                    ->render(function (Abonnementtype $abonnementtype) {
                        return $abonnementtype->nombre_jours . ' jours';
                    }),

                TD::make('etat', 'État')
                    ->render(function (Abonnementtype $abonnementtype) {
                        return Button::make($abonnementtype->etat ? 'Désactiver' : 'Activer')
                            ->method('toggleEtat', [
                                'abonnementtype' => $abonnementtype->id,
                            ])
                            ->icon($abonnementtype->etat ? 'toggle-on' : 'toggle-off')
                            ->class($abonnementtype->etat ? 'btn btn-success' : 'btn btn-secondary');
                    }),

                TD::make('Actions')
                    ->alignRight()
                    ->render(function (Abonnementtype $abonnementtype) {
                        return ModalToggle::make('Modifier')
                                ->modal('editAbonnementtypeModal')
                                ->modalTitle('Modifier le type d\'abonnement')
                                ->method('update')
                                ->asyncParameters([
                                    'abonnementtype' => $abonnementtype->id,
                                ])
                                ->icon('pencil')
                                ->class('btn btn-sm btn-warning')
                            . ' ' . 
                            Button::make('Supprimer')
                                ->confirm('Après la suppression, le type d\'abonnement disparaîtra définitivement.')
                                ->method('delete', ['abonnementtype' => $abonnementtype->id])
                                ->icon('trash')
                                ->class('btn btn-sm btn-danger');
                    }),

            ]),

            Layout::modal('abonnementtypeModal', Layout::rows([
                Input::make('abonnementtype.titre')
                    ->title('Titre')
                    ->placeholder('Entrez le nom du type d\'abonnement')
                    ->help('Le nom du type d\'abonnement à créer.'),

                Input::make('abonnementtype.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->placeholder('Entrez le montant')
                    ->help('Montant de l\'abonnement en FCFA.'),

                Input::make('abonnementtype.nombre_jours')
                    ->title('Nombre de jours')
                    ->type('number')
                    ->placeholder('Entrez le nombre de jours')
                    ->help('Durée en jours pour cet abonnement.')
                    ->default(0),
            ]))
                ->title('Créer un type d\'abonnement')
                ->applyButton('Ajouter un type d\'abonnement'),


            Layout::modal('editAbonnementtypeModal', Layout::rows([
                Input::make('abonnementtype.id')->type('hidden'),

                Input::make('abonnementtype.titre')
                    ->title('Titre')
                    ->required(),

                Input::make('abonnementtype.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->required(),

                Input::make('abonnementtype.nombre_jours')
                    ->title('Nombre de jours')
                    ->type('number')
                    ->placeholder('Entrez le nombre de jours')
                    ->default(0),
            ]))
                ->async('asyncAbonnementtype')
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
        // Validate form data, save abonnementtype to database, etc.
        $request->validate([
            'abonnementtype.titre' => 'required|max:255',
            'abonnementtype.montant' => 'required|numeric|min:0',
            'abonnementtype.nombre_jours' => 'nullable|integer|min:0',
        ]);

        $abonnementtype = new Abonnementtype();
        $abonnementtype->titre = $request->input('abonnementtype.titre');
        $abonnementtype->montant = $request->input('abonnementtype.montant');
        $abonnementtype->nombre_jours = $request->input('abonnementtype.nombre_jours', 0);
        $abonnementtype->save();
    }

    /**
     * @param Abonnementtype $abonnementtype
     *
     * @return void
     */
    public function delete(Abonnementtype $abonnementtype)
    {
        $abonnementtype->delete();
    }



    public function toggleEtat(Request $request)
    {
        $abonnementtype = Abonnementtype::findOrFail($request->input('abonnementtype'));
        $abonnementtype->etat = !$abonnementtype->etat;
        $abonnementtype->save();
    }

    public function update(Request $request)
    {
        $request->validate([
            'abonnementtype.titre' => 'required|max:255',
            'abonnementtype.montant' => 'required|numeric|min:0',
            'abonnementtype.nombre_jours' => 'nullable|integer|min:0',
        ]);

        $abonnementtype = Abonnementtype::findOrFail($request->input('abonnementtype.id'));
        $abonnementtype->titre = $request->input('abonnementtype.titre');
        $abonnementtype->montant = $request->input('abonnementtype.montant');
        $abonnementtype->nombre_jours = $request->input('abonnementtype.nombre_jours', 0);
        $abonnementtype->save();
    }

}
