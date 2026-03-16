@extends('platform::app')

@section('title', 'Liste des cotisations')

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
                                <th class="px-3 py-2">Type de cotisation</th>
                                <th class="px-3 py-2">Montant</th>
                                <th class="px-3 py-2">Montant payé</th>
                                <th class="px-3 py-2">Restant</th>
                                <th class="px-3 py-2">Échéance</th>
                                <th class="px-3 py-2">Statut</th>
                                <th class="px-3 py-2">À jour</th>
                                <th class="px-3 py-2 text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($cotisations as $cotisation)
                                <tr>
                                    <td class="px-3 py-2">{{ $cotisation->id }}</td>
                                    <td class="px-3 py-2">
                                        @if ($cotisation->entreprise)
                                            {{ $cotisation->entreprise->nom }}
                                        @else
                                            Non définie
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($cotisation->cotisationtype)
                                            {{ $cotisation->cotisationtype->titre }}
                                        @else
                                            Non défini
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ number_format($cotisation->montant, 2, ',', ' ') }} {{ $cotisation->devise_label }}
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ number_format($cotisation->montant_paye, 2, ',', ' ') }} {{ $cotisation->devise_label }}
                                    </td>
                                    <td class="px-3 py-2">
                                        <span class="{{ $cotisation->montant_restant > 0 ? 'text-danger' : 'text-success' }}">
                                            {{ number_format($cotisation->montant_restant, 2, ',', ' ') }} {{ $cotisation->devise_label }}
                                        </span>
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ $cotisation->date_echeance ? $cotisation->date_echeance->format('d/m/Y') : '—' }}
                                    </td>
                                    <td class="px-3 py-2">
                                        <span class="badge bg-{{ $cotisation->statut_color }} text-white">
                                            {{ $cotisation->statut_label }}
                                        </span>
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ $cotisation->est_a_jour ? '✅ Oui' : '❌ Non' }}
                                    </td>
                                    <td class="px-3 py-2 text-end">
                                        <a href="{{ route('platform.cotisation.show', $cotisation->id) }}" class="btn btn-info btn-sm">
                                            🔍 Détail
                                        </a>
                                        
                                        <a href="{{ route('platform.cotisation.edit', $cotisation->id) }}" class="btn btn-warning btn-sm">
                                            ✏️ Modifier
                                        </a>
                                        
                                        <form method="POST" action="{{ route('platform.cotisation.delete') }}" style="display:inline-block">
                                            @csrf
                                            <input type="hidden" name="cotisation" value="{{ $cotisation->id }}">
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
