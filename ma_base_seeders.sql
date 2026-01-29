

INSERT INTO `accompagnementniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Diagnostic', 1, '2025-06-19 12:38:23', '2025-06-19 12:38:38');

INSERT INTO `accompagnementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:20:34', '2025-08-22 10:31:06'),
(2, 'Terminé', 1, '2025-08-22 21:25:32', '2025-08-22 21:25:32');

INSERT INTO `accompagnementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseil', 1, '2025-08-14 09:12:11', '2025-08-14 09:12:11');

INSERT INTO `actualitetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actualités CIJES', 1, '2025-07-25 07:52:12', '2025-07-25 07:52:12'),
(2, 'Événements & Formations', 1, '2025-07-25 07:52:25', '2025-07-25 07:52:25'),
(3, 'Conseils & Bonnes Pratiques', 1, '2025-07-25 07:52:49', '2025-07-25 07:52:49');

INSERT INTO `alertetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Alertes', 1, '2025-07-07 17:25:09', '2025-07-07 17:25:09'),
(2, 'Infos', 1, '2025-07-07 17:25:18', '2025-07-07 17:25:18');

INSERT INTO `bonstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-16 06:29:13', '2025-08-22 10:30:41');

INSERT INTO `bontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Bon d\'achat', 1, '2025-07-15 09:09:03', '2025-08-22 10:23:00');

INSERT INTO `conseillertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseiller CJES', 1, '2025-08-12 10:38:35', '2026-01-12 17:40:06');

INSERT INTO `conseillervalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-12 10:38:15', '2025-08-22 10:19:59'),
(2, 'Validé', 1, '2026-01-12 17:39:35', '2026-01-12 17:39:35');

INSERT INTO `cotisationtypes` (`id`, `titre`, `montant`, `entrepriseprofil_id`, `nombre_jours`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Mensuel', '2000.00', 1, 30, 1, '2026-01-06 14:33:46', '2026-01-12 17:41:38'),
(2, 'Annuel', '20000.00', 1, 365, 1, '2026-01-12 17:42:08', '2026-01-12 17:42:08'),
(3, 'Mensuel', '5000.00', 2, 30, 1, '2026-01-12 17:42:33', '2026-01-12 17:42:33'),
(4, 'Annuel', '50000.00', 2, 365, 1, '2026-01-12 17:42:50', '2026-01-12 17:42:50'),
(5, 'Mensuel', '10000.00', 3, 30, 1, '2026-01-12 17:43:13', '2026-01-12 17:43:13'),
(6, 'Annuel', '100000.00', 3, 365, 1, '2026-01-12 17:43:33', '2026-01-12 17:43:33');

INSERT INTO `creditstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 20:01:04', '2025-06-18 20:01:04');

INSERT INTO `diagnosticmoduletypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Tests psychotechniques', 1, '2025-08-13 13:04:35', '2026-01-12 17:30:11'),
(2, 'Niveaux de structuration', 1, '2025-08-13 13:04:48', '2026-01-12 17:29:50'),
(3, 'Tests de classification', 1, '2026-01-12 17:29:06', '2026-01-12 17:49:42');

INSERT INTO `diagnosticquestiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Choix unique', 1, '2025-07-29 12:55:21', '2025-07-29 12:55:21'),
(2, 'Choix multiple', 1, '2025-07-29 12:55:42', '2025-07-29 12:55:42');

INSERT INTO `diagnosticstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En cours', 1, '2025-08-22 10:27:32', '2025-08-22 10:27:32'),
(2, 'Validé', 1, '2025-08-22 10:29:11', '2025-08-22 10:29:11');

INSERT INTO `diagnostictypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Tests psychotechniques', 1, '2026-01-12 17:30:33', '2026-01-12 17:30:33'),
(2, 'Niveaux de structuration', 1, '2026-01-12 17:30:54', '2026-01-12 17:30:54'),
(3, 'Tests de classification', 1, '2026-01-12 17:31:08', '2026-01-12 17:49:06');

INSERT INTO `documenttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'identité', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:42'),
(2, 'Passeport', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:57'),
(3, 'Acte de naissance', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:17'),
(4, 'Certificat de nationalité', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:37');

INSERT INTO `entrepriseprofils` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Pépites', 1, '2026-01-06 14:24:40', '2026-01-06 14:24:40'),
(2, 'Emergeants', 1, '2026-01-06 14:25:15', '2026-01-06 14:25:15'),
(3, 'Elites', 1, '2026-01-06 14:25:29', '2026-01-06 14:25:40');

INSERT INTO `entreprisetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'SA', 1, '2025-06-18 21:29:26', '2025-06-18 21:29:26'),
(2, 'SARL', 1, '2025-06-18 21:29:41', '2025-06-18 21:29:41'),
(3, 'PME', 1, '2026-01-12 17:18:29', '2026-01-12 17:18:29'),
(4, 'Collectivité', 1, '2026-01-12 17:19:04', '2026-01-12 17:19:04');

INSERT INTO `espacetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Salle de conférence', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15'),
(2, 'Co-working', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15');

INSERT INTO `evenementinscriptiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 10:50:43', '2025-08-11 10:50:43'),
(2, 'Peut-être', 1, '2025-08-11 10:51:01', '2025-08-11 10:51:01'),
(3, 'Non', 1, '2025-08-11 10:51:09', '2025-08-11 10:51:09');

INSERT INTO `evenementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Séminaires', 1, '2025-08-11 09:48:25', '2025-08-11 09:48:25'),
(2, 'Colloques', 1, '2025-08-11 09:48:44', '2025-08-11 09:48:44'),
(3, 'Conférences de presse', 1, '2025-08-11 09:49:01', '2025-08-11 09:49:01');

INSERT INTO `experttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Expert', 1, '2025-07-09 13:06:16', '2025-07-09 13:06:16');

INSERT INTO `expertvalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-09 13:05:04', '2026-01-12 17:38:36'),
(2, 'Validé', 1, '2026-01-12 17:38:54', '2026-01-12 17:38:54');

INSERT INTO `formationniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Débutant', 1, '2025-08-11 14:37:30', '2025-08-22 10:18:48'),
(2, 'Intermédiaire', 1, '2025-08-22 10:18:38', '2025-08-22 10:18:38');

INSERT INTO `formationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Formation entreprenariat', 1, '2026-01-11 13:15:55', '2026-01-11 13:15:55'),
(2, 'Formation de structuration', 1, '2026-01-11 13:16:19', '2026-01-11 13:16:19');

INSERT INTO `forumtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Sujet sur l\'incubation', 1, '2025-08-05 19:06:23', '2025-08-22 10:22:18');

INSERT INTO `jours` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Lundi', 1, '2025-07-09 14:10:04', '2025-07-09 14:10:04'),
(2, 'Mardi', 1, '2025-07-09 14:10:14', '2025-07-09 14:10:14'),
(3, 'Mercredi', 1, '2025-08-22 10:19:05', '2025-08-22 10:19:05'),
(4, 'Jeudi', 1, '2025-08-22 10:19:14', '2025-08-22 10:19:14'),
(5, 'Vendredi', 1, '2025-08-22 10:19:24', '2025-08-22 10:19:24'),
(6, 'Samedi', 1, '2025-08-22 10:19:33', '2025-08-22 10:19:33'),
(7, 'Dimanche', 1, '2025-08-22 10:19:42', '2025-08-22 10:19:42');

INSERT INTO `membrecategories` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Entrepreneur', 1, '2026-01-06 14:30:45', '2026-01-06 14:30:45'),
(2, 'Expert', 1, '2026-01-06 14:30:59', '2026-01-06 14:30:59'),
(3, 'Conseiller', 1, '2026-01-12 17:22:51', '2026-01-12 17:22:51');

INSERT INTO `membrestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 12:48:49', '2025-06-18 13:06:40'),
(3, 'Actif', 1, '2025-06-18 12:50:17', '2025-06-18 16:11:02');

INSERT INTO `membretypes` (`id`, `titre`, `membrecategorie_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Entrepreneur', 1, 1, '2025-07-04 20:06:55', '2026-01-12 17:24:46'),
(2, 'Expert', 2, 1, '2025-07-04 20:07:17', '2026-01-12 17:25:30'),
(3, 'Conseiller CJES', 1, 1, '2025-07-04 20:07:36', '2026-01-12 17:26:19');

INSERT INTO `newslettertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Newsletter', 1, '2026-01-12 17:40:26', '2026-01-12 17:40:26');

INSERT INTO `offretypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Prestations', 1, '2026-01-11 13:11:42', '2026-01-11 13:11:42'),
(2, 'Formations', 1, '2026-01-11 13:11:58', '2026-01-11 13:11:58'),
(3, 'Evènements', 1, '2026-01-11 13:12:16', '2026-01-11 13:12:16'),
(4, 'Espaces', 1, '2026-01-11 13:12:36', '2026-01-11 13:12:36');

INSERT INTO `operationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Crédit', 1, '2026-01-12 17:34:51', '2026-01-12 17:34:51'),
(2, 'Débit', 1, '2026-01-12 17:35:27', '2026-01-12 17:35:27'),
(3, 'Remboursement', 1, '2026-01-12 17:36:08', '2026-01-12 17:36:08'),
(4, 'Retrait', 1, '2026-01-12 17:36:20', '2026-01-12 17:36:20'),
(5, 'Conversion', 1, '2026-01-12 17:36:29', '2026-01-12 17:36:29');

INSERT INTO `paiementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2026-01-12 17:12:06', '2026-01-12 17:12:06'),
(2, 'Echoué', 1, '2026-01-12 17:12:36', '2026-01-12 17:12:36'),
(3, 'Annulé', 1, '2026-01-12 17:13:07', '2026-01-12 17:13:07'),
(4, 'Payé', 1, '2026-01-12 17:13:42', '2026-01-12 17:13:42');

INSERT INTO `partenairetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Banques', 1, '2025-07-21 18:10:13', '2025-07-21 18:10:13'),
(2, 'Bailleurs', 1, '2025-07-21 18:10:25', '2025-07-21 18:10:25'),
(3, 'Ministères', 1, '2025-07-21 18:10:37', '2025-07-21 18:10:37'),
(4, 'ONG', 1, '2025-07-21 18:10:48', '2025-07-21 18:10:48'),
(5, 'Entreprises partenaires', 1, '2025-07-21 18:11:05', '2025-07-21 18:11:05');

INSERT INTO `participantstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 14:36:26', '2026-01-12 17:16:20'),
(2, 'Peut-être', 1, '2026-01-12 17:17:04', '2026-01-12 17:17:04'),
(3, 'Non', 1, '2026-01-12 17:17:29', '2026-01-12 17:17:29');

INSERT INTO `piecetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'opérateur économique', 1, '2025-08-22 10:24:02', '2025-08-22 10:24:02'),
(2, 'Carte OTR', 1, '2025-08-22 10:24:19', '2025-08-22 10:24:58'),
(3, 'Récépissé', 1, '2025-08-22 10:24:40', '2025-08-22 10:24:40');

INSERT INTO `prestationrealiseestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:29:50', '2025-06-18 13:29:53'),
(2, 'Terminé', 1, '2026-01-12 17:05:43', '2026-01-12 17:05:43');

INSERT INTO `prestationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Structuration', 1, '2025-08-05 14:45:06', '2026-01-11 13:13:27'),
(2, 'Organisation structurelle', 1, '2025-08-22 10:25:28', '2026-01-11 13:14:56');

INSERT INTO `recommandationorigines` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'IA', 1, '2025-06-19 13:20:48', '2025-06-19 13:20:48'),
(2, 'Manuel', 1, '2025-06-19 13:21:01', '2025-06-19 13:21:01');

INSERT INTO `propositionstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2026-01-21 22:23:24', '2026-01-21 22:23:24'),
(2, 'Acceptée', 1, '2026-01-21 22:23:24', '2026-01-21 22:23:24'),
(3, 'Refusée', 1, '2026-01-21 22:23:24', '2026-01-21 22:23:24'),
(4, 'Payée', 1, '2026-01-21 22:23:24', '2026-01-21 22:23:24');

INSERT INTO `reservationstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45'),
(2, 'Validé', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45');

INSERT INTO `ressourcetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'KOBO', 1, '2025-09-13 13:02:38', '2025-09-13 13:02:38'),
(2, 'CORIS', 1, '2025-09-13 13:02:50', '2025-09-13 13:02:50'),
(3, 'BON', 1, '2025-09-13 13:03:08', '2025-09-13 13:03:08'),
(4, 'SIKA', 1, '2025-09-13 13:03:14', '2025-09-13 13:03:14');

INSERT INTO `secteurs` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Technologies et innovation', 1, '2025-08-22 10:50:55', '2025-08-22 10:50:55'),
(2, 'Incubateur de startups', 1, '2025-08-22 10:51:05', '2025-08-22 10:51:05');

INSERT INTO `slidertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Image', 1, '2025-07-02 20:54:26', '2025-07-02 20:54:26'),
(2, 'Vidéo', 1, '2025-07-02 20:54:34', '2025-07-02 20:54:34');

INSERT INTO `suivistatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actif', 1, '2025-06-18 13:37:15', '2025-06-18 16:41:02');
