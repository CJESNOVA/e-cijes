<?php

namespace App\Orchid\Screens\Cotisation;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

use App\Models\Cotisation;
use App\Models\Entreprise;
use App\Models\Cotisationtype;
use Illuminate\Http\Request;

class EditScreen extends Screen
{
    /**
     * @var Cotisation
     */
    public $cotisation;

    /**
     * Query data.
     *
     * @param Cotisation $cotisation
     *
     * @return array
     */
    public function query(Cotisation $cotisation): array
    {
        return [
            'cotisation' => $cotisation
        ];
    }

    /**
     * The name of screen displayed in header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->cotisation->exists ? 'Modification de la cotisation' : 'Créer une cotisation';
    }

    /**
     * The description of screen displayed in header.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des cotisations des entreprises';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer une cotisation')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->cotisation->exists),

            Button::make('Modifier la cotisation')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->cotisation->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->cotisation->exists),
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
                Select::make('cotisation.entreprise_id')
                    ->title('Entreprise')
                    ->fromModel(Entreprise::class, 'nom')
                    ->required(),

                Select::make('cotisation.cotisationtype_id')
                    ->title('Type de cotisation')
                    ->fromModel(Cotisationtype::class, 'titre')
                    ->required(),

                Input::make('cotisation.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->required()
                    ->help('Montant total de la cotisation'),

                Input::make('cotisation.montant_paye')
                    ->title('Montant payé')
                    ->type('number')
                    ->step('0.01')
                    ->default(0)
                    ->help('Montant déjà payé par l\'entreprise'),

                Select::make('cotisation.devise')
                    ->title('Devise')
                    ->options(['XOF' => 'FCFA', 'EUR' => 'EUR', 'USD' => 'USD'])
                    ->default('XOF'),

                DateTimer::make('cotisation.date_debut')
                    ->title('Date de début')
                    ->format('Y-m-d')
                    ->help('Date de début de la période de cotisation'),

                DateTimer::make('cotisation.date_fin')
                    ->title('Date de fin')
                    ->format('Y-m-d')
                    ->help('Date de fin de la période de cotisation'),

                DateTimer::make('cotisation.date_echeance')
                    ->title('Date d\'échéance')
                    ->format('Y-m-d')
                    ->required()
                    ->help('Date limite de paiement'),

                DateTimer::make('cotisation.date_paiement')
                    ->title('Date de paiement')
                    ->format('Y-m-d')
                    ->help('Date du dernier paiement effectué'),

                Select::make('cotisation.statut')
                    ->title('Statut')
                    ->options([
                        'en_attente' => 'En attente',
                        'partielle' => 'Partiellement payée',
                        'payee' => 'Payée',
                        'retard' => 'En retard'
                    ])
                    ->required(),

                Input::make('cotisation.reference_paiement')
                    ->title('Référence de paiement')
                    ->placeholder('Référence du paiement')
                    ->help('Numéro de référence ou numéro de chèque'),

                Select::make('cotisation.mode_paiement')
                    ->title('Mode de paiement')
                    ->options([
                        'espece' => 'Espèce',
                        'banque' => 'Banque',
                        'mobile_money' => 'Mobile Money',
                        'virement' => 'Virement'
                    ])
                    ->empty('Non défini'),

                Input::make('cotisation.nombre_rappels')
                    ->title('Nombre de rappels')
                    ->type('number')
                    ->default(0)
                    ->help('Nombre de rappels envoyés à l\'entreprise'),

                TextArea::make('cotisation.commentaires')
                    ->title('Commentaires')
                    ->rows(3)
                    ->help('Notes additionnelles sur la cotisation'),
            ])
        ];
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->cotisation->delete();

        Alert::info('Vous avez supprimé la cotisation avec succès.');

        return redirect()->route('platform.cotisation');
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Request $request)
    {
        $request->validate([
            'cotisation.entreprise_id' => 'required|exists:entreprises,id',
            'cotisation.cotisationtype_id' => 'required|exists:cotisationtypes,id',
            'cotisation.montant' => 'required|numeric|min:0',
            'cotisation.montant_paye' => 'nullable|numeric|min:0',
            'cotisation.devise' => 'required|string|max:3',
            'cotisation.date_debut' => 'nullable|date',
            'cotisation.date_fin' => 'nullable|date|after_or_equal:cotisation.date_debut',
            'cotisation.date_echeance' => 'nullable|date',
            'cotisation.date_paiement' => 'nullable|date',
            'cotisation.mode_paiement' => 'nullable|string|in:espece,banque,mobile_money,virement',
            'cotisation.nombre_rappels' => 'nullable|integer|min:0',
            'cotisation.reference_paiement' => 'nullable|string|max:255',
            'cotisation.commentaires' => 'nullable|string|max:1000',
            'cotisation.etat' => 'boolean',
        ]);

        $data = $request->get('cotisation');

        if ($this->cotisation->exists) {
            // Mise à jour
            $this->cotisation->update($data);
            Alert::success('Cotisation mise à jour avec succès.');
        } else {
            // Création
            Cotisation::create($data);
            Alert::success('Cotisation créée avec succès.');
        }

        return redirect()->route('platform.cotisation');
    }
}
