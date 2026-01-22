@extends('platform::app')

@section('title', 'Liste des propositions')

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
                                <th class="px-3 py-2">Membre</th>
                                <th class="px-3 py-2">Expert</th>
                                <th class="px-3 py-2">Prestation</th>
                                <th class="px-3 py-2">Plan</th>
                                <th class="px-3 py-2">Accompagnement</th>
                                <th class="px-3 py-2">Prix</th>
                                <th class="px-3 py-2">Statut</th>
                                <th class="px-3 py-2">Spotlight</th>
                                <th class="px-3 py-2">État</th>
                                <th class="px-3 py-2 text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($propositions as $proposition)
                                <tr>
                                    <td class="px-3 py-2">{{ $proposition->id }}</td>
                                    <td class="px-3 py-2">
                                        @if ($proposition->membre_id > 0)
                                            {{ $proposition->membre->nom_complet ?? '' }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($proposition->expert_id > 0)
                                            {{ $proposition->expert->domaine ?? '' }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($proposition->prestation_id > 0)
                                            {{ $proposition->prestation->titre ?? '' }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($proposition->plan_id > 0)
                                            {{ $proposition->plan->objectif ?? '' }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        @if ($proposition->accompagnement_id > 0)
                                            {{ $proposition->accompagnement->titre ?? '' }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">{{ $proposition->prix_propose ?? '—' }}</td>
                                    <td class="px-3 py-2">
                                        @if ($proposition->propositionstatut_id > 0)
                                            {{ $proposition->propositionstatut->titre ?? '' }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        <form method="POST" action="{{ route('platform.proposition.toggleSpotlight') }}">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $proposition->id }}">
                                            <button type="submit" class="btn btn-secondary btn-sm">
                                                {{ $proposition->spotlight ? '✅' : '❌' }}
                                            </button>
                                        </form>
                                    </td>
                                    <td class="px-3 py-2">
                                        <form method="POST" action="{{ route('platform.proposition.toggleEtat') }}">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $proposition->id }}">
                                            <button type="submit" class="btn btn-secondary btn-sm">
                                                {{ $proposition->etat ? '✅' : '❌' }}
                                            </button>
                                        </form>
                                    </td>
                                    <td class="px-3 py-2 text-end">
                                        <a href="{{ route('platform.proposition.show', $proposition->id) }}" class="btn btn-info btn-sm">
                                            🔍 Détail
                                        </a>
                                        
                                        <a href="{{ route('platform.proposition.edit', $proposition->id) }}" class="btn btn-warning btn-sm">
                                            ✏️ Modifier
                                        </a>
                                        
                                        <form method="POST" action="{{ route('platform.proposition.delete') }}" style="display:inline-block">
                                            @csrf
                                            <input type="hidden" name="proposition" value="{{ $proposition->id }}">
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
