<!-- Activités récentes -->
<div class="card border-0 shadow-sm">
    <div class="card-header bg-white border-0">
        <h6 class="mb-0">
            <i class="bi bi-clock-history text-primary me-2"></i>
            Activités Récentes
        </h6>
    </div>
    <div class="card-body p-0">
        <div class="activity-feed">
            <!-- Diagnostics récents -->
            @foreach($recent_diagnostics as $diagnostic)
            <div class="activity-item p-3 border-bottom">
                <div class="d-flex align-items-start">
                    <div class="me-2">
                        <i class="bi bi-clipboard-check text-info"></i>
                    </div>
                    <div class="flex-grow-1">
                        <small class="text-muted">{{ $diagnostic->created_at->diffForHumans() }}</small>
                        <div class="fw-semibold">Nouveau diagnostic</div>
                        <div class="text-muted small">
                            {{ $diagnostic->membre->nom_complet ?? 'Membre inconnu' }}
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            
            <!-- Accompagnements récents -->
            @foreach($recent_accompagnements as $accompagnement)
            <div class="activity-item p-3 border-bottom">
                <div class="d-flex align-items-start">
                    <div class="me-2">
                        <i class="bi bi-heart-fill text-danger"></i>
                    </div>
                    <div class="flex-grow-1">
                        <small class="text-muted">{{ $accompagnement->created_at->diffForHumans() }}</small>
                        <div class="fw-semibold">Nouvel accompagnement</div>
                        <div class="text-muted small">
                            {{ $accompagnement->membre->nom_complet ?? 'Membre inconnu' }}
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
