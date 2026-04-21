<?php

namespace App\Orchid\Screens\Abonnement;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\CheckBox;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

use App\Models\Abonnement;
use App\Models\Entreprise;
use App\Models\Abonnementtype;
use Illuminate\Http\Request;

class EditScreen extends Screen
{
    /**
     * @var Abonnement
     */
    public $abonnement;

    /**
     * Query data.
     *
     * @param Abonnement $abonnement
     *
     * @return array
     */
    public function query(Abonnement $abonnement): array
    {
        return [
            'abonnement' => $abonnement
        ];
    }

    /**
     * The name of screen displayed in header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->abonnement->exists ? 'Modification de l\'abonnement' : 'Créer un abonnement';
    }

    /**
     * The description of screen displayed in header.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des abonnements des entreprises';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un abonnement')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->abonnement->exists),

            Button::make('Modifier l\'abonnement')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->abonnement->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->abonnement->exists),
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
                Select::make('abonnement.entreprise_id')
                    ->title('Entreprise')
                    ->fromModel(Entreprise::class, 'nom')
                    ->required(),

                Select::make('abonnement.abonnementtype_id')
                    ->title('Type d\'abonnement')
                    ->fromModel(Abonnementtype::class, 'titre')
                    ->required(),

                Input::make('abonnement.montant')
                    ->title('Montant')
                    ->type('number')
                    ->step('0.01')
                    ->required()
                    ->help('Montant total de l\'abonnement'),

                Input::make('abonnement.montant_paye')
                    ->title('Montant payé')
                    ->type('number')
                    ->step('0.01')
                    ->default(0)
                    ->help('Montant déjà payé par l\'entreprise'),

                Select::make('abonnement.devise')
                    ->title('Devise')
                    ->options(['XOF' => 'FCFA', 'EUR' => 'EUR', 'USD' => 'USD'])
                    ->default('XOF'),

                DateTimer::make('abonnement.date_debut')
                    ->title('Date de début')
                    ->format('Y-m-d')
                    ->required()
                    ->help('Date de début de la période d\'abonnement'),

                DateTimer::make('abonnement.date_fin')
                    ->title('Date de fin')
                    ->format('Y-m-d')
                    ->required()
                    ->help('Date de fin de la période d\'abonnement'),

                DateTimer::make('abonnement.date_echeance')
                    ->title('Date d\'échéance')
                    ->format('Y-m-d')
                    ->required()
                    ->help('Date limite de paiement'),

                DateTimer::make('abonnement.date_paiement')
                    ->title('Date de paiement')
                    ->format('Y-m-d')
                    ->help('Date du dernier paiement effectué'),

                Select::make('abonnement.statut')
                    ->title('Statut')
                    ->options([
                        'en_attente' => 'En attente',
                        'partiel' => 'Partiellement payé',
                        'paye' => 'Payé',
                        'retard' => 'En retard',
                        'expire' => 'Expiré',
                        'resilie' => 'Résilié',
                        'suspendu' => 'Suspendu'
                    ])
                    ->required(),

                CheckBox::make('abonnement.renouvellement_auto')
                    ->title('Renouvellement automatique')
                    ->placeholder('Activer le renouvellement automatique')
                    ->help('L\'abonnement sera renouvelé automatiquement à la fin de la période'),

                DateTimer::make('abonnement.date_dernier_renouvellement')
                    ->title('Date du dernier renouvellement')
                    ->format('Y-m-d')
                    ->help('Date du dernier renouvellement effectué')
                    ->canSee($this->abonnement->exists),

                Input::make('abonnement.reference_paiement')
                    ->title('Référence de paiement')
                    ->placeholder('Référence du paiement')
                    ->help('Numéro de référence ou numéro de chèque'),

                Select::make('abonnement.mode_paiement')
                    ->title('Mode de paiement')
                    ->options([
                        'espece' => 'Espèce',
                        'banque' => 'Banque',
                        'mobile_money' => 'Mobile Money',
                        'virement' => 'Virement',
                        'carte' => 'Carte bancaire',
                        'prelevement' => 'Prélèvement automatique'
                    ])
                    ->empty('Non défini'),

                Input::make('abonnement.nombre_rappels')
                    ->title('Nombre de rappels')
                    ->type('number')
                    ->default(0)
                    ->help('Nombre de rappels envoyés à l\'entreprise'),

                TextArea::make('abonnement.commentaires')
                    ->title('Commentaires')
                    ->rows(3)
                    ->help('Notes additionnelles sur l\'abonnement'),
            ])
        ];
    }

    /**
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->abonnement->delete();

        Alert::info('Vous avez supprimé l\'abonnement avec succès.');

        return redirect()->route('platform.abonnement');
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Request $request)
    {
        $request->validate([
            'abonnement.entreprise_id' => 'required|exists:entreprises,id',
            'abonnement.abonnementtype_id' => 'required|exists:abonnementtypes,id',
            'abonnement.montant' => 'required|numeric|min:0',
            'abonnement.montant_paye' => 'nullable|numeric|min:0',
            'abonnement.devise' => 'required|string|max:3',
            'abonnement.date_debut' => 'required|date',
            'abonnement.date_fin' => 'required|date|after_or_equal:abonnement.date_debut',
            'abonnement.date_echeance' => 'required|date',
            'abonnement.date_paiement' => 'nullable|date',
            'abonnement.mode_paiement' => 'nullable|string|in:espece,banque,mobile_money,virement,carte,prelevement',
            'abonnement.nombre_rappels' => 'nullable|integer|min:0',
            'abonnement.reference_paiement' => 'nullable|string|max:255',
            'abonnement.commentaires' => 'nullable|string|max:1000',
            'abonnement.renouvellement_auto' => 'boolean',
            'abonnement.date_dernier_renouvellement' => 'nullable|date',
            'abonnement.etat' => 'boolean',
        ]);

        $data = $request->get('abonnement');

        if ($this->abonnement->exists) {
            // Mise à jour
            $this->abonnement->update($data);
            Alert::success('Abonnement mis à jour avec succès.');
        } else {
            // Création
            Abonnement::create($data);
            Alert::success('Abonnement créé avec succès.');
        }

        return redirect()->route('platform.abonnement');
    }
}
