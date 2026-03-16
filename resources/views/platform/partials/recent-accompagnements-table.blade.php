<!-- Tableau des accompagnements récents -->
<div class="card border-0 shadow-sm">
    <div class="card-header bg-white border-0 d-flex justify-content-between align-items-center">
        <h6 class="mb-0">
            <i class="bi bi-heart-fill text-danger me-2"></i>
            Accompagnements Récents
        </h6>
        <a href="{{ route('platform.accompagnement.list') }}" class="btn btn-sm btn-outline-primary">
            Voir tout
        </a>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Membre</th>
                        <th>Niveau</th>
                        <th>Statut</th>
                        <th>Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($recent_accompagnements as $accompagnement)
                    <tr>
                        <td>{{ $accompagnement->id }}</td>
                        <td>
                            @if($accompagnement->membre)
                                {{ $accompagnement->membre->nom_complet }}
                            @else
                                <span class="text-muted">Non associé</span>
                            @endif
                        </td>
                        <td>
                            @if($accompagnement->accompagnementniveau)
                                <span class="badge bg-secondary">{{ $accompagnement->accompagnementniveau->titre }}</span>
                            @endif
                        </td>
                        <td>
                            @if($accompagnement->accompagnementstatut)
                                <span class="badge bg-{{ $accompagnement->accompagnementstatut->titre == 'En cours' ? 'warning' : ($accompagnement->accompagnementstatut->titre == 'Terminé' ? 'success' : 'info') }}">
                                    {{ $accompagnement->accompagnementstatut->titre }}
                                </span>
                            @endif
                        </td>
                        <td>{{ $accompagnement->created_at->format('d/m/Y') }}</td>
                        <td>
                            <a href="{{ route('platform.accompagnement.edit', $accompagnement) }}" class="btn btn-sm btn-outline-primary">
                                <i class="bi bi-eye"></i>
                            </a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
