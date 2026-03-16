<!-- Cartes de statistiques principales -->
<div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-primary bg-opacity-10 text-primary me-3">
                        <i class="bi bi-people-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Membres</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ $stats['membres'] }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-success bg-opacity-10 text-success me-3">
                        <i class="bi bi-building-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Entreprises</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ $stats['entreprises'] }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-info bg-opacity-10 text-info me-3">
                        <i class="bi bi-clipboard-check-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Diagnostics</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ $stats['diagnostics'] }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-warning bg-opacity-10 text-warning me-3">
                        <i class="bi bi-hand-thumbs-up-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Accompagnements</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ $stats['accompagnements'] }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-danger bg-opacity-10 text-danger me-3">
                        <i class="bi bi-mortarboard-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Formations</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ $stats['formations'] }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-purple bg-opacity-10 text-purple me-3">
                        <i class="bi bi-person-badge-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Experts</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ $stats['experts'] }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-teal bg-opacity-10 text-teal me-3">
                        <i class="bi bi-controller fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Quiz</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ \App\Models\Quiz::count() }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card dashboard-card border-0 shadow-sm">
            <div class="card-body">
                <div class="d-flex align-items-center">
                    <div class="stat-icon bg-indigo bg-opacity-10 text-indigo me-3">
                        <i class="bi bi-calendar-event-fill fs-4"></i>
                    </div>
                    <div>
                        <h6 class="text-muted mb-1">Évènements</h6>
                        <h3 class="mb-0 stat-counter" data-target="{{ \App\Models\Evenement::count() }}">0</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
