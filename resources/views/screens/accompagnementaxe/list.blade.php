@extends('platform::app')

@section('title', 'Liste des axes d\'accompagnement')

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
                                <th class="px-3 py-2">Titre</th>
                                <th class="px-3 py-2">Module de diagnostic</th>
                                <th class="px-3 py-2">Description</th>
                                <th class="px-3 py-2">Spotlight</th>
                                <th class="px-3 py-2">État</th>
                                <th class="px-3 py-2 text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($accompagnementaxes as $accompagnementaxe)
                                <tr>
                                    <td class="px-3 py-2">{{ $accompagnementaxe->id }}</td>
                                    <td class="px-3 py-2">{{ $accompagnementaxe->titre }}</td>
                                    <td class="px-3 py-2">
                                        @if ($accompagnementaxe->diagnosticmodule)
                                            {{ $accompagnementaxe->diagnosticmodule->titre }}
                                        @endif
                                    </td>
                                    <td class="px-3 py-2">
                                        {{ \Illuminate\Support\Str::limit(strip_tags($accompagnementaxe->description), 100) }}
                                    </td>
                                    <td class="px-3 py-2">
                                        <form method="POST" action="{{ route('platform.accompagnementaxe.toggleSpotlight') }}">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $accompagnementaxe->id }}">
                                            <button type="submit" class="btn btn-secondary btn-sm">
                                                {{ $accompagnementaxe->spotlight ? '✅' : '❌' }}
                                            </button>
                                        </form>
                                    </td>
                                    <td class="px-3 py-2">
                                        <form method="POST" action="{{ route('platform.accompagnementaxe.toggleEtat') }}">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $accompagnementaxe->id }}">
                                            <button type="submit" class="btn btn-secondary btn-sm">
                                                {{ $accompagnementaxe->etat ? '✅' : '❌' }}
                                            </button>
                                        </form>
                                    </td>
                                    <td class="px-3 py-2 text-end">
                                        <a href="{{ route('platform.accompagnementaxe.show', $accompagnementaxe->id) }}" class="btn btn-info btn-sm">
                                            🔍 Détail
                                        </a>
                                        
                                        <a href="{{ route('platform.accompagnementaxe.edit', $accompagnementaxe->id) }}" class="btn btn-warning btn-sm">
                                            ✏️ Modifier
                                        </a>
                                        
                                        <form method="POST" action="{{ route('platform.accompagnementaxe.delete') }}" style="display:inline-block">
                                            @csrf
                                            <input type="hidden" name="accompagnementaxe" value="{{ $accompagnementaxe->id }}">
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
