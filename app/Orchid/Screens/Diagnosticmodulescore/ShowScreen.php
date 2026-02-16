<?php

namespace App\Orchid\Screens\Diagnosticmodulescore;

use App\Models\Diagnosticmodulescore;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class ShowScreen extends Screen
{
    /**
     * @var Diagnosticmodulescore
     */
    public $diagnosticmodulescore;

    public function query(Diagnosticmodulescore $diagnosticmodulescore): iterable
    {
        $this->diagnosticmodulescore = $diagnosticmodulescore;
        $diagnosticmodulescore->load(['diagnostic', 'diagnosticmodule', 'diagnosticblocstatut']); 

        return [
            'diagnosticmodulescore' => $diagnosticmodulescore,
        ];
    }

    public function name(): ?string
    {
        return 'Détail du score de module de diagnostic';
    }

    public function description(): ?string
    {
        return 'Fiche complète du score de module de diagnostic sélectionné';
    }

    /**
     * Barre d'action (boutons en haut)
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Modifier')
                ->icon('pencil')
                ->route('platform.diagnosticmodulescore.edit', $this->diagnosticmodulescore),
                
            Button::make('Supprimer')
                ->icon('trash')
                ->confirm('Êtes-vous sûr de vouloir supprimer ce score de module ?')
                ->method('remove', [
                    'diagnosticmodulescore' => $this->diagnosticmodulescore->id,
                ]),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('diagnosticmodulescore', [
                Sight::make('diagnostic_nom', 'Diagnostic')
                    ->render(fn($diagnosticmodulescore) => 
                        $diagnosticmodulescore->diagnostic ? $diagnosticmodulescore->diagnostic->getNomCompletAttribute() : '—'
                    ),
                Sight::make('diagnosticmodule.titre', 'Module de diagnostic'),
                Sight::make('score_total', 'Score total'),
                Sight::make('score_max', 'Score maximum'),
                Sight::make('score_pourcentage', 'Score en pourcentage')->render(fn($diagnosticmodulescore) => $diagnosticmodulescore->score_pourcentage ? $diagnosticmodulescore->score_pourcentage . '%' : '—'),
                Sight::make('niveau', 'Niveau'),
                Sight::make('diagnosticblocstatut.titre', 'Statut de bloc')
                    ->render(fn($diagnosticmodulescore) => $diagnosticmodulescore->diagnosticblocstatut ? $diagnosticmodulescore->diagnosticblocstatut->titre : 'Aucun'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }

    /**
     * Suppression du score de module
     */
    public function remove(Request $request)
    {
        $diagnosticmodulescore = Diagnosticmodulescore::findOrFail($request->input('diagnosticmodulescore'));
        $diagnosticmodulescore->delete();

        Alert::info("Score de module de diagnostic supprimé avec succès.");
        return redirect()->route('platform.diagnosticmodulescore.list');
    }
}
