@extends('platform::dashboard')

@section('title')
    Tableau de Bord - CIJES
@endsection

@section('description')
    Vue d'ensemble complète de la plateforme CIJES
@endsection

@section('content')
<div class="row mb-4">
    <!-- Cartes de statistiques principales -->
    @include('platform.partials.stats-cards')
</div>

<div class="row mb-4">
    <div class="col-md-8">
        <!-- Graphique des diagnostics -->
        @include('platform.partials.diagnostics-chart')
    </div>
    <div class="col-md-4">
        <!-- Menu rapide -->
        @include('platform.partials.quick-menu')
    </div>
</div>

<div class="row mb-4">
    <div class="col-md-6">
        <!-- Activités récentes -->
        @include('platform.partials.recent-activities')
    </div>
    <div class="col-md-6">
        <!-- Statistiques des accompagnements -->
        @include('platform.partials.accompagnement-stats')
    </div>
</div>

<div class="row">
    <div class="col-12">
        <!-- Tableau des diagnostics récents -->
        @include('platform.partials.recent-diagnostics-table')
    </div>
</div>

<div class="row mt-4">
    <div class="col-12">
        <!-- Tableau des accompagnements récents -->
        @include('platform.partials.recent-accompagnements-table')
    </div>
</div>
@endsection

@push('styles')
<style>
.dashboard-card {
    transition: transform 0.2s ease-in-out;
}
.dashboard-card:hover {
    transform: translateY(-2px);
}
.stat-icon {
    width: 48px;
    height: 48px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 12px;
}
.quick-menu-item {
    transition: all 0.2s ease-in-out;
    border-left: 4px solid transparent;
}
.quick-menu-item:hover {
    background-color: #f8f9fa;
    border-left-color: #667eea;
    transform: translateX(4px);
}
.activity-item {
    border-left: 3px solid #e9ecef;
    transition: all 0.2s ease-in-out;
}
.activity-item:hover {
    border-left-color: #667eea;
    background-color: #f8f9fa;
}
</style>
@endpush

@push('scripts')
<script>
// Animation des compteurs
document.addEventListener('DOMContentLoaded', function() {
    const counters = document.querySelectorAll('.stat-counter');
    counters.forEach(counter => {
        const target = parseInt(counter.getAttribute('data-target'));
        const increment = target / 100;
        let current = 0;
        
        const updateCounter = () => {
            if (current < target) {
                current += increment;
                counter.textContent = Math.ceil(current);
                setTimeout(updateCounter, 10);
            } else {
                counter.textContent = target;
            }
        };
        updateCounter();
    });
});
</script>
@endpush
