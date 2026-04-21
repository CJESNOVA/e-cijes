<?php

namespace App\Orchid\Screens\Abonnementressource;

use Orchid\Screen\Screen;

use App\Models\Abonnementressource;
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
     * @var Abonnementressource
     */
    public $abonnementressource;

    /**
     * Query data.
     *
     * @param Abonnementressource $abonnementressource
     *
     * @return array
     */
    public function query(Abonnementressource $abonnementressource): array
    {
        return [
            'abonnementressource' => $abonnementressource
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->abonnementressource->exists ? 'Modification du paiement de l\'abonnement' : 'Créer un paiement de l\'abonnement';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Paiements des abonnements";
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): array
    {
        return [
            Button::make('Créer')
                ->icon('plus')
                ->method('createOrUpdate')
                ->canSee(!$this->abonnementressource->exists),

            Button::make('Mettre à jour')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->abonnementressource->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->abonnementressource->exists),
        ];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): array
    {
        return [
            Layout::rows([
                Input::make('abonnementressource.montant')
                    ->title('Montant')
                    ->placeholder('Saisir le montant'),

                TextArea::make('abonnementressource.reference')
                    ->title('Référence')
                    ->placeholder('Saisir la référence'),

                Select::make('abonnementressource.accompagnement_id')
                    ->title('Accompagnement')
                    ->placeholder('Choisir l\'accompagnement')
                    ->fromModel(\App\Models\Accompagnement::class, 'id')
                    ->empty('Choisir', 0),

                Select::make('abonnementressource.ressourcecompte_id')
                    ->title('Compte de ressource')
                    ->placeholder('Choisir le compte')
                    ->fromModel(\App\Models\Ressourcecompte::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('abonnementressource.abonnement_id')
                    ->title('Abonnement')
                    ->placeholder('Choisir l\'abonnement')
                    ->fromModel(\App\Models\Abonnement::class, 'reference')
                    ->empty('Choisir', 0),

                Select::make('abonnementressource.paiementstatut_id')
                    ->title('Statut de paiement')
                    ->placeholder('Choisir le statut')
                    ->fromModel(\App\Models\Paiementstatut::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('abonnementressource.membre_id')
                    ->title('Membre')
                    ->placeholder('Choisir le membre')
                    ->fromModel(\App\Models\Membre::class, 'nom')
                    ->empty('Choisir', 0),

                Select::make('abonnementressource.entreprise_id')
                    ->title('Entreprise')
                    ->placeholder('Choisir l\'entreprise')
                    ->fromModel(\App\Models\Entreprise::class, 'nom')
                    ->empty('Choisir', 0),

                Select::make('abonnementressource.spotlight')
                    ->title('Spotlight')
                    ->options([
                        0 => 'Non',
                        1 => 'Oui',
                    ])
                    ->default(0),

                Select::make('abonnementressource.etat')
                    ->title('État')
                    ->options([
                        0 => 'Inactif',
                        1 => 'Actif',
                    ])
                    ->default(1),

            ]),
        ];
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Request $request)
    {
        $data = $request->get('abonnementressource');

        $this->abonnementressource->fill($data)->save();

        Alert::info('Paiement de l\'abonnement enregistré avec succès.');

        return redirect()->route('platform.abonnementressource.list');
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->abonnementressource->delete();

        Alert::info('Paiement de l\'abonnement supprimé avec succès.');

        return redirect()->route('platform.abonnementressource.list');
    }
}
