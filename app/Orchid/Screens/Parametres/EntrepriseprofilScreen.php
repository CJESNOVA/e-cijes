<?php

namespace App\Orchid\Screens\Parametres;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\ModalToggle;

use App\Models\Entrepriseprofil;
use Illuminate\Http\Request;

use Orchid\Screen\TD;
use Orchid\Screen\Actions\Button;

use Illuminate\Support\Facades\Redirect;

class EntrepriseprofilScreen extends Screen
{
    /**
     * Fetch data to be displayed on the screen.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'entrepriseprofils' => Entrepriseprofil::latest()->paginate(20),
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des profils d\'entreprises';
    }

    /**
     * Displays a description on the user's screen
     * directly under the heading.
     */
    public function description(): ?string
    {
        return "Paramètres";
    }

    public function asyncEntrepriseprofil(Entrepriseprofil $entrepriseprofil): iterable
    {
        return [
            'entrepriseprofil' => $entrepriseprofil
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
            ModalToggle::make('Ajouter un profil d\'entreprise')
                ->modal('entrepriseprofilModal')
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
            Layout::table('entrepriseprofils', [
                TD::make('titre'),

                TD::make('etat', 'État')
                    ->render(function (Entrepriseprofil $entrepriseprofil) {
                        return Button::make($entrepriseprofil->etat ? 'Désactiver' : 'Activer')
                            ->method('toggleEtat', [
                                'entrepriseprofil' => $entrepriseprofil->id,
                            ])
                            ->icon($entrepriseprofil->etat ? 'toggle-on' : 'toggle-off')
                            ->class($entrepriseprofil->etat ? 'btn btn-success' : 'btn btn-secondary');
                    }),

                TD::make('Actions')
                    ->alignRight()
                    ->render(function (Entrepriseprofil $entrepriseprofil) {
                        return ModalToggle::make('Modifier')
                                ->modal('editEntrepriseprofilModal')
                                ->modalTitle('Modifier le profil d\'entreprise')
                                ->method('update')
                                ->asyncParameters([
                                    'entrepriseprofil' => $entrepriseprofil->id,
                                ])
                                ->icon('pencil')
                                ->class('btn btn-sm btn-warning')
                            . ' ' . 
                            Button::make('Supprimer')
                                ->confirm('Après la suppression, le profil d\'entreprise disparaîtra définitivement.')
                                ->method('delete', ['entrepriseprofil' => $entrepriseprofil->id])
                                ->icon('trash')
                                ->class('btn btn-sm btn-danger');
                    }),

            ]),

            Layout::modal('entrepriseprofilModal', Layout::rows([
                Input::make('entrepriseprofil.titre')
                    ->title('Titre')
                    ->placeholder('Entrez le nom du profil d\'entreprise')
                    ->help('Le nom du profil d\'entreprise à créer.'),
            ]))
                ->title('Créer un profil d\'entreprise')
                ->applyButton('Ajouter un profil d\'entreprise'),


            Layout::modal('editEntrepriseprofilModal', Layout::rows([
                Input::make('entrepriseprofil.id')->type('hidden'),

                Input::make('entrepriseprofil.titre')
                    ->title('Titre')
                    ->required(),
            ]))
                ->async('asyncEntrepriseprofil')
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
        // Validate form data, save entrepriseprofil to database, etc.
        $request->validate([
            'entrepriseprofil.titre' => 'required|max:255',
        ]);

        $entrepriseprofil = new Entrepriseprofil();
        $entrepriseprofil->titre = $request->input('entrepriseprofil.titre');
        $entrepriseprofil->save();
    }

    /**
     * @param Entrepriseprofil $entrepriseprofil
     *
     * @return void
     */
    public function delete(Entrepriseprofil $entrepriseprofil)
    {
        $entrepriseprofil->delete();
    }



    public function toggleEtat(Request $request)
    {
        $entrepriseprofil = Entrepriseprofil::findOrFail($request->input('entrepriseprofil'));
        $entrepriseprofil->etat = !$entrepriseprofil->etat;
        $entrepriseprofil->save();
    }

    public function update(Request $request)
    {
        $request->validate([
            'entrepriseprofil.titre' => 'required|max:255',
        ]);

        $entrepriseprofil = Entrepriseprofil::findOrFail($request->input('entrepriseprofil.id'));
        $entrepriseprofil->titre = $request->input('entrepriseprofil.titre');
        $entrepriseprofil->save();
    }

}
