<!-- Graphique des diagnostics -->
<div class="card border-0 shadow-sm">
    <div class="card-header bg-white border-0">
        <h6 class="mb-0">
            <i class="bi bi-graph-up text-info me-2"></i>
            Statistiques des Diagnostics
        </h6>
    </div>
    <div class="card-body">
        <canvas id="diagnosticsChart" width="400" height="200"></canvas>
    </div>
</div>

@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    const ctx = document.getElementById('diagnosticsChart').getContext('2d');
    
    const diagnosticsData = @json($diagnostics_stats->map(function($item) {
        return ['statut' => $item->statut, 'count' => $item->count];
    }));
    
    const diagnosticsChart = new Chart(ctx, {
        type: 'doughnut',
        data: {
            labels: diagnosticsData.map(item => item.statut),
            datasets: [{
                data: diagnosticsData.map(item => item.count),
                backgroundColor: [
                    '#667eea',
                    '#764ba2',
                    '#f093fb',
                    '#f5576c',
                    '#4facfe'
                ],
                borderWidth: 0
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    position: 'bottom',
                    labels: {
                        padding: 15,
                        font: {
                            size: 11
                        }
                    }
                }
            }
        }
    });
});
</script>
@endpush
