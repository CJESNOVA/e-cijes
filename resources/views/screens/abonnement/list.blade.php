@extends('platform::app')

@section('title', 'Liste des abonnements')

@push('head')
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
@endpush

@section('content')
<fieldset class="mb-3">
<div class="bg-white rounded shadow-sm p-4 py-4 d-flex flex-column gap-3">
    <div class="row">
        <div class="col-md-12">
            <div class="bg-white rounded-2xl shadow p-4 mb-6 overflow-hidden">
                <div class="table-responsive">
                    <table id="datatable" class="table table-bordered table-striped w-full text-sm">
                        <thead class="bg-gray-100 text-gray-700">
                            <tr>
                                <th class="px-3 py-2">#</th>
                                <th class="px-3 py-2">Entreprise</th>
                                <th class="px-3 py-2">Type d'abonnement</th>
                                <th class="px-3 py-2">Montant</th>
                                <th class="px-3 py-2">Montant payé</th>
                                <th class="px-3 py-2">Restant</th>
                                <th class="px-3 py-2">Date début</th>
                                <th class="px-3 py-2">Date fin</th>
                                <th class="px-3 py-2">Statut</th>
                                <th class="px-3 py-2">Actif</th>
                                <th class="px-3 py-2">Auto-renouvellement</th>
                                <th class="px-3 py-2 text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($abonnements as $abonnement)
                                <tr>
                                    <td class="px-3 py-2">{{ $abonnement->id }}</td>
                                    <td class="px-3 py-2">
                                        @if ($abonnement->entreprise)
                                            {{ $abonnement->entreprise->nom }}
                                        @else
                                            Non définie
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($abonnement->abonnementtype)
                                            {{ $abonnement->abonnementtype->titre }}
                                        @else
                                            Non défini
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ number_format($abonnement->montant, 2, ',', ' ') }} {{ $abonnement->devise_label }}
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ number_format($abonnement->montant_paye, 2, ',', ' ') }} {{ $abonnement->devise_label }}
                                    </td>
                                    <td class="px-3 py-2">
                                        <span class="{{ $abonnement->montant_restant > 0 ? 'text-danger' : 'text-success' }}">
                                            {{ number_format($abonnement->montant_restant, 2, ',', ' ') }} {{ $abonnement->devise_label }}
                                        </span>
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ $abonnement->date_debut ? $abonnement->date_debut->format('d/m/Y') : '—' }}
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($abonnement->date_fin)
                                            <span class="{{ $abonnement->estExpirant() ? 'text-warning' : '' }}">
                                                {{ $abonnement->date_fin->format('d/m/Y') }}
                                                @if ($abonnement->joursRestants() !== null && $abonnement->joursRestants() <= 30)
                                                    <small class="d-block text-warning">({{ $abonnement->joursRestants() }} jours restants)</small>
                                                @endif
                                            </span>
                                        @else
                                            —
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        <span class="badge bg-{{ $abonnement->statut_color }} text-white">
                                            {{ $abonnement->statut_label }}
                                        </span>
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ $abonnement->est_actif ? '✅ Oui' : '❌ Non' }}
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ $abonnement->renouvellement_auto ? '🔄 Oui' : '❌ Non' }}
                                    </td>
                                    <td class="px-3 py-2 text-end">
                                        <a href="{{ route('platform.abonnement.show', $abonnement->id) }}" class="btn btn-info btn-sm">
                                            🔍 Détail
                                        </a>
                                        
                                        <a href="{{ route('platform.abonnement.edit', $abonnement->id) }}" class="btn btn-warning btn-sm">
                                            ✏️ Modifier
                                        </a>

                                        @if ($abonnement->renouvellement_auto && $abonnement->abonnementtype)
                                            <form method="POST" action="{{ route('platform.abonnement.renouveler') }}" style="display:inline-block">
                                                @csrf
                                                <input type="hidden" name="abonnement" value="{{ $abonnement->id }}">
                                                <button type="submit" class="btn btn-success btn-sm" onclick="return confirm('Confirmer le renouvellement ?')">🔄 Renouveler</button>
                                            </form>
                                        @endif

                                        @if (in_array($abonnement->statut, ['suspendu', 'resilie']))
                                            <form method="POST" action="{{ route('platform.abonnement.reactiver') }}" style="display:inline-block">
                                                @csrf
                                                <input type="hidden" name="abonnement" value="{{ $abonnement->id }}">
                                                <button type="submit" class="btn btn-primary btn-sm" onclick="return confirm('Confirmer la réactivation ?')">▶️ Réactiver</button>
                                            </form>
                                        @endif

                                        @if (in_array($abonnement->statut, ['paye', 'partiel', 'en_attente']))
                                            <form method="POST" action="{{ route('platform.abonnement.suspendre') }}" style="display:inline-block">
                                                @csrf
                                                <input type="hidden" name="abonnement" value="{{ $abonnement->id }}">
                                                <button type="submit" class="btn btn-warning btn-sm" onclick="return confirm('Confirmer la suspension ?')">⏸️ Suspendre</button>
                                            </form>
                                        @endif

                                        @if (in_array($abonnement->statut, ['paye', 'partiel', 'en_attente', 'suspendu']))
                                            <form method="POST" action="{{ route('platform.abonnement.resilier') }}" style="display:inline-block">
                                                @csrf
                                                <input type="hidden" name="abonnement" value="{{ $abonnement->id }}">
                                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Confirmer la résiliation ?')">❌ Résilier</button>
                                            </form>
                                        @endif
                                        
                                        <form method="POST" action="{{ route('platform.abonnement.delete') }}" style="display:inline-block">
                                            @csrf
                                            <input type="hidden" name="abonnement" value="{{ $abonnement->id }}">
                                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Confirmer la suppression ?')">🗑 Supprimer</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</fieldset>
@endsection

@push('scripts')
    <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            $('#datatable').DataTable({
                language: {
                    url: '//cdn.datatables.net/plug-ins/1.13.4/i18n/fr-FR.json'
                },
                responsive: true,
                autoWidth: false,
                pageLength: 10,
                lengthChange: true,
                order: [[0, 'desc']],
            });
        });
    </script>
@endpush
