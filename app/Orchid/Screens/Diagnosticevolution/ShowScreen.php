<?php

namespace App\Orchid\Screens\Diagnosticevolution;

use App\Models\Diagnosticevolution;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;

class ShowScreen extends Screen
{
    /**
     * @var Diagnosticevolution
     */
    public $diagnosticevolution;

    /**
     * Query data.
     *
     * @param Diagnosticevolution $diagnosticevolution
     *
     * @return array
     */
    public function query(Diagnosticevolution $diagnosticevolution): iterable
    {
        $diagnosticevolution->load(['entreprise', 'diagnostic', 'diagnosticPrecedent', 'diagnosticstatut', 'entrepriseprofil']);
        
        return [
            'diagnosticevolution' => $diagnosticevolution,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Détail de l\'Évolution';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Informations détaillées sur l\'évolution du diagnostic';
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
                ->route('platform.diagnosticevolution.edit', $this->diagnosticevolution),

            Button::make('Supprimer')
                ->icon('bs.trash')
                ->method('remove')
                ->confirm('Êtes-vous sûr de vouloir supprimer cette évolution ?'),

            Link::make('Retour')
                ->icon('bs.arrow-left')
                ->route('platform.diagnosticevolution.list'),
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
            Layout::legend('diagnosticevolution', [
                Sight::make('entreprise.nom_complet', 'Entreprise')
                    ->render(fn ($evolution) => $evolution->entreprise ? $evolution->entreprise->nom_complet : 'Non défini'),
                Sight::make('diagnostic_id', 'Diagnostic')
                    ->render(fn ($evolution) => '#' . ($evolution->diagnostic_id ?? 'Non défini')),
                Sight::make('diagnostic_precedent_id', 'Diagnostic précédent')
                    ->render(fn ($evolution) => 
                        $evolution->diagnostic_precedent_id ? 
                        '<a href="' . route('platform.diagnostic.show', $evolution->diagnostic_precedent_id) . '" class="text-decoration-none">#' . $evolution->diagnostic_precedent_id . '</a>' : 
                        '<span class="badge bg-success">Initial</span>'
                    ),
                Sight::make('score_global', 'Score global')
                    ->render(fn ($evolution) => 
                        '<span class="badge bg-' . ($evolution->score_global >= 70 ? 'success' : ($evolution->score_global >= 50 ? 'warning' : 'danger')) . ' fs-6">' . $evolution->score_global . '</span>'
                    ),
                Sight::make('diagnosticstatut.titre', 'Statut')
                    ->render(fn ($evolution) => 
                        $evolution->diagnosticstatut ? 
                        '<span class="badge bg-info fs-6">' . $evolution->diagnosticstatut->titre . '</span>' : 
                        'Non défini'
                    ),
                Sight::make('entrepriseprofil.titre', 'Profil d\'entreprise')
                    ->render(fn ($evolution) => $evolution->entrepriseprofil ? $evolution->entrepriseprofil->titre : 'Non défini'),
                Sight::make('commentaire', 'Commentaire')
                    ->render(fn ($evolution) => $evolution->commentaire ?: 'Aucun commentaire'),
                Sight::make('created_at', 'Créé le')
                    ->render(fn ($evolution) => 
                        $evolution->created_at ? $evolution->created_at->format('d/m/Y H:i:s') : 'Non défini'
                    ),
                Sight::make('updated_at', 'Modifié le')
                    ->render(fn ($evolution) => 
                        $evolution->updated_at ? $evolution->updated_at->format('d/m/Y H:i:s') : 'Non défini'
                    ),
            ]),
        ];
    }

    public function remove()
    {
        $this->diagnosticevolution->delete();
        
        Alert::info('L\'évolution a été supprimée avec succès.');
        
        return redirect()->route('platform.diagnosticevolution.list');
    }
}
