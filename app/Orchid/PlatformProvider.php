<?php

declare(strict_types=1);

namespace App\Orchid;

use Orchid\Platform\Dashboard;
use Orchid\Platform\ItemPermission;
use Orchid\Platform\OrchidServiceProvider;
use Orchid\Screen\Actions\Menu;
use Orchid\Support\Color;

class PlatformProvider extends OrchidServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @param Dashboard $dashboard
     *
     * @return void
     */
    public function boot(Dashboard $dashboard): void
    {
        parent::boot($dashboard);

        // Configuration simplifiée pour un meilleur comportement du menu
        $dashboard->configure([
            'menu' => [
                'filter' => null,
                'sort' => null,
                'display' => true,
                'search' => false,
            ],
        ]);
    }

    /**
     * Register the application menu.
     *
     * @return Menu[]
     */
    public function menu(): array
    {
        return [
            /*Menu::make('Get Started')
                ->icon('bs.book')
                ->title('Navigation')
                ->route(config('platform.index')),

            Menu::make('Sample Screen')
                ->icon('bs.collection')
                ->route('platform.example')
                ->badge(fn () => 6),

            Menu::make('Form Elements')
                ->icon('bs.card-list')
                ->route('platform.example.fields')
                ->active('examples/form'),

            Menu::make('Layouts Overview')
                ->icon('bs.window-sidebar')
                ->route('platform.example.layouts'),

            Menu::make('Grid System')
                ->icon('bs.columns-gap')
                ->route('platform.example.grid'),

            Menu::make('Charts')
                ->icon('bs.bar-chart')
                ->route('platform.example.charts'),

            Menu::make('Cards')
                ->icon('bs.card-text')
                ->route('platform.example.cards')
                ->divider(),*/

            Menu::make(__('Users'))
                ->icon('bs.people')
                ->route('platform.systems.users')
                ->permission('platform.systems.users')
                ->title(__('Access Controls')),

            Menu::make(__('Roles'))
                ->icon('bs.shield')
                ->route('platform.systems.roles')
                ->permission('platform.systems.roles')
                ->divider(),

            /*Menu::make('Documentation')
                ->title('Docs')
                ->icon('bs.box-arrow-up-right')
                ->url('https://orchid.software/en/docs')
                ->target('_blank'),

            Menu::make('Changelog')
                ->icon('bs.box-arrow-up-right')
                ->url('https://github.com/orchidsoftware/platform/blob/master/CHANGELOG.md')
                ->target('_blank')
                ->badge(fn () => Dashboard::version(), Color::DARK),*/


            Menu::make('Décentralisation')
                ->icon('bs.bag')
                ->list([
        Menu::make('Pays')->route('platform.pays.list'),
        Menu::make('Régions')->route('platform.region.list'),
        Menu::make('Préfectures')->route('platform.prefecture.list'),
        Menu::make('Communes')->route('platform.commune.list'),
        Menu::make('Quartiers')->route('platform.quartier.list'),
                ]),

            Menu::make('Modules du site')
                ->icon('bs-globe')
                ->list([
        Menu::make('Contenu')
            ->icon('bs-file-text')
            ->list([
                Menu::make('Pages de présentation')->icon('bs-file-earmark-text')->route('platform.pagelibre.list'),
                Menu::make('Actualités')->icon('bs-newspaper')->route('platform.actualite.list'),
                Menu::make('Types d\'actualités')->icon('bs-journal-text')->route('platform.actualitetype'),
                Menu::make('Témoignages')->icon('bs-chat-quote-fill')->route('platform.temoignage.list'),
                Menu::make('Contacts')->icon('bs-envelope-fill')->route('platform.contact.list'),
                Menu::make('Types de contacts')->icon('bs-telephone-fill')->route('platform.contacttype'),
                Menu::make('Commentaires')->icon('bs-chat-dots')->route('platform.commentaire.list'),
                Menu::make('FAQs')->icon('bs-question-circle')->route('platform.faq.list'),
            ]),
        Menu::make('Médias')
            ->icon('bs-images')
            ->list([
                Menu::make('Sliders')->icon('bs-images')->route('platform.slider.list'),
                Menu::make('Types de sliders')->icon('bs-aspect-ratio')->route('platform.slidertype'),
                Menu::make('Services')->icon('bs-gear-fill')->route('platform.service.list'),
                Menu::make('Chiffres clés')->icon('bs-graph-up')->route('platform.chiffre.list'),
            ]),
        Menu::make('Partenaires')
            ->icon('bs-handshake')
            ->list([
                Menu::make('Partenaires')->icon('bs-handshake-fill')->route('platform.partenaire.list'),
                Menu::make('Types de partenaires')->icon('bs-tags')->route('platform.partenairetype'),
                Menu::make('Types d\'activités des partenaires')->icon('bs-briefcase-fill')->route('platform.partenaireactivitetype'),
            ]),
                ]),

            Menu::make('Membres & entreprises')
                ->icon('bs.people')
                ->list([
        Menu::make('Membres')->icon('bs-person')->route('platform.membre.list'),
        Menu::make('Documents')->icon('bs-file-earmark')->route('platform.document.list'),
        Menu::make('Pièces')->icon('bs-file-earmark-text')->route('platform.piece.list'),
        Menu::make('Types de membres')->icon('bs-tags')->route('platform.membretype'),
        Menu::make('Catégories de membres')->icon('bs-layers')->route('platform.membrecategorie'),
        Menu::make('Statuts de membres')->icon('bs-flag')->route('platform.membrestatut'),
        Menu::make('Entreprises')->icon('bs-building')->route('platform.entreprise.list'),
        Menu::make('Membres de l\'entreprise')->icon('bs-people-fill')->route('platform.entreprisemembre.list'),
        Menu::make('Types d\'entreprises')->icon('bs-tags-fill')->route('platform.entreprisetype'),
        Menu::make('Profils d\'entreprises')->icon('bs-diagram-3')->route('platform.entrepriseprofil'),
        Menu::make('Cotisations')->icon('bs-currency-dollar')->route('platform.cotisation.list'),
        Menu::make('Paiements des cotisations')->icon('bs-credit-card')->route('platform.cotisationressource.list'),
        Menu::make('Types de cotisations')->icon('bs-receipt')->route('platform.cotisationtype'),
                ]),

            Menu::make('Diagnostics')
                ->icon('bs.clipboard-check')
                ->list([
        Menu::make('Diagnostics')->icon('bs-clipboard-data')->route('platform.diagnostic.list'),
        Menu::make('Résultats des diagnostics')->icon('bs-clipboard-check')->route('platform.diagnosticresultat.list'),
        Menu::make('Statuts des diagnostics')->icon('bs-flag')->route('platform.diagnosticstatut'),
        Menu::make('Profil émotionnel')->icon('bs-heart')->route('platform.diagnostictype'),
        Menu::make('Modules des diagnostics')->icon('bs-layers')->route('platform.diagnosticmodule.list'),
        Menu::make('Scores des modules')->icon('bs-graph-up')->route('platform.diagnosticmodulescore.list'),
        Menu::make('Types des modules du diagnostic')->icon('bs-tags')->route('platform.diagnosticmoduletype'),
        Menu::make('Questions des diagnostics')->icon('bs-question-circle')->route('platform.diagnosticquestion.list'),
        Menu::make('Réponses des diagnostics')->icon('bs-chat-dots')->route('platform.diagnosticreponse.list'),
        Menu::make('Types des questions du diagnostic')->icon('bs-tags-fill')->route('platform.diagnosticquestiontype'),
        Menu::make('Categories des questions du diagnostic')->icon('bs-folder')->route('platform.diagnosticquestioncategorie'),
                ]),

            Menu::make('Accompagnements')
                ->icon('bs.hand-thumbs-up')
                ->list([
        Menu::make('Accompagnements')->icon('bs-heart')->route('platform.accompagnement.list'),
        Menu::make('Statuts d\'accompagnements')->icon('bs-flag')->route('platform.accompagnementstatut'),
        Menu::make('Types d\'accompagnements')->icon('bs-tags')->route('platform.accompagnementtype'),
        Menu::make('Niveaux d\'accompagnements')->icon('bs-layers')->route('platform.accompagnementniveau'),
        Menu::make('Axes d\'accompagnement')->icon('bs-diagram-3')->route('platform.accompagnementaxe.list'),
        Menu::make('Plans templates')->icon('bs-clipboard-data')->route('platform.plantemplate.list'),
        Menu::make('Plans d\'accompagnements')->icon('bs-clipboard-check')->route('platform.plan.list'),
        Menu::make('Documents d\'accompagnement')->icon('bs-file-earmark-text')->route('platform.accompagnementdocument.list'),
        Menu::make('Propositions')->icon('bs-chat-square-text')->route('platform.proposition.list'),
        Menu::make('Statuts des propositions')->icon('bs-flag-fill')->route('platform.propositionstatut.list'),
        Menu::make('Suivis')->icon('bs-arrow-repeat')->route('platform.suivi.list'),
        Menu::make('Statuts de suivis')->icon('bs-bookmark')->route('platform.suivistatut'),
        Menu::make('Types de suivis')->icon('bs-tags-fill')->route('platform.suivitype'),
                ]),

            Menu::make('Prestations & formations')
                ->icon('bs-mortarboard-fill')
                ->list([
        Menu::make('Prestations')->icon('bs-briefcase-fill')->route('platform.prestation.list'),
        Menu::make('Prestations realisées')->icon('bs-check-circle')->route('platform.prestationrealisee.list'),
        Menu::make('Types de prestations')->icon('bs-tags')->route('platform.prestationtype'),
        Menu::make('Statuts de la prestation realisée')->icon('bs-flag')->route('platform.prestationrealiseestatut'),
        Menu::make('Paiements des prestations')->icon('bs-credit-card-fill')->route('platform.prestationressource.list'),
        Menu::make('Statuts du paiement')->icon('bs-credit-card-2-back')->route('platform.paiementstatut'),
        Menu::make('Types de paiement')->icon('bs-credit-card-2-front-fill')->route('platform.ressourcetypeoffretype.list'),
        Menu::make('Formations')->icon('bs-book-fill')->route('platform.formation.list'),
        Menu::make('Participants')->icon('bs-people-fill')->route('platform.participant.list'),
        Menu::make('Paiements des formations')->icon('bi-cash-stack')->route('platform.formationressource.list'),
        Menu::make('Types des formations')->icon('bs-tags-fill')->route('platform.formationtype'),
        Menu::make('Niveaux des formations')->icon('bs-layers-fill')->route('platform.formationniveau'),
        Menu::make('Statuts des participants')->icon('bs-person-check-fill')->route('platform.participantstatut'),
                ]),

            Menu::make('Ressources & Finances')
                ->icon('bs-wallet2')
                ->list([
        Menu::make('Ressources')->icon('bs-wallet-fill')->route('platform.ressourcecompte.list'),
        Menu::make('Transactions des ressources')->icon('bs-arrow-left-right')->route('platform.ressourcetransaction.list'),
        Menu::make('Conversions')->icon('bs-arrow-repeat')->route('platform.conversion.list'),
        Menu::make('Types de ressources')->icon('bs-tags')->route('platform.ressourcetype'),
        Menu::make('Crédits')->icon('bs-cash-stack')->route('platform.credit.list'),
        Menu::make('Echéanciers des crédits')->icon('bs-calendar3')->route('platform.echeancier.list'),
        Menu::make('Types de credits')->icon('bs-tags-fill')->route('platform.credittype'),
        Menu::make('Statuts de crédit')->icon('bs-flag-fill')->route('platform.creditstatut'),
        Menu::make('Statuts d\'échéanciers')->icon('bs-calendar-check')->route('platform.echeancierstatut'),
        Menu::make('Bons')->icon('bs-ticket-fill')->route('platform.bon.list'),
        Menu::make('Bons utilisés')->icon('bs-ticket-detailed-fill')->route('platform.bonutilise.list'),
        Menu::make('Types de bons')->icon('bs-tags')->route('platform.bontype'),
        Menu::make('Statuts de bons')->icon('bs-flag')->route('platform.bonstatut'),
        Menu::make('Types de réductions')->icon('bs-percent')->route('platform.reductiontype'),
        Menu::make('Parrainages')->icon('bs-people-fill')->route('platform.parrainage.list'),
                ]),

            Menu::make('Messagerie & Communication')
                ->icon('bs-chat-dots')
                ->list([
        Menu::make('Forums')->icon('bs-chat-square-fill')->route('platform.forum.list'),
        Menu::make('Sujets')->icon('bs-chat-left-quote-fill')->route('platform.sujet.list'),
        Menu::make('Messages des forums')->icon('bs-chat-dots-fill')->route('platform.messageforum.list'),
        Menu::make('Types de forums')->icon('bs-tags')->route('platform.forumtype'),
        Menu::make('Conversations')->icon('bs-chat-square-dots')->route('platform.conversation.list'),
        Menu::make('Messages')->icon('bs-envelope-fill')->route('platform.message.list'),
        Menu::make('Newsletters')->icon('bs-newspaper')->route('platform.newsletter.list'),
        Menu::make('Types des newsletters')->icon('bs-journal-text')->route('platform.newslettertype'),
                ]),

            Menu::make('Experts & Conseillers')
                ->icon('bs-award')
                ->list([
        Menu::make('Experts')->icon('bs-person-badge-fill')->route('platform.expert.list'),
        Menu::make('Disponibilités des experts')->icon('bs-calendar-check-fill')->route('platform.disponibilite.list'),
        Menu::make('Evaluations')->icon('bs-star-fill')->route('platform.evaluation.list'),
        Menu::make('Types d\'experts')->icon('bs-tags-fill')->route('platform.experttype'),
        Menu::make('Validation d\'experts')->icon('bs-check-circle-fill')->route('platform.expertvalide'),
        Menu::make('Conseillers')->icon('bs-person-check-fill')->route('platform.conseiller.list'),
        Menu::make('Types de conseillers')->icon('bs-tags')->route('platform.conseillertype'),
        Menu::make('Validation de conseillers')->icon('bs-shield-check')->route('platform.conseillervalide'),
        Menu::make('Attribution de conseillers')->icon('bs-person-plus-fill')->route('platform.conseillerentreprise.list'),
        Menu::make('Prescriptions des conseillers')->icon('bs-clipboard2-pulse-fill')->route('platform.conseillerprescription.list'),
        Menu::make('Conseillers des accompagnements')->icon('bs-people-fill')->route('platform.accompagnementconseiller.list'),
                ]),

            Menu::make('Espaces & Évènements')
                ->icon('bs-geo-alt')
                ->list([
        Menu::make('Espaces physiques')->icon('bs-house-fill')->route('platform.espace.list'),
        Menu::make('Réservations')->icon('bs-calendar-check')->route('platform.reservation.list'),
        Menu::make('Paiements des espaces')->icon('bs-credit-card-fill')->route('platform.espaceressource.list'),
        Menu::make('Types d\'espaces')->icon('bs-tags')->route('platform.espacetype'),
        Menu::make('Statuts de la réservation')->icon('bs-flag-fill')->route('platform.reservationstatut'),
        Menu::make('Évènements')->icon('bs-calendar-event-fill')->route('platform.evenement.list'),
        Menu::make('Paiements des évènements')->icon('bs-credit-card-2-front-fill')->route('platform.evenementressource.list'),
        Menu::make('Inscription à l\'évènement')->icon('bs-person-plus-fill')->route('platform.evenementinscription.list'),
        Menu::make('Types d\'évènements')->icon('bs-tags-fill')->route('platform.evenementtype'),
        Menu::make('Types d\'inscription à un évènement')->icon('bs-clipboard-check')->route('platform.evenementinscriptiontype'),
                ]),

            Menu::make('Autres modules')
                ->icon('bs-gear')
                ->list([
        Menu::make('Alertes')->icon('bs-exclamation-triangle-fill')->route('platform.alerte.list'),
                ]),

            Menu::make('Quiz & Gamification')
                ->icon('bs-controller')
                ->list([
        Menu::make('Quiz')->icon('bs-controller')->route('platform.quiz.list'),
        Menu::make('Question du quiz')->icon('bs-question-circle-fill')->route('platform.quizquestion.list'),
        Menu::make('Reponse du quiz')->icon('bs-chat-square-dots-fill')->route('platform.quizreponse.list'),
        Menu::make('Types des questions du quiz')->icon('bs-tags')->route('platform.quizquestiontype'),
        Menu::make('Resultats du membre du quiz')->icon('bs-person-rolodex')->route('platform.quizmembre.list'),
        Menu::make('Resultats du quiz')->icon('bs-trophy-fill')->route('platform.quizresultat.list'),
        Menu::make('Statuts des resultats du quiz')->icon('bs-flag')->route('platform.quizresultatstatut'),
        Menu::make('Actions')->icon('bs-lightning-fill')->route('platform.action.list'),
        Menu::make('Récompenses')->icon('bs-award-fill')->route('platform.recompense.list'),
                ]),

            Menu::make('Paramètres')
                ->icon('bs-gear')
                ->list([
                    // Éléments généraux et non classés
                    Menu::make('Secteurs')->icon('bs-diagram-3-fill')->route('platform.secteur'),
                    Menu::make('Langues')->icon('bs-translate')->route('platform.langue.list'),   
                    Menu::make('Jours')->icon('bs-calendar3')->route('platform.jour'),
                    
                    // Types et statuts restants
                    Menu::make('Types de pieces')->icon('bs-file-earmark')->route('platform.piecetype'),
                    Menu::make('Types de veilles')->icon('bs-eye-fill')->route('platform.veilletype'),
                    Menu::make('Types de documents')->icon('bs-file-earmark-text')->route('platform.documenttype'),
                    Menu::make('Types de recommandations')->icon('bs-star')->route('platform.recommandationtype'),
                    Menu::make('Types d\'alertes')->icon('bs-exclamation-triangle')->route('platform.alertetype'),
                    Menu::make('Types d\'opérations')->icon('bs-gear-fill')->route('platform.operationtype'),
                    Menu::make('Types d\'offres')->icon('bs-bag-fill')->route('platform.offretype'),
                    Menu::make('Origines des recommandations')->icon('bs-geo-alt-fill')->route('platform.recommandationorigine'),
                    Menu::make('Statuts des dossiers')->icon('bs-folder-fill')->route('platform.dossierstatut'),
                ]),

        ];
        
    }

    /**
     * Register permissions for the application.
     *
     * @return ItemPermission[]
     */
    public function permissions(): array
    {
        return [
            ItemPermission::group(__('System'))
                ->addPermission('platform.systems.roles', __('Roles'))
                ->addPermission('platform.systems.users', __('Users'))
                ->addPermission('platform.systems.management', __('System Management')),
        ];
    }
}
