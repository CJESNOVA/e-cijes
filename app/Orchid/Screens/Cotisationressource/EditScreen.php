<?php

namespace App\Orchid\Screens\Cotisationressource;

use Orchid\Screen\Screen;

use App\Models\Cotisationressource;
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
     * @var Cotisationressource
     */
    public $cotisationressource;

    /**
     * Query data.
     *
     * @param Cotisationressource $cotisationressource
     *
     * @return array
     */
    public function query(Cotisationressource $cotisationressource): array
    {
        return [
            'cotisationressource' => $cotisationressource
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->cotisationressource->exists ? 'Modification du paiement de la cotisation' : 'Créer un paiement de la cotisation';
    }

    /**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Paiements des cotisations";
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
                ->canSee(!$this->cotisationressource->exists),

            Button::make('Mettre à jour')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->cotisationressource->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->cotisationressource->exists),
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
                Input::make('cotisationressource.montant')
                    ->title('Montant')
                    ->placeholder('Saisir le montant'),

                TextArea::make('cotisationressource.reference')
                    ->title('Référence')
                    ->placeholder('Saisir la référence'),

                Select::make('cotisationressource.accompagnement_id')
                    ->title('Accompagnement')
                    ->placeholder('Choisir l\'accompagnement')
                    ->fromModel(\App\Models\Accompagnement::class, 'nom_complet')
                    ->empty('Choisir', 0),

                Select::make('cotisationressource.ressourcecompte_id')
                    ->title('Compte de ressource')
                    ->placeholder('Choisir le compte')
                    ->fromModel(\App\Models\Ressourcecompte::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('cotisationressource.cotisation_id')
                    ->title('Cotisation')
                    ->placeholder('Choisir la cotisation')
                    ->fromModel(\App\Models\Cotisation::class, 'reference')
                    ->empty('Choisir', 0),

                Select::make('cotisationressource.paiementstatut_id')
                    ->title('Statut de paiement')
                    ->placeholder('Choisir le statut')
                    ->fromModel(\App\Models\Paiementstatut::class, 'titre')
                    ->empty('Choisir', 0),

                Select::make('cotisationressource.membre_id')
                    ->title('Membre')
                    ->placeholder('Choisir le membre')
                    ->fromModel(\App\Models\Membre::class, 'nom_complet')
                    ->empty('Choisir', 0),

                Select::make('cotisationressource.entreprise_id')
                    ->title('Entreprise')
                    ->placeholder('Choisir l\'entreprise')
                    ->fromModel(\App\Models\Entreprise::class, 'nom')
                    ->empty('Choisir', 0),

                Select::make('cotisationressource.spotlight')
                    ->title('Spotlight')
                    ->options([
                        0 => 'Non',
                        1 => 'Oui',
                    ])
                    ->default(0),

                Select::make('cotisationressource.etat')
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
        $data = $request->get('cotisationressource');

        $this->cotisationressource->fill($data)->save();

        Alert::info('Paiement de la cotisation enregistré avec succès.');

        return redirect()->route('platform.cotisationressource.list');
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->cotisationressource->delete();

        Alert::info('Paiement de la cotisation supprimé avec succès.');

        return redirect()->route('platform.cotisationressource.list');
    }
}
