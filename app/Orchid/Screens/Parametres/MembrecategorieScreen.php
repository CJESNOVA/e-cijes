<?php

namespace App\Orchid\Screens\Parametres;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\ModalToggle;

use App\Models\Membrecategorie;
use Illuminate\Http\Request;

use Orchid\Screen\TD;
use Orchid\Screen\Actions\Button;

use Illuminate\Support\Facades\Redirect;

class MembrecategorieScreen extends Screen
{
    /**
     * Fetch data to be displayed on screen.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'membrecategories' => Membrecategorie::latest()->paginate(20),
        ];
    }

    /**
     * The name of screen displayed in header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des catégories de membres';
    }

    /**
     * Displays a description on user's screen
     * directly under heading.
     */
    public function description(): ?string
    {
        return "Paramètres";
    }

    public function asyncMembrecategorie(Membrecategorie $membrecategorie): iterable
    {
        return [
            'membrecategorie' => $membrecategorie
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
            ModalToggle::make('Ajouter une catégorie de membre')
                ->modal('membrecategorieModal')
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
            Layout::table('membrecategories', [
                TD::make('titre'),

                TD::make('etat', 'État')
                    ->render(function (Membrecategorie $membrecategorie) {
                        return Button::make($membrecategorie->etat ? 'Désactiver' : 'Activer')
                            ->method('toggleEtat', [
                                'membrecategorie' => $membrecategorie->id,
                            ])
                            ->icon($membrecategorie->etat ? 'toggle-on' : 'toggle-off')
                            ->class($membrecategorie->etat ? 'btn btn-success' : 'btn btn-secondary');
                    }),

                TD::make('Actions')
                    ->alignRight()
                    ->render(function (Membrecategorie $membrecategorie) {
                        return ModalToggle::make('Modifier')
                                ->modal('editMembrecategorieModal')
                                ->modalTitle('Modifier la catégorie de membre')
                                ->method('update')
                                ->asyncParameters([
                                    'membrecategorie' => $membrecategorie->id,
                                ])
                                ->icon('pencil')
                                ->class('btn btn-sm btn-warning')
                            . ' ' . 
                            Button::make('Supprimer')
                                ->confirm('Après la suppression, la catégorie de membre disparaîtra définitivement.')
                                ->method('delete', ['membrecategorie' => $membrecategorie->id])
                                ->icon('trash')
                                ->class('btn btn-sm btn-danger');
                    }),

            ]),

            Layout::modal('membrecategorieModal', Layout::rows([
                Input::make('membrecategorie.titre')
                    ->title('Titre')
                    ->placeholder('Entrez le nom de la catégorie de membre')
                    ->help('Le nom de la catégorie de membre à créer.'),
            ]))
                ->title('Créer une catégorie de membre')
                ->applyButton('Ajouter une catégorie de membre'),


            Layout::modal('editMembrecategorieModal', Layout::rows([
                Input::make('membrecategorie.id')->type('hidden'),

                Input::make('membrecategorie.titre')
                    ->title('Titre')
                    ->required(),
            ]))
                ->async('asyncMembrecategorie')
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
        // Validate form data, save membrecategorie to database, etc.
        $request->validate([
            'membrecategorie.titre' => 'required|max:255',
        ]);

        $membrecategorie = new Membrecategorie();
        $membrecategorie->titre = $request->input('membrecategorie.titre');
        $membrecategorie->save();
    }

    /**
     * @param Membrecategorie $membrecategorie
     *
     * @return void
     */
    public function delete(Membrecategorie $membrecategorie)
    {
        $membrecategorie->delete();
    }



    public function toggleEtat(Request $request)
    {
        $membrecategorie = Membrecategorie::findOrFail($request->input('membrecategorie'));
        $membrecategorie->etat = !$membrecategorie->etat;
        $membrecategorie->save();
    }

    public function update(Request $request)
    {
        $request->validate([
            'membrecategorie.titre' => 'required|max:255',
        ]);

        $membrecategorie = Membrecategorie::findOrFail($request->input('membrecategorie.id'));
        $membrecategorie->titre = $request->input('membrecategorie.titre');
        $membrecategorie->save();
    }

}
