<?php

namespace App\Orchid\Screens\Diagnosticstatutregle;

use App\Models\Diagnosticstatutregle;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;

class ShowScreen extends Screen
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
        $diagnosticstatutregle->load(['entrepriseprofil']);
        
        return [
            'diagnosticstatutregle' => $diagnosticstatutregle,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Détail de la Règle';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Conditions détaillées de la règle de statut';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Modifier')
                ->icon('bs.pencil')
                ->route('platform.diagnosticstatutregle.edit', $this->diagnosticstatutregle),

            Link::make('Retour')
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
            Layout::legend('diagnosticstatutregle', [
                Sight::make('entrepriseprofil.titre', 'Profil d\'entreprise')
                    ->render(fn ($regle) => $regle->entrepriseprofil ? $regle->entrepriseprofil->titre : 'Non défini'),
                Sight::make('score_total_min', 'Score total minimum')
                    ->render(fn ($regle) => $regle->score_total_min ?? 'Non défini'),
                Sight::make('score_total_max', 'Score total maximum')
                    ->render(fn ($regle) => $regle->score_total_max ?? 'Illimité'),
                Sight::make('min_blocs_score', 'Minimum de blocs avec score')
                    ->render(fn ($regle) => $regle->min_blocs_score ?? 'Non défini'),
                Sight::make('min_score_bloc', 'Score minimum par bloc')
                    ->render(fn ($regle) => $regle->min_score_bloc ?? 'Non défini'),
                Sight::make('bloc_juridique_min', 'Bloc juridique minimum')
                    ->render(fn ($regle) => $regle->bloc_juridique_min ?? 'Non défini'),
                Sight::make('bloc_finance_min', 'Bloc finance minimum')
                    ->render(fn ($regle) => $regle->bloc_finance_min ?? 'Non défini'),
                Sight::make('aucun_bloc_inf', 'Aucun bloc inférieur à')
                    ->render(fn ($regle) => $regle->aucun_bloc_inf ?? 'Non défini'),
                Sight::make('duree_min_mois', 'Durée minimum')
                    ->render(fn ($regle) => $regle->duree_min_mois . ' mois'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
