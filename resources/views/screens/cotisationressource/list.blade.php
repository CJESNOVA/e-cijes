@extends('platform::layouts.default')

@section('title')
    Paiements des cotisations
@stop

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Paiements des cotisations</h3>
                        <div class="card-tools">
                            <a href="{{ route('platform.cotisationressource.edit') }}" class="btn btn-primary btn-sm">
                                <i class="fas fa-plus"></i> Créer un paiement
                            </a>
                        </div>
                    </div>
                    <div class="card-body">
                        @if($cotisationressources->count() > 0)
                            <div class="table-responsive">
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Montant</th>
                                            <th>Référence</th>
                                            <th>Cotisation</th>
                                            <th>Membre</th>
                                            <th>Entreprise</th>
                                            <th>Statut</th>
                                            <th>Spotlight</th>
                                            <th>État</th>
                                            <th>Créé le</th>
                                            <th>Modifié le</th>
                                            <th class="text-end">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($cotisationressources as $cotisationressource)
                                            <tr>
                                                <td>{{ $cotisationressource->id }}</td>
                                                <td>{{ $cotisationressource->montant }}</td>
                                                <td>{{ $cotisationressource->reference }}</td>
                                                <td>
                                                    @if ($cotisationressource->cotisation_id > 0)
                                                        {{ $cotisationressource->cotisation->reference ?? '' }}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($cotisationressource->membre_id > 0)
                                                        {{ $cotisationressource->membre->nom_complet ?? '' }}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($cotisationressource->entreprise_id > 0)
                                                        {{ $cotisationressource->entreprise->nom ?? '' }}
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($cotisationressource->paiementstatut_id > 0)
                                                        {{ $cotisationressource->paiementstatut->titre ?? '' }}
                                                    @endif
                                                </td>
                                                <td>{{ $cotisationressource->spotlight ? '✅' : '❌' }}</td>
                                                <td>{{ $cotisationressource->etat ? '✅' : '❌' }}</td>
                                                <td>{{ $cotisationressource->created_at->format('d/m/Y H:i') }}</td>
                                                <td>{{ $cotisationressource->updated_at->format('d/m/Y H:i') }}</td>
                                                <td class="text-end">
                                                    <a href="{{ route('platform.cotisationressource.show', $cotisationressource) }}" class="btn btn-sm btn-info">
                                                        <i class="fas fa-eye"></i> Voir
                                                    </a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            
                            <div class="d-flex justify-content-center">
                                {{ $cotisationressources->links() }}
                            </div>
                        @else
                            <div class="alert alert-info">
                                <i class="fas fa-info-circle"></i> Aucun paiement de cotisation trouvé.
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop
