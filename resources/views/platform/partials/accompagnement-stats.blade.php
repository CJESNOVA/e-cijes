<!-- Statistiques des accompagnements -->
<div class="card border-0 shadow-sm">
    <div class="card-header bg-white border-0">
        <h6 class="mb-0">
            <i class="bi bi-pie-chart-fill text-warning me-2"></i>
            Niveaux d'Accompagnements
        </h6>
    </div>
    <div class="card-body">
        <canvas id="accompagnementChart" width="400" height="200"></canvas>
    </div>
</div>

@push('scripts')
<script>
document.addEventListener('DOMContentLoaded', function() {
    const ctx = document.getElementById('accompagnementChart').getContext('2d');
    
    const accompagnementData = @json($accompagnement_niveaux->map(function($item) {
        return ['niveau' => $item->niveau, 'count' => $item->count];
    }));
    
    const accompagnementChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: accompagnementData.map(item => item.niveau),
            datasets: [{
                data: accompagnementData.map(item => item.count),
                backgroundColor: [
                    '#f093fb',
                    '#f5576c',
                    '#4facfe',
                    '#43e97b',
                    '#fa709a',
                    '#fee140'
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
