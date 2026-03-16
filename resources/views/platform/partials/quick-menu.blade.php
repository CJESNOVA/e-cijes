<!-- Menu rapide -->
<div class="card border-0 shadow-sm">
    <div class="card-header bg-white border-0">
        <h6 class="mb-0">
            <i class="bi bi-lightning-fill text-warning me-2"></i>
            Accès Rapide
        </h6>
    </div>
    <div class="card-body p-0">
        <div class="list-group list-group-flush">
            <a href="{{ route('platform.membre.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-person-fill text-primary me-2"></i>
                Gérer les Membres
            </a>
            <a href="{{ route('platform.entreprise.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-building-fill text-success me-2"></i>
                Gérer les Entreprises
            </a>
            <a href="{{ route('platform.diagnostic.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-clipboard-data text-info me-2"></i>
                Voir les Diagnostics
            </a>
            <a href="{{ route('platform.accompagnement.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-heart-fill text-danger me-2"></i>
                Accompagnements
            </a>
            <a href="{{ route('platform.formation.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-book-fill text-warning me-2"></i>
                Formations
            </a>
            <a href="{{ route('platform.expert.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-person-badge-fill text-purple me-2"></i>
                Experts
            </a>
            <a href="{{ route('platform.evenement.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-calendar-event-fill text-indigo me-2"></i>
                Évènements
            </a>
            <a href="{{ route('platform.quiz.list') }}" class="list-group-item list-group-item-action quick-menu-item border-0 px-3 py-2">
                <i class="bi bi-controller text-teal me-2"></i>
                Quiz
            </a>
        </div>
    </div>
</div>
