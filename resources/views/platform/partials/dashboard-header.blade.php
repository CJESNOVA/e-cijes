<!-- En-tête du Dashboard -->
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <div class="d-flex align-items-center">
        <h1 class="h2 mb-0">
            <i class="bi bi-speedometer2 text-primary me-2"></i>
            {{ $name }}
        </h1>
    </div>
    <div class="btn-toolbar mb-2 mb-md-0">
        <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary" onclick="location.reload()">
                <i class="bi bi-arrow-clockwise"></i> Actualiser
            </button>
            <button type="button" class="btn btn-sm btn-outline-secondary" onclick="window.print()">
                <i class="bi bi-printer"></i> Imprimer
            </button>
        </div>
        <div class="btn-group">
            <button type="button" class="btn btn-sm btn-primary" onclick="exportDashboard()">
                <i class="bi bi-download"></i> Exporter
            </button>
        </div>
    </div>
</div>

<!-- Description -->
@if(isset($description))
<div class="alert alert-info border-0 shadow-sm mb-4" role="alert">
    <i class="bi bi-info-circle-fill me-2"></i>
    {{ $description }}
</div>
@endif

<!-- Date et heure de dernière mise à jour -->
<div class="text-muted small mb-4">
    <i class="bi bi-clock me-1"></i>
    Dernière mise à jour : {{ now()->format('d/m/Y H:i:s') }}
</div>

@push('scripts')
<script>
function exportDashboard() {
    // Créer un export CSV des statistiques principales
    const stats = {
        membres: {{ $stats['membres'] ?? 0 }},
        entreprises: {{ $stats['entreprises'] ?? 0 }},
        diagnostics: {{ $stats['diagnostics'] ?? 0 }},
        accompagnements: {{ $stats['accompagnements'] ?? 0 }},
        formations: {{ $stats['formations'] ?? 0 }},
        experts: {{ $stats['experts'] ?? 0 }}
    };
    
    let csv = "Catégorie,Nombre\n";
    Object.entries(stats).forEach(([key, value]) => {
        csv += `${key},${value}\n`;
    });
    
    const blob = new Blob([csv], { type: 'text/csv' });
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `dashboard-stats-${new Date().toISOString().split('T')[0]}.csv`;
    a.click();
    window.URL.revokeObjectURL(url);
}
</script>
@endpush
