
--
-- Déchargement des données de la table `accompagnementstatuts`
--

INSERT INTO `accompagnementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:20:34', '2025-08-22 10:31:06'),
(2, 'Terminé', 1, '2025-08-22 21:25:32', '2025-08-22 21:25:32');

--
-- Déchargement des données de la table `bonstatuts`
--

INSERT INTO `bonstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-16 06:29:13', '2025-08-22 10:30:41');

--
-- Déchargement des données de la table `creditstatuts`
--

INSERT INTO `creditstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 20:01:04', '2025-06-18 20:01:04');

--
-- Déchargement des données de la table `diagnosticstatuts`
--

INSERT INTO `diagnosticstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En cours', 1, '2025-08-22 10:27:32', '2025-08-22 10:27:32'),
(2, 'Validé', 1, '2025-08-22 10:29:11', '2025-08-22 10:29:11');

--
-- Déchargement des données de la table `membrestatuts`
--

INSERT INTO `membrestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 12:48:49', '2025-06-18 13:06:40'),
(3, 'Actif', 1, '2025-06-18 12:50:17', '2025-06-18 16:11:02');

--
-- Déchargement des données de la table `paiementstatuts`
--

INSERT INTO `paiementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2026-01-12 17:12:06', '2026-01-12 17:12:06'),
(2, 'Echoué', 1, '2026-01-12 17:12:36', '2026-01-12 17:12:36'),
(3, 'Annulé', 1, '2026-01-12 17:13:07', '2026-01-12 17:13:07'),
(4, 'Payé', 1, '2026-01-12 17:13:42', '2026-01-12 17:13:42');

--
-- Déchargement des données de la table `participantstatuts`
--

INSERT INTO `participantstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 14:36:26', '2026-01-12 17:16:20'),
(2, 'Peut-être', 1, '2026-01-12 17:17:04', '2026-01-12 17:17:04'),
(3, 'Non', 1, '2026-01-12 17:17:29', '2026-01-12 17:17:29');

--
-- Déchargement des données de la table `prestationrealiseestatuts`
--

INSERT INTO `prestationrealiseestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:29:50', '2025-06-18 13:29:53'),
(2, 'Terminé', 1, '2026-01-12 17:05:43', '2026-01-12 17:05:43');

--
-- Déchargement des données de la table `reservationstatuts`
--

INSERT INTO `reservationstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45'),
(2, 'Validé', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45');

--
-- Déchargement des données de la table `suivistatuts`
--

INSERT INTO `suivistatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actif', 1, '2025-06-18 13:37:15', '2025-06-18 16:41:02');


--
-- Déchargement des données de la table `accompagnementtypes`
--

INSERT INTO `accompagnementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseil', 1, '2025-08-14 09:12:11', '2025-08-14 09:12:11');

--
-- Déchargement des données de la table `actualitetypes`
--

INSERT INTO `actualitetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actualités CIJES', 1, '2025-07-25 07:52:12', '2025-07-25 07:52:12'),
(2, 'Événements & Formations', 1, '2025-07-25 07:52:25', '2025-07-25 07:52:25'),
(3, 'Conseils & Bonnes Pratiques', 1, '2025-07-25 07:52:49', '2025-07-25 07:52:49');

--
-- Déchargement des données de la table `alertetypes`
--

INSERT INTO `alertetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Alertes', 1, '2025-07-07 17:25:09', '2025-07-07 17:25:09'),
(2, 'Infos', 1, '2025-07-07 17:25:18', '2025-07-07 17:25:18');

--
-- Déchargement des données de la table `bontypes`
--

INSERT INTO `bontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Bon d\'achat', 1, '2025-07-15 09:09:03', '2025-08-22 10:23:00');

--
-- Déchargement des données de la table `conseillertypes`
--

INSERT INTO `conseillertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseiller CJES', 1, '2025-08-12 10:38:35', '2026-01-12 17:40:06');

--
-- Déchargement des données de la table `cotisationtypes`
--

INSERT INTO `cotisationtypes` (`id`, `titre`, `montant`, `entrepriseprofil_id`, `nombre_jours`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Mensuel', 2000.00, 1, 30, 1, '2026-01-06 14:33:46', '2026-01-12 17:41:38'),
(2, 'Annuel', 20000.00, 1, 365, 1, '2026-01-12 17:42:08', '2026-01-12 17:42:08'),
(3, 'Mensuel', 5000.00, 2, 30, 1, '2026-01-12 17:42:33', '2026-01-12 17:42:33'),
(4, 'Annuel', 50000.00, 2, 365, 1, '2026-01-12 17:42:50', '2026-01-12 17:42:50'),
(5, 'Mensuel', 10000.00, 3, 30, 1, '2026-01-12 17:43:13', '2026-01-12 17:43:13'),
(6, 'Annuel', 100000.00, 3, 365, 1, '2026-01-12 17:43:33', '2026-01-12 17:43:33');

--
-- Déchargement des données de la table `diagnosticmoduletypes`
--

INSERT INTO `diagnosticmoduletypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Tests psychotechniques', 1, '2025-08-13 13:04:35', '2026-01-12 17:30:11'),
(2, 'Niveaux de structuration', 1, '2025-08-13 13:04:48', '2026-01-12 17:29:50'),
(3, 'Tests de classification', 1, '2026-01-12 17:29:06', '2026-01-12 17:49:42');

--
-- Déchargement des données de la table `diagnosticquestiontypes`
--

INSERT INTO `diagnosticquestiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Choix unique', 1, '2025-07-29 12:55:21', '2025-07-29 12:55:21'),
(2, 'Choix multiple', 1, '2025-07-29 12:55:42', '2025-07-29 12:55:42');

--
-- Déchargement des données de la table `diagnostictypes`
--

INSERT INTO `diagnostictypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Tests psychotechniques', 1, '2026-01-12 17:30:33', '2026-01-12 17:30:33'),
(2, 'Niveaux de structuration', 1, '2026-01-12 17:30:54', '2026-01-12 17:30:54'),
(3, 'Tests de classification', 1, '2026-01-12 17:31:08', '2026-01-12 17:49:06');

--
-- Déchargement des données de la table `documenttypes`
--

INSERT INTO `documenttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'identité', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:42'),
(2, 'Passeport', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:57'),
(3, 'Acte de naissance', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:17'),
(4, 'Certificat de nationalité', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:37');

--
-- Déchargement des données de la table `entreprisetypes`
--

INSERT INTO `entreprisetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'SA', 1, '2025-06-18 21:29:26', '2025-06-18 21:29:26'),
(2, 'SARL', 1, '2025-06-18 21:29:41', '2025-06-18 21:29:41'),
(3, 'PME', 1, '2026-01-12 17:18:29', '2026-01-12 17:18:29'),
(4, 'Collectivité', 1, '2026-01-12 17:19:04', '2026-01-12 17:19:04');

--
-- Déchargement des données de la table `espacetypes`
--

INSERT INTO `espacetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Salle de conférence', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15'),
(2, 'Co-working', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15');

--
-- Déchargement des données de la table `evenementinscriptiontypes`
--

INSERT INTO `evenementinscriptiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 10:50:43', '2025-08-11 10:50:43'),
(2, 'Peut-être', 1, '2025-08-11 10:51:01', '2025-08-11 10:51:01'),
(3, 'Non', 1, '2025-08-11 10:51:09', '2025-08-11 10:51:09');

--
-- Déchargement des données de la table `evenementtypes`
--

INSERT INTO `evenementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Séminaires', 1, '2025-08-11 09:48:25', '2025-08-11 09:48:25'),
(2, 'Colloques', 1, '2025-08-11 09:48:44', '2025-08-11 09:48:44'),
(3, 'Conférences de presse', 1, '2025-08-11 09:49:01', '2025-08-11 09:49:01');

--
-- Déchargement des données de la table `experttypes`
--

INSERT INTO `experttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Expert', 1, '2025-07-09 13:06:16', '2025-07-09 13:06:16');

--
-- Déchargement des données de la table `formationtypes`
--

INSERT INTO `formationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Formation entreprenariat', 1, '2026-01-11 13:15:55', '2026-01-11 13:15:55'),
(2, 'Formation de structuration', 1, '2026-01-11 13:16:19', '2026-01-11 13:16:19');

--
-- Déchargement des données de la table `forumtypes`
--

INSERT INTO `forumtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Sujet sur l\'incubation', 1, '2025-08-05 19:06:23', '2025-08-22 10:22:18');

--
-- Déchargement des données de la table `membretypes`
--

INSERT INTO `membretypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`, `membrecategorie_id`) VALUES
(1, 'Entrepreneur', 1, '2025-07-04 20:06:55', '2026-01-12 17:24:46', 1),
(2, 'Expert', 1, '2025-07-04 20:07:17', '2026-01-12 17:25:30', 2),
(3, 'Conseiller CJES', 1, '2025-07-04 20:07:36', '2026-01-12 17:26:19', 1);

--
-- Déchargement des données de la table `newslettertypes`
--

INSERT INTO `newslettertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Newsletter', 1, '2026-01-12 17:40:26', '2026-01-12 17:40:26');

--
-- Déchargement des données de la table `offretypes`
--

INSERT INTO `offretypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Prestations', 1, '2026-01-11 13:11:42', '2026-01-11 13:11:42'),
(2, 'Formations', 1, '2026-01-11 13:11:58', '2026-01-11 13:11:58'),
(3, 'Evènements', 1, '2026-01-11 13:12:16', '2026-01-11 13:12:16'),
(4, 'Espaces', 1, '2026-01-11 13:12:36', '2026-01-11 13:12:36');

--
-- Déchargement des données de la table `operationtypes`
--

INSERT INTO `operationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Crédit', 1, '2026-01-12 17:34:51', '2026-01-12 17:34:51'),
(2, 'Débit', 1, '2026-01-12 17:35:27', '2026-01-12 17:35:27'),
(3, 'Remboursement', 1, '2026-01-12 17:36:08', '2026-01-12 17:36:08'),
(4, 'Retrait', 1, '2026-01-12 17:36:20', '2026-01-12 17:36:20'),
(5, 'Conversion', 1, '2026-01-12 17:36:29', '2026-01-12 17:36:29');

--
-- Déchargement des données de la table `partenairetypes`
--

INSERT INTO `partenairetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Banques', 1, '2025-07-21 18:10:13', '2025-07-21 18:10:13'),
(2, 'Bailleurs', 1, '2025-07-21 18:10:25', '2025-07-21 18:10:25'),
(3, 'Ministères', 1, '2025-07-21 18:10:37', '2025-07-21 18:10:37'),
(4, 'ONG', 1, '2025-07-21 18:10:48', '2025-07-21 18:10:48'),
(5, 'Entreprises partenaires', 1, '2025-07-21 18:11:05', '2025-07-21 18:11:05');

--
-- Déchargement des données de la table `piecetypes`
--

INSERT INTO `piecetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'opérateur économique', 1, '2025-08-22 10:24:02', '2025-08-22 10:24:02'),
(2, 'Carte OTR', 1, '2025-08-22 10:24:19', '2025-08-22 10:24:58'),
(3, 'Récépissé', 1, '2025-08-22 10:24:40', '2025-08-22 10:24:40');

--
-- Déchargement des données de la table `prestationtypes`
--

INSERT INTO `prestationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Structuration', 1, '2025-08-05 14:45:06', '2026-01-11 13:13:27'),
(2, 'Organisation structurelle', 1, '2025-08-22 10:25:28', '2026-01-11 13:14:56');

--
-- Déchargement des données de la table `ressourcetypeoffretypes`
--

INSERT INTO `ressourcetypeoffretypes` (`id`, `offretype_id`, `ressourcetype_id`, `table_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', 0, 1, '2026-01-12 14:50:56', '2026-01-12 14:50:56'),
(2, 1, 1, '2', 0, 1, '2026-01-12 16:40:48', '2026-01-12 16:40:48'),
(3, 2, 1, '1', 0, 1, '2026-01-12 16:41:35', '2026-01-12 16:41:35'),
(4, 2, 1, '2', 0, 1, '2026-01-12 16:41:42', '2026-01-12 16:41:42'),
(5, 3, 1, '1', 0, 1, '2026-01-12 16:46:45', '2026-01-12 16:46:45'),
(6, 3, 1, '2', 0, 1, '2026-01-12 16:46:57', '2026-01-12 16:46:57'),
(7, 3, 1, '3', 0, 1, '2026-01-12 16:47:06', '2026-01-12 16:47:06'),
(8, 4, 1, '1', 0, 1, '2026-01-12 16:47:30', '2026-01-12 16:47:30'),
(9, 4, 1, '2', 0, 1, '2026-01-12 16:47:39', '2026-01-12 16:47:39'),
(10, 1, 3, '1', 0, 1, '2026-01-12 16:50:48', '2026-01-12 16:50:48'),
(11, 1, 3, '2', 0, 1, '2026-01-12 16:51:00', '2026-01-12 16:51:00'),
(12, 2, 3, '1', 0, 1, '2026-01-12 16:51:09', '2026-01-12 16:51:09'),
(13, 2, 3, '2', 0, 1, '2026-01-12 16:51:18', '2026-01-12 16:51:18'),
(14, 1, 4, '1', 0, 1, '2026-01-12 16:52:13', '2026-01-12 16:52:13'),
(15, 1, 4, '2', 0, 1, '2026-01-12 16:52:22', '2026-01-12 16:52:22'),
(16, 2, 4, '1', 0, 1, '2026-01-12 16:52:39', '2026-01-12 16:52:39'),
(17, 2, 4, '2', 0, 1, '2026-01-12 16:52:49', '2026-01-12 16:52:49'),
(18, 3, 4, '1', 0, 1, '2026-01-12 16:53:10', '2026-01-12 16:53:10'),
(19, 3, 4, '2', 0, 1, '2026-01-12 16:53:17', '2026-01-12 16:53:17'),
(20, 3, 4, '3', 0, 1, '2026-01-12 16:53:26', '2026-01-12 16:53:26'),
(21, 4, 4, '1', 0, 1, '2026-01-12 16:53:45', '2026-01-12 16:53:45'),
(22, 4, 4, '2', 0, 1, '2026-01-12 16:53:55', '2026-01-12 16:53:55');

--
-- Déchargement des données de la table `ressourcetypes`
--

INSERT INTO `ressourcetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'KOBO', 1, '2025-09-13 13:02:38', '2025-09-13 13:02:38'),
(2, 'CORIS', 1, '2025-09-13 13:02:50', '2025-09-13 13:02:50'),
(3, 'BON', 1, '2025-09-13 13:03:08', '2025-09-13 13:03:08'),
(4, 'SIKA', 1, '2025-09-13 13:03:14', '2025-09-13 13:03:14');

--
-- Déchargement des données de la table `slidertypes`
--

INSERT INTO `slidertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Image', 1, '2025-07-02 20:54:26', '2025-07-02 20:54:26'),
(2, 'Vidéo', 1, '2025-07-02 20:54:34', '2025-07-02 20:54:34');


--
-- Déchargement des données de la table `conseillervalides`
--

INSERT INTO `conseillervalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-12 10:38:15', '2025-08-22 10:19:59'),
(2, 'Validé', 1, '2026-01-12 17:39:35', '2026-01-12 17:39:35');

--
-- Déchargement des données de la table `entrepriseprofils`
--

INSERT INTO `entrepriseprofils` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Pépites', 1, '2026-01-06 14:24:40', '2026-01-06 14:24:40'),
(2, 'Emergeants', 1, '2026-01-06 14:25:15', '2026-01-06 14:25:15'),
(3, 'Elites', 1, '2026-01-06 14:25:29', '2026-01-06 14:25:40');

--
-- Déchargement des données de la table `expertvalides`
--

INSERT INTO `expertvalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-09 13:05:04', '2026-01-12 17:38:36'),
(2, 'Validé', 1, '2026-01-12 17:38:54', '2026-01-12 17:38:54');

--
-- Déchargement des données de la table `formationniveaus`
--

INSERT INTO `formationniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Débutant', 1, '2025-08-11 14:37:30', '2025-08-22 10:18:48'),
(2, 'Intermédiaire', 1, '2025-08-22 10:18:38', '2025-08-22 10:18:38');

--
-- Déchargement des données de la table `membrecategories`
--

INSERT INTO `membrecategories` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Entrepreneur', 1, '2026-01-06 14:30:45', '2026-01-06 14:30:45'),
(2, 'Expert', 1, '2026-01-06 14:30:59', '2026-01-06 14:30:59'),
(3, 'Conseiller', 1, '2026-01-12 17:22:51', '2026-01-12 17:22:51');

--
-- Déchargement des données de la table `recommandationorigines`
--

INSERT INTO `recommandationorigines` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'IA', 1, '2025-06-19 13:20:48', '2025-06-19 13:20:48'),
(2, 'Manuel', 1, '2025-06-19 13:21:01', '2025-06-19 13:21:01');

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Technologies et innovation', 1, '2025-08-22 10:50:55', '2025-08-22 10:50:55'),
(2, 'Incubateur de startups', 1, '2025-08-22 10:51:05', '2025-08-22 10:51:05');

