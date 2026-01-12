<?php

namespace App\Orchid\Screens\Parametres;

use App\Models\Reductiontype;
use Orchid\Screen\Screen;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class ReductiontypeScreen extends Screen
{
    public function query(): iterable
    {
        return [
            'reductiontypes' => Reductiontype::with(['entrepriseprofil', 'offretype'])->latest()->paginate(20),
        ];
    }

    public function name(): ?string
    {
        return 'Types de réductions';
    }

    public function description(): ?string
    {
        return 'Paramètres';
    }

    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter un type de réduction')
                ->icon('plus')
                ->route('platform.reductiontype.create')
                ->class('btn btn-primary'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::table('reductiontypes', [
                TD::make('titre_complet', 'Titre complet')
                    ->render(function (Reductiontype $reductiontype) {
                        return $reductiontype->titre_complet;
                    }),

                TD::make('entrepriseprofil.titre', 'Profil d\'entreprise')
                    ->render(function (Reductiontype $reductiontype) {
                        return $reductiontype->entrepriseprofil_id > 0 ? 
                            ($reductiontype->entrepriseprofil->titre ?? 'Profil inconnu') : 
                            '—';
                    }),

                TD::make('offretype.titre', 'Type d\'offre')
                    ->render(function (Reductiontype $reductiontype) {
                        return $reductiontype->offretype_id > 0 ? 
                            ($reductiontype->offretype->titre ?? 'Offre inconnue') : 
                            '—';
                    }),

                TD::make('pourcentage', 'Pourcentage')
                    ->render(function (Reductiontype $reductiontype) {
                        return $reductiontype->pourcentage . '%';
                    }),

                TD::make('montant', 'Montant')
                    ->render(function (Reductiontype $reductiontype) {
                        return number_format($reductiontype->montant, 2, ',', ' ') . ' FCFA';
                    }),

                TD::make('date_debut', 'Date de début')
                    ->render(function (Reductiontype $reductiontype) {
                        return $reductiontype->date_debut ? $reductiontype->date_debut->format('d/m/Y') : '—';
                    }),

                TD::make('date_fin', 'Date de fin')
                    ->render(function (Reductiontype $reductiontype) {
                        return $reductiontype->date_fin ? $reductiontype->date_fin->format('d/m/Y') : '—';
                    }),

                TD::make('promotion_status', 'Statut promotion')
                    ->render(function (Reductiontype $reductiontype) {
                        $status = $reductiontype->promotion_status;
                        $color = match($status) {
                            'Active' => 'success',
                            'À venir' => 'warning',
                            'Terminée' => 'danger',
                            default => 'secondary'
                        };
                        return "<span class='badge badge-{$color}'>{$status}</span>";
                    }),

                TD::make('etat', 'État')
                    ->render(function (Reductiontype $reductiontype) {
                        return Button::make($reductiontype->etat ? 'Désactiver' : 'Activer')
                            ->method('toggleEtat', [
                                'reductiontype' => $reductiontype->id,
                            ])
                            ->icon($reductiontype->etat ? 'toggle-on' : 'toggle-off')
                            ->class($reductiontype->etat ? 'btn btn-success' : 'btn btn-secondary');
                    }),

                TD::make('Actions')
                    ->alignRight()
                    ->render(function (Reductiontype $reductiontype) {
                        return Button::make('Modifier')
                                ->method('edit', [
                                    'reductiontype' => $reductiontype->id,
                                ])
                                ->icon('pencil')
                                ->class('btn btn-sm btn-warning')
                            . ' ' . 
                            Button::make('Supprimer')
                                ->confirm('Après la suppression, le type de réduction disparaîtra définitivement.')
                                ->method('delete', ['reductiontype' => $reductiontype->id])
                                ->icon('trash')
                                ->class('btn btn-sm btn-danger');
                    }),
            ]),
        ];
    }

    public function delete(Reductiontype $reductiontype)
    {
        $reductiontype->delete();
        Alert::info('Type de réduction supprimé avec succès.');
    }

    public function toggleEtat(Request $request)
    {
        $reductiontype = Reductiontype::findOrFail($request->input('reductiontype'));
        $reductiontype->etat = !$reductiontype->etat;
        $reductiontype->save();
        
        $message = $reductiontype->etat ? 'Type de réduction activé.' : 'Type de réduction désactivé.';
        Alert::info($message);
    }
}
