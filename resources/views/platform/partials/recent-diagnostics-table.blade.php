<!-- Tableau des diagnostics récents -->
<div class="card border-0 shadow-sm">
    <div class="card-header bg-white border-0 d-flex justify-content-between align-items-center">
        <h6 class="mb-0">
            <i class="bi bi-clipboard-data text-info me-2"></i>
            Diagnostics Récents
        </h6>
        <a href="{{ route('platform.diagnostic.list') }}" class="btn btn-sm btn-outline-primary">
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
                        <th>Score</th>
                        <th>Statut</th>
                        <th>Date</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($recent_diagnostics as $diagnostic)
                    <tr>
                        <td>{{ $diagnostic->id }}</td>
                        <td>
                            @if($diagnostic->membre)
                                {{ $diagnostic->membre->nom_complet }}
                            @else
                                <span class="text-muted">Non associé</span>
                            @endif
                        </td>
                        <td>
                            <span class="badge bg-{{ $diagnostic->scoreglobal > 70 ? 'success' : ($diagnostic->scoreglobal > 40 ? 'warning' : 'danger') }}">
                                {{ $diagnostic->scoreglobal }}%
                            </span>
                        </td>
                        <td>
                            @if($diagnostic->diagnosticstatut)
                                <span class="badge bg-info">{{ $diagnostic->diagnosticstatut->titre }}</span>
                            @endif
                        </td>
                        <td>{{ $diagnostic->created_at->format('d/m/Y') }}</td>
                        <td>
                            <a href="{{ route('platform.diagnostic.edit', $diagnostic) }}" class="btn btn-sm btn-outline-primary">
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
