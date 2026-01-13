
--
-- Base de données : `cijet`
--

-- --------------------------------------------------------

--
-- Structure de la table `accompagnementconseillers`
--

CREATE TABLE `accompagnementconseillers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `observation` text DEFAULT NULL,
  `accompagnementtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `conseiller_id` bigint(20) UNSIGNED DEFAULT 0,
  `datedebut` date DEFAULT NULL,
  `datefin` date DEFAULT NULL,
  `montant` varchar(255) DEFAULT '0',
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnementconseillers`
--

INSERT INTO `accompagnementconseillers` (`id`, `observation`, `accompagnementtype_id`, `conseiller_id`, `datedebut`, `datefin`, `montant`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, '2025-08-14', '2025-08-21', '50000', 2, 0, 1, '2025-08-14 09:18:44', '2025-08-22 11:28:56'),
(2, NULL, 1, 2, '2025-08-22', '2025-08-30', '50000', 1, 0, 1, '2025-08-22 11:30:10', '2025-08-22 11:30:10');

-- --------------------------------------------------------

--
-- Structure de la table `accompagnementdocuments`
--

CREATE TABLE `accompagnementdocuments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_id` bigint(20) UNSIGNED DEFAULT 0,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnementdocuments`
--

INSERT INTO `accompagnementdocuments` (`id`, `document_id`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2025-07-09 12:39:05', '2025-07-09 12:39:05');

-- --------------------------------------------------------

--
-- Structure de la table `accompagnementniveaus`
--

CREATE TABLE `accompagnementniveaus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnementniveaus`
--

INSERT INTO `accompagnementniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Diagnostic', 1, '2025-06-19 12:38:23', '2025-06-19 12:38:38');

-- --------------------------------------------------------

--
-- Structure de la table `accompagnements`
--

CREATE TABLE `accompagnements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `accompagnementniveau_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateaccompagnement` date DEFAULT NULL,
  `accompagnementstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnements`
--

INSERT INTO `accompagnements` (`id`, `membre_id`, `entreprise_id`, `accompagnementniveau_id`, `dateaccompagnement`, `accompagnementstatut_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-07-08', 2, 0, 1, '2025-07-08 18:37:06', '2025-08-22 21:26:11'),
(2, 2, 2, 1, '2025-08-22', 2, 0, 1, '2025-08-22 11:21:08', '2025-08-23 07:34:00'),
(3, 4, 0, 1, '2025-09-10', 1, 0, 1, '2025-09-10 07:33:31', '2025-09-10 07:33:31');

-- --------------------------------------------------------

--
-- Structure de la table `accompagnementstatuts`
--

CREATE TABLE `accompagnementstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnementstatuts`
--

INSERT INTO `accompagnementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:20:34', '2025-08-22 10:31:06'),
(2, 'Terminé', 1, '2025-08-22 21:25:32', '2025-08-22 21:25:32');

-- --------------------------------------------------------

--
-- Structure de la table `accompagnementtypes`
--

CREATE TABLE `accompagnementtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accompagnementtypes`
--

INSERT INTO `accompagnementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseil', 1, '2025-08-14 09:12:11', '2025-08-14 09:12:11');

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `limite` varchar(255) DEFAULT NULL,
  `seuil` varchar(255) DEFAULT NULL,
  `ressourcetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `actualitetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateactualite` date DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `actualitetype_id`, `dateactualite`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Comment le CIJES révolutionne l’incubation des startups au Togo ?', 'Découvrez le modèle unique du CIJET qui allie technologie, accompagnement personnalisé et financement pour booster l’entrepreneuriat togolais.', '<p>L’incubation traditionnelle connaît une transformation majeure avec l’arrivée du CIJET. Plus qu’un simple incubateur, le CIJET propose un écosystème complet où l’innovation rencontre le financement et la technologie. À travers ses <strong>crédits d’incubation</strong>, ses <strong>bons d’accompagnement intelligents</strong> et son <strong>plateau digital interactif</strong>, il offre aux startups togolaises des outils inédits pour structurer leurs projets et accéder aux marchés.</p>', '0', 'actualites/1767615621_affaire.JPG', 1, '2025-07-25', '0', 0, 1, '2025-07-25 07:48:03', '2026-01-05 12:20:21'),
(2, '5 astuces pour rendre votre business plan irrésistible', 'Un business plan solide peut séduire investisseurs et partenaires. Voici 5 conseils pratiques pour le rendre convaincant et attractif.', '<p>Le business plan est la carte d’identité de votre projet. Mal rédigé, il peut fermer des portes ; bien structuré, il devient votre meilleur atout pour convaincre investisseurs et bailleurs. Dans cet article, nous vous dévoilons <strong>5 astuces incontournables</strong> pour concevoir un business plan clair, réaliste et séduisant, en mettant l’accent sur la viabilité financière et la stratégie de croissance.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/actualites/2025/07/25/6883567761be4_femme-d-affaires-afro-americaine-travaillant-sur-ordinateur.jpg', 3, '2025-07-25', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 07:58:41', '2025-09-09 13:24:51'),
(3, 'Success Story : De l’idée au marché grâce au CIJES', 'Découvrez comment un jeune entrepreneur a transformé une simple idée en une entreprise prospère grâce à l’accompagnement CIJES.', '<p>Chez CIJET, nous croyons que chaque idée mérite une chance. Cette success story raconte le parcours inspirant d’un incubé qui, grâce à notre <strong>parcours structuré</strong>, nos <strong>experts mentors</strong> et nos <strong>bons d’accompagnement</strong>, a franchi toutes les étapes : de la validation du concept jusqu’à la conquête du marché. Une preuve concrète que l’innovation, soutenue par un accompagnement efficace, peut changer des vies.</p>', '0', 'actualites/1767615730_contrat.JPG', 2, '2025-07-24', '0', 0, 1, '2025-07-25 08:02:01', '2026-01-05 12:22:10');

-- --------------------------------------------------------

--
-- Structure de la table `actualitetypes`
--

CREATE TABLE `actualitetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualitetypes`
--

INSERT INTO `actualitetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actualités CIJES', 1, '2025-07-25 07:52:12', '2025-07-25 07:52:12'),
(2, 'Événements & Formations', 1, '2025-07-25 07:52:25', '2025-07-25 07:52:25'),
(3, 'Conseils & Bonnes Pratiques', 1, '2025-07-25 07:52:49', '2025-07-25 07:52:49');

-- --------------------------------------------------------

--
-- Structure de la table `alertes`
--

CREATE TABLE `alertes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text DEFAULT NULL,
  `lienurl` text DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `alertetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `recompense_id` bigint(20) UNSIGNED DEFAULT 0,
  `datealerte` date DEFAULT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `lu` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `alertes`
--

INSERT INTO `alertes` (`id`, `titre`, `contenu`, `lienurl`, `langue_id`, `alertetype_id`, `recompense_id`, `datealerte`, `membre_id`, `lu`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Alerte 1', 'Alerte 1 Alerte 1 Alerte 1 Alerte 1 Alerte 1', NULL, '1', 2, 0, '2025-07-07', 1, 0, 1, '2025-07-07 17:26:28', '2025-07-08 07:04:35');

-- --------------------------------------------------------

--
-- Structure de la table `alertetypes`
--

CREATE TABLE `alertetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `alertetypes`
--

INSERT INTO `alertetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Alertes', 1, '2025-07-07 17:25:09', '2025-07-07 17:25:09'),
(2, 'Infos', 1, '2025-07-07 17:25:18', '2025-07-07 17:25:18');

-- --------------------------------------------------------

--
-- Structure de la table `attachmentable`
--

CREATE TABLE `attachmentable` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachmentable_type` varchar(255) NOT NULL,
  `attachmentable_id` int(10) UNSIGNED NOT NULL,
  `attachment_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `original_name` text NOT NULL,
  `mime` varchar(255) NOT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `path` text NOT NULL,
  `description` text DEFAULT NULL,
  `alt` text DEFAULT NULL,
  `hash` text DEFAULT NULL,
  `disk` varchar(255) NOT NULL DEFAULT 'public',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `attachments`
--

INSERT INTO `attachments` (`id`, `name`, `original_name`, `mime`, `extension`, `size`, `sort`, `path`, `description`, `alt`, `hash`, `disk`, `user_id`, `group`, `created_at`, `updated_at`) VALUES
(1, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-02 21:22:21', '2025-06-02 21:22:21'),
(2, '1fdc9141be86d7ea42320e9dea698cfdc821f0b8', 'papa isaac.jpg', 'image/jpeg', 'jpg', 63918, 0, '2025/06/20/', NULL, NULL, 'a1852a3637545bd13b0a786b48a64ab662be1070', 'public', 1, NULL, '2025-06-20 10:56:16', '2025-06-20 10:56:16'),
(4, '9d0d76d61a71d7c938133ce3482009263b2b6d4e', 'blob', 'image/png', 'png', 138612, 0, '2025/06/20/', NULL, NULL, '56e317b387fca7894c08621a726438cc9e4c3bcf', 'public', 1, NULL, '2025-06-20 12:40:21', '2025-06-20 12:40:21'),
(5, 'b0cee4d6ac012c366f4347aab0abc3694bc78bd6', 'blob', 'image/jpeg', 'jpg', 61389, 0, '2025/06/20/', NULL, NULL, '069fb3a7835bb09e4c6d844f0a76e97efe8e30de', 'public', 1, NULL, '2025-06-20 12:41:17', '2025-06-20 12:41:17'),
(6, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-23 10:55:49', '2025-06-23 10:55:49'),
(7, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 1, NULL, '2025-06-23 10:57:13', '2025-06-23 10:57:13'),
(8, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 1, NULL, '2025-06-23 11:04:45', '2025-06-23 11:04:45'),
(9, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 1, NULL, '2025-06-23 11:07:33', '2025-06-23 11:07:33'),
(10, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 1, NULL, '2025-06-23 11:12:06', '2025-06-23 11:12:06'),
(11, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 1, NULL, '2025-06-23 11:12:55', '2025-06-23 11:12:55'),
(12, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 1, NULL, '2025-06-23 11:17:50', '2025-06-23 11:17:50'),
(13, 'be12a556b8314ce2868f123e7e7554d340c5001b', 'conseil.JPG', 'image/jpeg', 'JPG', 54909, 0, '2025/06/23/', NULL, NULL, 'b8b622be5535c9ae240132f5edd9d54a27fef399', 'public', 1, NULL, '2025-06-23 11:19:39', '2025-06-23 11:19:39'),
(14, 'be12a556b8314ce2868f123e7e7554d340c5001b', 'conseil.JPG', 'image/jpeg', 'JPG', 54909, 0, '2025/06/23/', NULL, NULL, 'b8b622be5535c9ae240132f5edd9d54a27fef399', 'public', 1, NULL, '2025-06-23 11:22:02', '2025-06-23 11:22:02'),
(15, '636b828ff75bbe53798702776035e23e9518bb3b', 'conseils.JPG', 'image/jpeg', 'JPG', 100987, 0, '2025/06/23/', NULL, NULL, 'af82cc1a66bc058a709aadf58870b1019bd8609d', 'public', 1, NULL, '2025-06-23 11:23:17', '2025-06-23 11:23:17'),
(16, 'be12a556b8314ce2868f123e7e7554d340c5001b', 'conseil.JPG', 'image/jpeg', 'JPG', 54909, 0, '2025/06/23/', NULL, NULL, 'b8b622be5535c9ae240132f5edd9d54a27fef399', 'public', 1, NULL, '2025-06-23 11:29:26', '2025-06-23 11:29:26'),
(17, 'bd5c7313aa2fd9209380f2c452c55de37d871583', 'Document Certifications.JPG', 'image/jpeg', 'JPG', 74471, 0, '2025/06/23/', NULL, NULL, '6478facfbdb6868e1eb6d0f93494ac8a69468019', 'public', 1, NULL, '2025-06-23 11:31:21', '2025-06-23 11:31:21'),
(18, 'ed2c130794a8e15fcfdc83fe24908a996f4f7914', 'immobilier.JPG', 'image/jpeg', 'JPG', 121213, 0, '2025/06/23/', NULL, NULL, '15c6f74f4a487ef8d79a2a8de484d0c4e7617765', 'public', 1, NULL, '2025-06-23 11:32:58', '2025-06-23 11:32:58'),
(19, 'bd4d63a466885b811e301ea12063d432958f4e41', 'droit immobilier.JPG', 'image/jpeg', 'JPG', 87325, 0, '2025/06/23/', NULL, NULL, '44d3260768f861b7967d0139279d72e67c8c126a', 'public', 1, NULL, '2025-06-23 11:34:40', '2025-06-23 11:34:40'),
(20, '636b828ff75bbe53798702776035e23e9518bb3b', 'conseils.JPG', 'image/jpeg', 'JPG', 100987, 0, '2025/06/23/', NULL, NULL, 'af82cc1a66bc058a709aadf58870b1019bd8609d', 'public', 1, NULL, '2025-06-23 11:35:12', '2025-06-23 11:35:12'),
(21, 'ae519be47d1ce833f3b3a4cc0f56d57b29b049af', 'Image1.png', 'image/png', 'png', 843052, 0, '2025/06/27/', NULL, NULL, 'b52c14f1df7c1d93628a9c73530191edb78d062d', 'public', 1, NULL, '2025-06-27 12:15:16', '2025-06-27 12:15:16'),
(22, 'ae519be47d1ce833f3b3a4cc0f56d57b29b049af', 'Image1.png', 'image/png', 'png', 843052, 0, '2025/06/27/', NULL, NULL, 'b52c14f1df7c1d93628a9c73530191edb78d062d', 'public', 1, NULL, '2025-06-27 12:23:05', '2025-06-27 12:23:05'),
(23, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 12:25:18', '2025-06-27 12:25:18'),
(24, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 12:26:17', '2025-06-27 12:26:17'),
(25, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 12:27:25', '2025-06-27 12:27:25'),
(26, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 12:28:02', '2025-06-27 12:28:02'),
(27, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 12:29:13', '2025-06-27 12:29:13'),
(28, 'ae519be47d1ce833f3b3a4cc0f56d57b29b049af', 'Image1.png', 'image/png', 'png', 843052, 0, '2025/06/27/', NULL, NULL, 'b52c14f1df7c1d93628a9c73530191edb78d062d', 'public', 1, NULL, '2025-06-27 13:01:56', '2025-06-27 13:01:56'),
(29, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 13:02:36', '2025-06-27 13:02:36'),
(30, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 13:05:52', '2025-06-27 13:05:52'),
(31, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-06-27 13:11:13', '2025-06-27 13:11:13'),
(32, 'dd09eda38ce0efe5862d7c391c32a362abe2c468', '13.jpg', 'image/jpeg', 'jpg', 542824, 0, '2025/07/02/', NULL, NULL, '079341ba1d8aae7153545dd82466a34a000fe348', 'public', 1, NULL, '2025-07-02 12:41:34', '2025-07-02 12:41:34'),
(33, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-07-07 14:31:14', '2025-07-07 14:31:14'),
(34, 'dd76bb9bf24d0143687f8c25f8b0773d4b0ee5ad', 'affaire.JPG', 'image/jpeg', 'JPG', 55596, 0, '2025/06/23/', NULL, NULL, 'd4bdcc9013bcc67d15e3e4cf1ab698f3081d6747', 'public', 7, NULL, '2026-01-07 14:55:44', '2026-01-07 14:55:44');

-- --------------------------------------------------------

--
-- Structure de la table `bons`
--

CREATE TABLE `bons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) NOT NULL,
  `bonstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `bontype_id` bigint(20) UNSIGNED DEFAULT 0,
  `datebon` date DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT NULL,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bons`
--

INSERT INTO `bons` (`id`, `montant`, `bonstatut_id`, `bontype_id`, `datebon`, `pays_id`, `entreprise_id`, `user_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '500000', 1, 1, '2025-07-09', '8409335f-e085-4597-9cae-359a60a816c6', 1, 1, 0, 1, '2025-07-08 07:57:13', '2025-08-16 06:29:33');

-- --------------------------------------------------------

--
-- Structure de la table `bonstatuts`
--

CREATE TABLE `bonstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bonstatuts`
--

INSERT INTO `bonstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-16 06:29:13', '2025-08-22 10:30:41');

-- --------------------------------------------------------

--
-- Structure de la table `bontypes`
--

CREATE TABLE `bontypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bontypes`
--

INSERT INTO `bontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Bon d\'achat', 1, '2025-07-15 09:09:03', '2025-08-22 10:23:00');

-- --------------------------------------------------------

--
-- Structure de la table `bonutilises`
--

CREATE TABLE `bonutilises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) NOT NULL,
  `noteservice` text DEFAULT NULL,
  `bon_id` bigint(20) UNSIGNED DEFAULT 0,
  `prestationrealisee_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bonutilises`
--

INSERT INTO `bonutilises` (`id`, `montant`, `noteservice`, `bon_id`, `prestationrealisee_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '500000', 'dferfer', 1, 1, 0, 1, '2025-07-08 20:08:05', '2025-07-08 20:08:05');

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_5c785c036466adea360111aa28563bfd556b5fba', 'i:1;', 1768234221),
('laravel_cache_5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1768234221;', 1768234221);

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chiffres`
--

CREATE TABLE `chiffres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `chiffre` varchar(255) DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chiffres`
--

INSERT INTO `chiffres` (`id`, `titre`, `chiffre`, `langue_id`, `vignette`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'jeunes entreprises accompagnées', '500', '0', 'chiffres/1767128996_afrique-togoeac.png', '0', 0, 1, '2025-07-21 18:08:02', '2025-12-30 21:09:56'),
(2, 'experts mobilisés', '80', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:08:27', '2025-09-09 13:27:53'),
(3, 'secteurs prioritaires couverts', '5', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:08:54', '2025-09-09 13:28:08'),
(4, 'emplois créés en 1 an', '300', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:09:19', '2025-09-09 13:27:23');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `actualite_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `communes`
--

CREATE TABLE `communes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prefecture_id` bigint(20) UNSIGNED DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id`, `nom`, `prefecture_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Golfe 7', 1, 1, '2025-06-28 14:17:17', '2025-06-28 14:17:17'),
(2, 'Golfe 1', 1, 1, '2025-06-28 14:17:37', '2025-06-28 14:17:37');

-- --------------------------------------------------------

--
-- Structure de la table `conseillerentreprises`
--

CREATE TABLE `conseillerentreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conseiller_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conseillerentreprises`
--

INSERT INTO `conseillerentreprises` (`id`, `conseiller_id`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2025-08-14 09:13:04', '2025-08-14 09:13:04');

-- --------------------------------------------------------

--
-- Structure de la table `conseillerprescriptions`
--

CREATE TABLE `conseillerprescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conseiller_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `prestation_id` bigint(20) UNSIGNED DEFAULT 0,
  `formation_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conseillerprescriptions`
--

INSERT INTO `conseillerprescriptions` (`id`, `conseiller_id`, `membre_id`, `entreprise_id`, `prestation_id`, `formation_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 1, 2, NULL, 0, 1, '2025-08-22 10:56:41', '2025-08-22 11:06:10'),
(3, 2, 2, 0, 0, 1, 0, 1, '2025-08-22 11:29:18', '2025-08-22 11:29:18'),
(4, 2, 2, 0, 2, 0, 0, 1, '2025-08-22 11:29:30', '2025-08-22 11:29:30'),
(5, 2, 2, 1, 2, 0, 0, 1, '2025-08-22 11:30:51', '2025-08-22 11:30:51');

-- --------------------------------------------------------

--
-- Structure de la table `conseillers`
--

CREATE TABLE `conseillers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fonction` longtext DEFAULT NULL,
  `conseillertype_id` bigint(20) UNSIGNED DEFAULT 0,
  `conseillervalide_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conseillers`
--

INSERT INTO `conseillers` (`id`, `fonction`, `conseillertype_id`, `conseillervalide_id`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '<p>Conseil sur les technologies de l\'informatique </p>', 1, 1, 1, 0, 1, '2025-08-12 10:51:35', '2025-08-22 10:55:20'),
(2, '<p>Conseiller</p>', 1, 1, 2, 0, 1, '2025-08-22 11:07:09', '2025-08-22 11:28:41');

-- --------------------------------------------------------

--
-- Structure de la table `conseillertypes`
--

CREATE TABLE `conseillertypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conseillertypes`
--

INSERT INTO `conseillertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseiller CJES', 1, '2025-08-12 10:38:35', '2026-01-12 17:40:06');

-- --------------------------------------------------------

--
-- Structure de la table `conseillervalides`
--

CREATE TABLE `conseillervalides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conseillervalides`
--

INSERT INTO `conseillervalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-12 10:38:15', '2025-08-22 10:19:59'),
(2, 'Validé', 1, '2026-01-12 17:39:35', '2026-01-12 17:39:35');

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `contacttype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacttypes`
--

CREATE TABLE `contacttypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membre_id1` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id2` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`id`, `membre_id1`, `membre_id2`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2025-07-10 10:46:30', '2025-07-10 10:46:30');

-- --------------------------------------------------------

--
-- Structure de la table `conversions`
--

CREATE TABLE `conversions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taux` varchar(255) DEFAULT NULL,
  `ressourcetransaction_source_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcetransaction_cible_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cotisationressources`
--

CREATE TABLE `cotisationressources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcecompte_id` bigint(20) UNSIGNED DEFAULT 0,
  `cotisation_id` bigint(20) UNSIGNED DEFAULT 0,
  `paiementstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cotisations`
--

CREATE TABLE `cotisations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `cotisationtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `montant` decimal(10,2) NOT NULL DEFAULT 0.00,
  `montant_paye` decimal(10,2) NOT NULL DEFAULT 0.00,
  `montant_restant` decimal(10,2) NOT NULL DEFAULT 0.00,
  `devise` varchar(10) NOT NULL DEFAULT 'XOF',
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `date_echeance` date DEFAULT NULL,
  `date_paiement` date DEFAULT NULL,
  `statut` varchar(20) NOT NULL DEFAULT 'en_attente',
  `est_a_jour` tinyint(1) NOT NULL DEFAULT 0,
  `nombre_rappels` int(11) NOT NULL DEFAULT 0,
  `reference_paiement` varchar(255) DEFAULT NULL,
  `mode_paiement` varchar(20) DEFAULT NULL,
  `commentaires` text DEFAULT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cotisations`
--

INSERT INTO `cotisations` (`id`, `entreprise_id`, `cotisationtype_id`, `montant`, `montant_paye`, `montant_restant`, `devise`, `date_debut`, `date_fin`, `date_echeance`, `date_paiement`, `statut`, `est_a_jour`, `nombre_rappels`, `reference_paiement`, `mode_paiement`, `commentaires`, `etat`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 10000.00, 5000.00, 5000.00, 'XOF', '2026-01-06', '2026-01-31', '2026-02-05', '2026-01-06', 'partielle', 0, 2, 'FGHJGGghj', 'mobile_money', NULL, 1, '2026-01-06 14:55:26', '2026-01-06 15:04:33');

-- --------------------------------------------------------

--
-- Structure de la table `cotisationtypes`
--

CREATE TABLE `cotisationtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `montant` decimal(10,2) NOT NULL DEFAULT 0.00,
  `entrepriseprofil_id` bigint(20) UNSIGNED DEFAULT 0,
  `nombre_jours` int(11) DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `credits`
--

CREATE TABLE `credits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montanttotal` varchar(255) NOT NULL,
  `montantutilise` varchar(255) NOT NULL,
  `creditstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `credittype_id` bigint(20) UNSIGNED DEFAULT 0,
  `datecredit` date DEFAULT NULL,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT NULL,
  `partenaire_id` bigint(20) UNSIGNED DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `credits`
--

INSERT INTO `credits` (`id`, `montanttotal`, `montantutilise`, `creditstatut_id`, `credittype_id`, `datecredit`, `entreprise_id`, `pays_id`, `partenaire_id`, `user_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '555', '555', 1, 1, '2025-07-22', 1, '8409335f-e085-4597-9cae-359a60a816c6', 1, 1, 0, 1, '2025-07-10 18:36:04', '2025-08-16 06:52:18');

-- --------------------------------------------------------

--
-- Structure de la table `creditstatuts`
--

CREATE TABLE `creditstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `creditstatuts`
--

INSERT INTO `creditstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 20:01:04', '2025-06-18 20:01:04');

-- --------------------------------------------------------

--
-- Structure de la table `credittypes`
--

CREATE TABLE `credittypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticmodules`
--

CREATE TABLE `diagnosticmodules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `position` int(11) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `vignette` varchar(255) DEFAULT NULL,
  `diagnosticmoduletype_id` bigint(20) UNSIGNED DEFAULT 0,
  `parent` bigint(20) UNSIGNED DEFAULT 0,
  `langue_id` varchar(255) DEFAULT '0',
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticmodules`
--

INSERT INTO `diagnosticmodules` (`id`, `titre`, `position`, `description`, `vignette`, `diagnosticmoduletype_id`, `parent`, `langue_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Profil du porteur de projet ou de l’entrepreneur débutant', 1, '<p>Identifier les forces personnelles, la maturité entrepreneuriale, la résilience émotionnelle, la capacité d’organisation et la vision stratégique du porteur de projet.</p>', NULL, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:02:09'),
(2, 'A. Posture entrepreneuriale et soft skills', 1, '<p><br></p>', NULL, 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 13:14:05', '2025-07-29 13:15:29'),
(3, 'B. Intelligence émotionnelle et résilience', 2, NULL, NULL, 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 13:15:14', '2025-07-29 13:15:14'),
(4, 'C. Analyse SWOT personnel', 3, NULL, NULL, 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 13:16:38', '2025-07-29 13:16:38'),
(5, 'BLOC 1 – STRUCTURE ORGANISATIONNELLE', 1, NULL, 'diagnosticmodules/1767798744_affaire.JPG', 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', '0', 0, 1, '2025-08-22 11:12:59', '2026-01-07 15:12:24'),
(6, 'BLOC 2 – MODÈLE ÉCONOMIQUE & VIABILITÉ', 2, NULL, 'diagnosticmodules/1767800689_contrat.JPG', 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', '0', 0, 1, '2025-08-22 11:16:58', '2026-01-07 15:44:49'),
(7, 'BLOC 3 – GOUVERNANCE & LEADERSHIP', 3, NULL, NULL, 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(8, 'BLOC 4 – RESSOURCES HUMAINES', 4, NULL, NULL, 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(9, 'BLOC 5 – CONFORMITÉ LÉGALE, FISCALE ET SOCIALE', 5, NULL, NULL, 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(10, 'BLOC 6 – GESTION FINANCIÈRE & COMPTABILITÉ', 6, NULL, NULL, 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(11, 'BLOC 7 – SYSTÈME D’INFORMATION & DIGITALISATION', 7, NULL, NULL, 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(12, 'BLOC 8 – STRATÉGIE DE DÉVELOPPEMENT & PARTENARIATS', 8, NULL, NULL, 2, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(13, '1️⃣ GOUVERNANCE & VISION STRATÉGIQUE', 1, 'Ce bloc vise à évaluer votre capacité réelle à diriger votre entreprise de manière structurée, avec une vision claire, des objectifs définis et un minimum de pilotage. Il ne s\'agit pas de ce que vous projetez de faire, mais de ce qui est effectivement en place aujourd\'hui dans votre entreprise. Pour chaque question, choisissez la proposition qui décrit le mieux votre situation actuelle.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(14, '2️⃣ STATUT JURIDIQUE & CONFORMITÉ', 2, 'Ce bloc vise à évaluer le niveau réel de conformité légale, administrative, fiscale et sociale de votre entreprise. Il permet d\'apprécier votre capacité à opérer légalement, à sécuriser vos activités et à accéder sans risque aux marchés, partenariats et financements. Il ne s\'agit pas de vos intentions ou projets futurs, mais de votre situation effective aujourd\'hui.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(15, '3️⃣ GESTION FINANCIÈRE & COMPTABILITÉ', 3, 'Ce bloc vise à évaluer votre capacité réelle à gérer, suivre et comprendre les finances de votre entreprise. Il permet d\'apprécier si votre entreprise dispose d\'un minimum de discipline financière, condition indispensable pour prendre de bonnes décisions, sécuriser la trésorerie et accéder aux financements. Il ne s\'agit pas de votre chiffre d\'affaires, mais de la qualité de votre organisation financière actuelle.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(16, '4️⃣ ORGANISATION INTERNE & PROCESSUS', 4, 'Ce bloc permet d\'évaluer le niveau réel d\'organisation interne de votre entreprise : comment le travail est réparti, exécuté, suivi et transmis. Il mesure votre capacité à fonctionner de manière structurée, même en votre absence. Il ne s\'agit pas de votre bonne volonté, mais de la façon dont votre entreprise fonctionne concrètement aujourd\'hui.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(17, '5️⃣ RESSOURCES HUMAINES & COMPÉTENCES', 5, 'Ce bloc permet d\'évaluer la solidité humaine de votre entreprise : la stabilité de l\'équipe, la clarté des relations de travail, l\'adéquation des compétences et la capacité à faire grandir les personnes. Il ne s\'agit pas du nombre de personnes, mais de la manière dont les ressources humaines sont organisées et développées aujourd\'hui.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(18, '6️⃣ OFFRE, MARCHÉ & CLIENTS', 6, 'Ce bloc permet d\'évaluer la clarté de votre offre, votre compréhension réelle du marché, et la qualité de votre relation client. Il mesure votre capacité à vendre de façon cohérente, régulière et durable, au-delà des opportunités ponctuelles. Il ne s\'agit pas de ce que vous pensez vendre, mais de ce que vos clients comprennent réellement et achètent aujourd\'hui.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(19, '7️⃣ CAPACITÉ OPÉRATIONNELLE & EXÉCUTION', 7, 'Ce bloc permet d\'évaluer votre capacité réelle à exécuter ce que vous vendez, à livrer dans les délais, à maintenir la qualité et à faire face aux imprévus. Il mesure si votre entreprise est opérationnellement fiable, au-delà des intentions et des promesses commerciales. Il ne s\'agit pas de ce que vous pensez pouvoir faire, mais de ce que votre entreprise est réellement capable de livrer aujourd\'hui.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(20, '8️⃣ DIGITALISATION, REPORTING & TRAÇABILITÉ', 8, 'Ce bloc permet d\'évaluer le niveau réel de digitalisation et de traçabilité de votre entreprise : votre capacité à utiliser des outils numériques, à conserver l\'information, à produire des données fiables et à rendre compte de vos activités. Il ne s\'agit pas d\'être \"très digital\", mais de disposer d\'outils simples et réellement utilisés pour mieux gérer l\'entreprise.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(21, '9️⃣ INFRASTRUCTURES PHYSIQUES', 9, 'Ce bloc permet d\'évaluer la qualité et l\'adéquation de vos infrastructures physiques : bureaux, ateliers, boutiques, équipements et conditions de sécurité. Il mesure si votre cadre de travail est professionnel, rassurant et propice à la croissance de votre entreprise.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(22, '🔟 RELATIONS AVEC LES TIERS & ÉCOSYSTÈME PROFESSIONNEL', 10, 'Ce bloc vise à apprécier le niveau réel d\'intégration de votre entreprise dans l\'écosystème professionnel formel : conseils juridiques et financiers, prestataires clés, partenaires techniques et financiers, réseaux institutionnels ou professionnels. Il mesure votre capacité à ne pas fonctionner en isolement, à sécuriser vos décisions, et à vous entourer de compétences externes utiles à la pérennité et à la croissance de votre entreprise. Il ne s\'agit pas de contacts occasionnels, mais de relations professionnelles identifiées, utiles et effectivement mobilisées.', NULL, 3, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticmoduletypes`
--

CREATE TABLE `diagnosticmoduletypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticmoduletypes`
--

INSERT INTO `diagnosticmoduletypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Tests psychotechniques', 1, '2025-08-13 13:04:35', '2026-01-12 17:30:11'),
(2, 'Niveaux de structuration', 1, '2025-08-13 13:04:48', '2026-01-12 17:29:50'),
(3, 'Tests de classification', 1, '2026-01-12 17:29:06', '2026-01-12 17:49:42');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticquestioncategories`
--

CREATE TABLE `diagnosticquestioncategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticquestions`
--

CREATE TABLE `diagnosticquestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `diagnosticmodule_id` bigint(20) UNSIGNED DEFAULT 0,
  `diagnosticquestiontype_id` bigint(20) UNSIGNED DEFAULT 0,
  `diagnosticquestioncategorie_id` bigint(20) UNSIGNED DEFAULT 0,
  `langue_id` varchar(255) DEFAULT '0',
  `obligatoire` tinyint(1) NOT NULL DEFAULT 0,
  `parent` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticquestions`
--

INSERT INTO `diagnosticquestions` (`id`, `titre`, `position`, `diagnosticmodule_id`, `diagnosticquestiontype_id`, `diagnosticquestioncategorie_id`, `langue_id`, `obligatoire`, `parent`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Termines-tu ce que tu commences ?', '1', 2, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-09-11 22:36:55'),
(2, 'As-tu une vision structurée pour ton activité sur au moins 3 ans ?', '2', 2, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:27'),
(3, 'Quelle est ta principale motivation pour entreprendre ?', '3', 2, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:29'),
(4, 'Comment planifies-tu tes semaines ?', '4', 2, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:31'),
(5, 'Pour une activité nécessitant une équipe : sais-tu fédérer ou déléguer efficacement ?', '5', 2, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:38'),
(6, 'Face à une critique client injuste, comment réagis-tu ?', '6', 3, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:40'),
(7, 'Après un échec ou une mauvaise journée, que fais-tu ?', '7', 3, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:42'),
(8, 'En situation de stress ou de colère, que fais-tu ?', '8', 3, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:51'),
(9, 'Quand tu te compares aux autres entrepreneurs…', '9', 3, 1, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:47'),
(10, '1. Forces personnelles', '10', 4, 2, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:50'),
(11, '2. Faiblesses personnelles', '11', 4, 2, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:55:53'),
(12, '3. Opportunités : Ce qui peut t\'aider autour de toi', '12', 4, 2, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:55:56'),
(13, '4. Menaces : Ce qui peut te freiner ou te décourager autour de toi', '13', 4, 2, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, NULL, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:55:21'),
(14, 'Est-ce que tu sais clairement \"qui fait quoi\" dans ton entreprise ?', '1', 5, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(15, 'Est-ce que les rôles et responsabilités sont bien définis ?', '2', 5, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(16, 'Avez-vous des règles ou méthodes de travail bien définies ?', '3', 5, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(17, 'Avez-vous un système pour bien communiquer et vous organiser entre vous ?', '4', 5, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(18, 'Quelle est la valeur réelle que ton offre apporte aux clients ?', '1', 6, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(19, 'Sais-tu exactement qui est ton client principal ?', '2', 6, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(20, 'Sais-tu comment ton entreprise gagne de l\'argent ?', '3', 6, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(21, 'As-tu testé ton activité sur le terrain avant d’investir beaucoup ?', '4', 6, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(22, 'Ton modèle peut-il être répété ou développé ailleurs (scalable) ?', '5', 6, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(23, 'As-tu une vision claire de ce que tu veux bâtir dans 2 à 3 ans ?', '1', 7, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(24, 'Comment prends-tu les décisions importantes dans ton entreprise ?', '2', 7, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(25, 'Es-tu accompagné·e ou conseillé·e dans tes décisions stratégiques ?', '3', 7, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(26, 'Est-ce que tu appliques des valeurs ou principes dans ta façon de gérer ton activité ?', '4', 7, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(27, 'Comment choisis-tu les personnes qui travaillent avec toi ?', '1', 8, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(28, 'As-tu rédigé des fiches de poste ou des documents clairs pour expliquer le travail à faire ?', '2', 8, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(29, 'As-tu une manière de suivre le travail ou d’évaluer les performances de ceux qui t’aident ?', '3', 8, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(30, 'As-tu prévu de former ton équipe ou toi-même pour progresser ?', '4', 8, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(31, 'Est-ce que ton entreprise est enregistrée officiellement ?', '1', 9, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(32, 'Est-ce que tu es à jour dans le paiement de tes impôts et taxes ?', '2', 9, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(33, 'Est-ce que tu as ouvert un compte CNSS pour toi ou ton personnel ?', '3', 9, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(34, 'Est-ce que tu respectes les règles ou normes propres à ton activité ?', '4', 9, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(35, 'Est-ce que tu tiens ta comptabilité régulièrement ?', '1', 10, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(36, 'As-tu une idée claire de tes marges et de ta rentabilité ?', '2', 10, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(37, 'As-tu un budget prévisionnel ou un plan de trésorerie ?', '3', 10, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(38, 'As-tu accès à un financement formel (banque, microfinance, subvention…) ?', '4', 10, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(39, 'Utilises-tu des outils numériques pour gérer ton activité ?', '1', 11, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(40, 'As-tu une présence en ligne ?', '2', 11, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(41, 'Utilises-tu des outils de communication digitale avec tes clients ou ton équipe ?', '3', 11, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(42, 'Tes données (clients, finances, stock…) sont-elles sécurisées et sauvegardées ?', '4', 11, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(43, 'As-tu un plan pour développer ton activité dans les mois ou années à venir ?', '1', 12, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(44, 'As-tu des partenaires solides qui t’aident dans ton développement ?', '2', 12, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(45, 'Participes-tu à des programmes ou événements qui te permettent de progresser ?', '3', 12, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(46, 'Est-ce que tu innoves ou fais évoluer ton offre ?', '4', 12, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(47, 'Aujourd’hui, comment décririez-vous la vision de votre entreprise (ce que vous voulez qu’elle devienne à moyen ou long terme) ?', '1', 13, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(48, 'Votre entreprise s’est-elle fixé des objectifs précis pour l’année en cours ?', '2', 13, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(49, 'Comment organisez-vous concrètement les actions à mener pour atteindre vos objectifs ?', '3', 13, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(50, 'Comment prenez-vous les décisions importantes pour votre entreprise ?', '4', 13, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(51, 'Suivez-vous régulièrement des indicateurs pour savoir si votre entreprise progresse ou non ?', '5', 13, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(52, 'Aujourd’hui, quelle est la situation juridique réelle de votre entreprise ?', '1', 14, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(53, 'Vos documents juridiques sont-ils disponibles et à jour ?', '2', 14, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(54, 'Comment sécurisez-vous vos relations avec vos clients et vos fournisseurs ?', '3', 14, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(55, 'Comment gérez-vous vos obligations fiscales et sociales (impôts, taxes, déclarations, cotisations) ?', '4', 14, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(56, 'Votre activité bénéficie-t-elle d\'une assurance ou d\'une couverture minimale adaptée ?', '5', 14, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(57, 'Comment tenez-vous aujourd\'hui la comptabilité de votre entreprise ?', '1', 15, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(58, 'Séparez-vous clairement vos finances personnelles de celles de votre entreprise ?', '2', 15, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(59, 'Disposez-vous d\'un budget annuel pour piloter votre activité ?', '3', 15, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(60, 'Comment suivez-vous la trésorerie de votre entreprise au quotidien ?', '4', 15, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(61, 'Disposez-vous de documents financiers exploitables pour comprendre et piloter votre entreprise ?', '5', 15, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(62, 'Les rôles et responsabilités au sein de votre entreprise sont-ils clairement définis ?', '1', 16, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(63, 'Disposez-vous de procédures ou de règles claires pour réaliser les tâches clés ?', '2', 16, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(64, 'Comment est organisée l\'exécution du travail au quotidien ?', '3', 16, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(65, 'Dans quelle mesure les délais sont-ils respectés dans votre entreprise ?', '4', 16, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(66, 'Êtes-vous en mesure de déléguer efficacement des tâches et des responsabilités ?', '5', 16, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(67, 'Quelle est la situation actuelle de votre équipe ?', '1', 17, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(68, 'Comment sont formalisées les relations de travail dans votre entreprise ?', '2', 17, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(69, 'Les compétences nécessaires au bon fonctionnement de votre entreprise sont-elles clairement identifiées ?', '3', 17, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(70, 'Comment développez-vous les compétences au sein de votre entreprise ?', '4', 17, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(71, 'Votre entreprise dispose-t-elle d\'une culture d\'entreprise identifiable (valeurs, règles de fonctionnement, comportements attendus) ?', '5', 17, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(72, 'Votre offre (produit ou service) est-elle clairement définie et compréhensible ?', '1', 18, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(73, 'Comment se présentent vos ventes et votre clientèle aujourd\'hui ?', '2', 18, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(74, 'Connaissez-vous précisément le marché auquel vous vous adressez ?', '3', 18, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(75, 'Comment fixez-vous les prix de vos produits ou services ?', '4', 18, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(76, 'Comment suivez-vous la satisfaction de vos clients ?', '5', 18, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(77, 'Votre entreprise est-elle capable de livrer correctement ce qu\'elle vend ?', '1', 19, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(78, 'Comment se passe le respect des délais et de la qualité dans vos livraisons ?', '2', 19, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(79, 'Vos moyens techniques et matériels sont-ils adaptés à votre activité ?', '3', 19, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(80, 'Comment votre entreprise gère-t-elle les imprévus et difficultés opérationnelles ?', '4', 19, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(81, 'Disposez-vous d\'un historique clair de vos projets ou réalisations passées ?', '5', 19, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(82, 'Quels outils numériques utilisez-vous réellement pour gérer votre activité ?', '1', 20, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(83, 'Comment conservez-vous les documents importants de votre entreprise ?', '2', 20, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(84, 'Réalisez-vous un suivi ou un reporting régulier de vos activités ?', '3', 20, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(85, 'Quelle est la visibilité actuelle de votre entreprise en ligne ?', '4', 20, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(86, 'Disposez-vous de données exploitables pour prendre des décisions ?', '5', 20, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(87, 'Disposez-vous d\'un bureau ou d\'un espace de travail clairement identifié pour votre activité ?', '1', 21, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(88, 'Votre activité nécessite-t-elle un atelier, un espace technique ou une zone de production, et si oui, est-il fonctionnel ?', '2', 21, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(89, 'Disposez-vous d\'un espace dédié à la vente ou à la présentation de vos produits/services ?', '3', 21, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(90, 'Les équipements dont vous disposez sont-ils adaptés à votre activité ?', '4', 21, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(91, 'Les locaux et espaces utilisés sont-ils sécurisés et accessibles ?', '5', 21, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(92, 'Votre entreprise est-elle accompagnée sur les questions juridiques ?', '1', 22, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(93, 'Votre entreprise est-elle accompagnée sur les aspects comptables et de gestion ?', '2', 22, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(94, 'Travaillez-vous avec des professionnels spécialisés nécessaires à votre activité (notaire, huissier, géomètre, architecte, bureau d\'études, etc., selon votre secteur) ?', '3', 22, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(95, 'Votre entreprise dispose-t-elle de relations professionnelles stables et utiles, à la fois avec des partenaires financiers (banques, microfinances, assureurs, investisseurs) et des partenaires techniques crédibles (expert en gestion, informaticien, graphi', '4', 22, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(96, 'Votre entreprise est-elle intégrée dans un réseau professionnel ou institutionnel actif ?', '5', 22, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticquestiontypes`
--

CREATE TABLE `diagnosticquestiontypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticquestiontypes`
--

INSERT INTO `diagnosticquestiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Choix unique', 1, '2025-07-29 12:55:21', '2025-07-29 12:55:21'),
(2, 'Choix multiple', 1, '2025-07-29 12:55:42', '2025-07-29 12:55:42');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticreponses`
--

CREATE TABLE `diagnosticreponses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `position` int(11) DEFAULT 0,
  `score` int(11) DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `diagnosticquestion_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticreponses`
--

INSERT INTO `diagnosticreponses` (`id`, `titre`, `position`, `score`, `langue_id`, `diagnosticquestion_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Toujours, je vais jusqu’au bout même avec des obstacles', 1, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 14:01:58'),
(2, 'Souvent, mais je ralentis si je rencontre un challenge difficile à surmonter', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(3, 'Parfois, je commence beaucoup de choses mais j’abandonne si c’est trop difficile', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(4, 'Non, honnêtement je me décourage facilement et j’abandonne avant la moitié face à un obstacle', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(5, 'Oui, claire, formalisée (écrite) avec des jalons chiffrés', 1, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(6, 'Oui, présente mais non structurée (floue, non rédigée)', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(7, 'J’y réfléchis, mais rien n’est défini ni documenté', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(8, 'Non, je vis au jour le jour', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(9, 'Réaliser une vision personnelle & contribuer à la société', 1, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(10, 'Innover, créer quelque chose de nouveau', 2, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(11, 'Obtenir indépendance financière et réussite professionnelle', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(12, 'Assurer un revenu stable, échapper à un besoin immédiat', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(13, 'Je ne suis pas vraiment motivé·e, je réponds surtout à une pression extérieure', 5, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(14, 'J’ai un agenda hebdo, je définis 3 priorités et je bloque du temps pour chaque', 1, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(15, 'Je note les tâches importantes de la semaine, mais sans horaire précis', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(16, 'Je me fie à ma mémoire et une simple todo list', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(17, 'Je ne planifie pas : je réagis au jour le jour', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(18, 'Oui : je motive, je choisis la bonne personne, je donne des consignes claires et je fais un suivi avec feedback', 1, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(19, 'Je travaille en équipe, mais c’est parfois compliqué', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(20, 'Je préfère tout faire seul, car c’est plus rapide ou sûr', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(21, 'Je n’ai jamais dirigé ni travaillé en équipe', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(22, 'A. Je garde mon calme, j’écoute sans interrompre. Je prends du recul pour comprendre son point de vue, puis je lui réponds avec respect et fermeté, en posant des limites claires.', 1, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 6, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(23, 'B. Je reste poli·e en apparence, mais je suis blessé·e ou frustré·e à l’intérieur. Je ne cherche pas à comprendre, j’évite le conflit, même si je garde tout pour moi.', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 6, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(24, 'C. Je me ferme, je m’énerve ou je réponds sur le même ton. Parfois, je ne dis rien et j’attends que ça passe.', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 6, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(25, 'A. J’analyse ce qui n’a pas fonctionné et je note ce que je peux en apprendre.', 1, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 7, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(26, 'B. J’en parle avec quelqu’un : un ami, un mentor ou un collègue.', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 7, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(27, 'C. Je le laisse de côté : je passe à autre chose sans vraiment digérer ce qui s’est passé.', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 7, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(28, 'A. Je prends du recul : je m’arrête, je respire profondément, et j’attends quelques instants.', 1, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 8, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(29, 'B. Je réagis vite, sans réfléchir.', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 8, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(30, 'C. Je crie, je m’énerve, ou je me ferme complètement.', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 8, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(31, 'A. Ça me motive : je regarde ce qu’ils font de mieux et je m’en inspire.', 1, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 9, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(32, 'B. Parfois ça me décourage : je me sens en retard ou moins bon·ne.', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 9, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(33, 'C. Je me sens incapable : je perds confiance, je doute de moi.', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 9, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(34, 'Curieux·se ou plein·e d’idées', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(35, 'Très énergique + structuré·e', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(36, 'Bon·ne à écouter + empathique', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(37, 'Résilient·e : tu rebondis après un échec', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(38, 'Tu as un bon réseau ou un soutien familial', 5, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(39, 'Tu maîtrises bien ton métier', 6, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(40, 'Tu as une bonne stabilité financière', 7, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(41, 'Je suis seul(e), je n’ai personne pour m’aider ou me conseiller', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(42, 'Ma situation familiale ou personnelle me pèse', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(43, 'Je ne maîtrise pas bien mon métier ou les outils qu’il faut', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(44, 'Je doute beaucoup de moi', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(45, 'Je repousse souvent ce que je dois faire', 5, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(46, 'Je me décourage facilement quand ça ne marche pas vite', 6, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(47, 'J’ai du mal à m’organiser ou à me discipliner', 7, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(48, 'Il existe des aides ou subventions accessibles là où je suis', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(49, 'Je peux suivre des formations utiles près de chez moi ou en ligne', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(50, 'Les gens autour de moi ont vraiment besoin de ce que je propose', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(51, 'Je connais quelqu’un (ou j’ai une piste) pour m’aider financièrement ou techniquement', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(52, 'Je fais partie d’un groupe ou d’un réseau d’entrepreneurs', 5, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(53, 'La loi et les papiers ne me bloquent pas trop pour travailler', 6, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(54, 'Je peux avoir un crédit ou une aide financière si je prépare bien mon dossier', 7, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(55, 'Il y a trop de personnes qui vendent la même chose que moi, souvent à bas prix', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(56, 'Les lois, les papiers ou les conditions changent tout le temps', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(57, 'Les taxes ou frais à payer sont trop lourds pour moi', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(58, 'Je vois souvent du favoritisme ou de la corruption dans les démarches', 4, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(59, 'Les gens autour de moi n’ont pas assez d’argent pour acheter régulièrement', 5, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(60, 'Il y a de l’insécurité ou de l’instabilité là où je travaille', 6, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(61, 'Faire les démarches administratives prend trop de temps et d’énergie', 7, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(62, 'Oui, j’ai un organigramme clair, écrit et à jour', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 14, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(63, 'Oui, tout est clair dans ma tête, mais ce n’est pas formalisé (rédigé)', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 14, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(64, 'Je travaille seul(e), donc je fais tout', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 14, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(65, 'Non, je ne sais pas comment organiser ça, j’ai besoin d’aide', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 14, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(66, 'Oui, chaque personne a une fiche de poste écrite et claire', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 15, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(67, 'C’est expliqué oralement, mais ce n’est pas écrit', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 15, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(68, 'Chacun fait un peu de tout selon les jours', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 15, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(69, 'Je gère tout seul·e, je ne délègue rien', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 15, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(70, 'Oui, tout est écrit, expliqué et suivi', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 16, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(71, 'On a quelques méthodes connues, mais pas écrites', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 16, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(72, 'On improvise selon les cas, sans méthode fixe', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 16, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(73, 'Il n’y a pas de méthode claire, c’est difficile', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 16, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(74, 'Oui, on a un bon système : réunions régulières + outils partagés', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 17, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(75, 'On échange souvent mais de façon informelle (ex. WhatsApp)', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 17, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(76, 'On communique peu, c’est un peu désorganisé', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 17, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(77, 'Je travaille seul·e ou chacun est isolé, on se parle juste en cas d’urgence', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 17, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(78, 'Mon offre est semblable à celle des autres. Les clients n’ont pas vraiment de raison de me choisir', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 18, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(79, 'Il y a quelques différences : prix, service, qualité ou accessibilité, mais rien d’unique', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 18, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(80, 'Mon offre est vraiment distincte, bien pensée, difficile à copier, et appréciée pour ça', 3, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 18, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(81, 'Je connais très bien mon client : qui il est, ce qu’il aime, combien il peut payer, où le trouver', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 19, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(82, 'J’ai une idée vague, je sais “plus ou moins” à qui je m’adresse, mais ce n’est pas très précis', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 19, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(83, 'Je vends à qui veut, je n’ai pas de cible claire. Pour moi, “tout le monde peut acheter”', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 19, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(84, 'Oui, je connais mes prix, mes coûts, mes marges. Je sais ce que je gagne sur chaque vente', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 20, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(85, 'Je vends mais je ne suis pas certain(e) de mes vrais bénéfices. Je ne calcule pas toujours', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 20, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(86, 'Je fixe les prix au hasard ou en copiant les autres, sans savoir si c’est rentable', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 20, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(87, 'Oui, j’ai testé pendant un moment avec de vrais clients (ventes réelles, retours, adaptation)', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 21, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(88, 'J’ai demandé des avis autour de moi, mais je n’ai pas fait de vrais tests avant de me lancer', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 21, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(89, 'Non, je n’ai rien testé. J’ai tout lancé directement sans savoir si ça allait marcher', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 21, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(90, 'Oui, je peux ouvrir la même activité dans d’autres villes, zones, ou même à l’étranger', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 22, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(91, 'Peut-être, mais je n’ai pas encore pensé à comment le faire concrètement', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 22, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(92, 'Non, mon activité dépend trop d’un lieu, d’une personne ou d’un contexte difficile à copier', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 22, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(93, 'Oui, c’est clair dans ma tête ou sur papier : je sais où je vais, avec des objectifs précis', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 23, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(94, 'J’ai des idées, mais elles ne sont pas encore très claires ni bien organisées', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 23, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(95, 'Pour l’instant, je me concentre sur le quotidien. Le long terme, ce sera pour plus tard', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 23, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(96, 'Honnêtement, je gère au jour le jour, je n’ai pas encore de vraie direction', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 23, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(97, 'Je réfléchis, je consulte les bonnes personnes, et je pèse les options avant de trancher', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 24, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(98, 'Je décide seul·e, mais je demande parfois l’avis des autres', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 24, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(99, 'Je décide surtout au feeling, sans vraie méthode', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 24, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(100, 'Je laisse les choses se faire, j’attends souvent que d’autres décident pour moi', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 24, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(101, 'Oui, j’ai un accompagnateur ou un réseau que je consulte régulièrement', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 25, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(102, 'Je connais quelques personnes vers qui je me tourne si besoin', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 25, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(103, 'Je n’ai personne avec qui échanger, je réfléchis tout·e seul·e', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 25, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(104, 'Je n’ai jamais cherché d’aide ou de mentorat, ce n’est pas mon truc', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 25, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(105, 'Oui, j’ai défini mes principes et je les applique, même quand c’est difficile', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 26, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(106, 'J’essaie d’être juste, mais je m’adapte selon les situations pour survivre', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 26, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(107, 'Je fais surtout ce qui m’arrange ou ce que tout le monde fait', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 26, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(108, 'Je ne me suis jamais posé la question, je fais juste de mon mieux pour tenir', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 26, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(109, 'Je recrute avec un profil précis, selon des critères clairs, et j’explique bien les attentes', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 27, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(110, 'Je choisis les gens selon leur motivation ou relation, mais je n’ai pas de méthode claire', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 27, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(111, 'Je travaille avec ceux qui sont disponibles, même sans expérience', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 27, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(112, 'Je n’ai jamais eu besoin de recruter', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 27, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(113, 'Oui, chaque poste a un document clair (missions, responsabilités, résultats attendus)', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 28, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(114, 'J’explique les tâches oralement, mais ce n’est pas écrit', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 28, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(115, 'Chacun se débrouille, on s’adapte en fonction du jour', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 28, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(116, 'Je suis seul·e, ou je fais tout moi-même', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 28, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(117, 'Oui, je fais un suivi régulier (hebdomadaire ou mensuel) et je donne du feedback', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 29, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(118, 'J’essaie de voir si le travail avance, mais sans vrai système', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 29, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(119, 'Je ne contrôle pas vraiment, sauf en cas de gros problème', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 29, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(120, 'Je n’ai jamais eu à suivre quelqu’un, je travaille seul·e', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 29, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(121, 'Oui, je planifie des formations ou des temps d’apprentissage selon les besoins', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 30, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(122, 'Je donne quelques conseils ou j’apprends “sur le tas”', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 30, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(123, 'Je n’y ai jamais pensé ou je n’ai pas de temps pour ça', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 30, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(124, 'Je n’ai pas d’équipe ou je ne me forme pas actuellement', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 30, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(125, 'Oui, j’ai tous les documents légaux requis, à jour', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 31, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(126, 'J’ai commencé les démarches ou j’ai une reconnaissance partielle', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 31, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(127, 'J’exerce sans immatriculation pour l’instant', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 31, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(128, 'Je ne sais pas comment faire ou à qui m’adresser', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 31, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(129, 'Oui, je déclare et je paie régulièrement ce qui est exigé', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 32, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(130, 'Je paie certaines taxes, mais pas tout ou pas toujours à temps', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 32, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(131, 'Je ne paie pas, je n’ai pas les moyens de supporter toutes les charges', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 32, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(132, 'Je n’ai jamais rien payé, je crains les contrôles ou sanctions', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 32, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(133, 'Oui, j’ai un numéro CNSS et je déclare régulièrement', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 33, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(134, 'Je connais la CNSS mais je ne suis pas encore inscrit', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 33, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(135, 'Je ne sais pas comment fonctionne la CNSS', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 33, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(136, 'Je ne pense pas que ce soit nécessaire dans mon cas', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 33, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(137, 'Oui, je sais tout ce qu’il fait et j’ai tous les agréments ou autorisations nécessaires', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 34, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(138, 'J’en connais quelques-uns, mais je ne suis pas encore en règle totalement', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 34, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(139, 'Je n’ai aucune autorisation officielle, je travaille comme je peux', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 34, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(140, 'Je ne suis pas au courant qu’il y a des règles à respecter', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 34, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(141, 'Oui, j’ai une comptabilité à jour, avec livre de recettes/dépenses ou logiciel de gestion', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 35, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(142, 'Je note mes dépenses et revenus, mais pas de façon organisée et systématique', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 35, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(143, 'Je garde quelques reçus ou comptes approximatifs dans ma tête', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 35, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(144, 'Je ne note rien du tout, je ne m’en occupe pas', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 35, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(145, 'Oui, je calcule mes marges par produit/service et je connais mon seuil de rentabilité', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 36, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(146, 'J’ai une idée approximative, mais je ne fais pas de calcul précis', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 36, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(147, 'Je sais combien je vends, mais pas combien il me reste vraiment', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 36, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(148, 'Je ne me suis jamais posé la question', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 36, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(149, 'Oui, j’ai un budget/planning de trésorerie pour les prochains mois', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 37, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(150, 'J’essaie de prévoir mentalement, mais ce n’est pas formalisé ou écrit', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 37, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(151, 'Je vis au jour le jour, je vois au fur et à mesure', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 37, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(152, 'Je ne sais pas comment faire cela', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 37, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(153, 'Oui, j’ai déjà obtenu un crédit ou une subvention pour mon activité', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 38, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(154, 'J’ai fait des démarches ou j’ai des pistes', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 38, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(155, 'Je n’ai jamais essayé, je ne sais pas à qui m’adresser', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 38, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(156, 'Je pense que ce n’est pas fait pour moi', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 38, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(157, 'Oui, j’utilise un ou plusieurs logiciels (ex. : Excel, CRM, facturation, gestion commerciale)', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 39, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(158, 'J’utilise un peu le numérique mais ce n’est pas régulier ni organisé', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 39, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(159, 'Je fais tout à la main, sans outil numérique', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 39, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(160, 'Je ne vois pas encore l’intérêt d’utiliser le numérique', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 39, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(161, 'Oui, j’ai au moins un canal actif avec des publications fréquentes', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 40, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(162, 'J’ai une page ou un compte, mais je l’utilise rarement', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 40, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(163, 'J’ai commencé à créer quelque chose, mais ce n’est pas encore prêt', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 40, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(164, 'Je n’ai aucune présence en ligne', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 40, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(165, 'Oui, j’ai mis en place des canaux clairs pour échanger efficacement', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 41, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(166, 'On communique par téléphone ou WhatsApp au cas par cas', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 41, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(167, 'On n’utilise aucun canal précis, chacun se débrouille', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 41, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(168, 'Je travaille seul(e), donc je n’ai pas mis ça en place', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 41, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(169, 'Oui, je protège mes données et je fais des sauvegardes régulières', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 42, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(170, 'Je garde des infos quelque part mais ce n’est pas sécurisé', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 42, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(171, 'Je garde tout dans mon téléphone ou ma tête', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 42, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(172, 'Je n’ai aucune organisation pour mes données', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 42, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(173, 'Oui, j’ai un plan clair, écrit ou bien pensé, avec des étapes', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 43, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(174, 'J’ai des idées de développement, mais ce n’est pas encore structuré', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 43, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(175, 'Je n’ai pas encore pensé à ça, je me concentre sur ce que je fais déjà', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 43, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(176, 'Je ne pense pas que ce soit possible pour mon activité', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 43, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(177, 'Oui, j’ai des partenaires actifs avec qui je travaille ou collabore', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 44, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(178, 'J’ai quelques contacts, mais ce ne sont pas encore des partenariats solides', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 44, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(179, 'Je travaille seul·e, sans partenaire', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 44, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(180, 'Je n’ai jamais cherché à créer de partenariat', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 44, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(181, 'Oui, régulièrement. Je me forme, je postule à des programmes ou j’expose mon activité', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 45, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(182, 'De temps en temps, quand j’en entends parler', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 45, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(183, 'Rarement ou jamais. Je ne suis pas connecté·e à ces opportunités', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 45, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(184, 'Je ne vois pas en quoi cela pourrait m’aider pour le moment', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 45, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(185, 'Oui, j’améliore ou adapte régulièrement mes produits/services', 1, 5, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 46, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(186, 'J’y pense parfois, mais ce n’est pas encore une habitude', 2, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 46, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(187, 'Je ne change rien. Ce que je propose reste le même', 3, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 46, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(188, 'Je ne vois pas l’intérêt de changer ce qui fonctionne déjà', 4, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 46, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(189, 'Je n’ai jamais réellement formalisé où je veux aller avec mon entreprise', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 150, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(190, 'Je fonctionne surtout au jour le jour, en saisissant les opportunités au fur et à mesure', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 150, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(191, 'J’ai une idée générale de la direction à prendre, mais elle reste dans ma tête', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 150, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(192, 'La vision existe, mais elle n’est ni écrite ni partagée avec l’équipe', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 150, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(193, 'La vision est clairement définie et formalisée par écrit', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 150, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(194, 'La vision est écrite, réaliste et connue au moins des personnes clés de l’entreprise', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 150, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(195, 'Aucun objectif annuel n’a été défini', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 151, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(196, 'Je travaille sans objectifs clairs pour l’année', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 151, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(197, 'Des objectifs existent, mais ils sont vagues ou non chiffrés', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 151, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(198, 'J’ai des objectifs en tête, mais ils ne sont pas formalisés par écrit', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 151, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(199, 'Les objectifs annuels sont clairement définis et écrits', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 151, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(200, 'Les objectifs annuels servent réellement de référence pour orienter l\'activité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 151, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(201, 'Je n’ai pas de plan précis et je réagis principalement aux urgences', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 152, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(202, 'Je sais ce qu’il faut faire, mais sans organisation structurée', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 152, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(203, 'J’élabore parfois un plan, mais je ne l’utilise pas de manière systématique', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 152, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(204, 'Certaines actions sont notées, mais sans suivi réel', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 152, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(205, 'Je travaille avec un plan d\'actions écrit et structuré', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 152, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(206, 'Mon plan d\'actions est chiffré, suivi et ajusté en fonction des résultats', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 152, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(207, 'Je décide seul(e), au cas par cas, sans méthode particulière', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 153, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(208, 'Les décisions sont souvent prises dans l\'urgence', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 153, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(209, 'Je discute parfois avec d’autres personnes, de manière informelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 153, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(210, 'Je m\'appuie sur mon expérience, sans cadre formel de décision', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 153, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(211, 'Les décisions importantes sont prises de manière structurée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 153, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(212, 'Je m\'appuie sur des éléments concrets (données, échanges formels, arbitrages) pour décider', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 153, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(213, 'Je ne suis aucun indicateur de manière régulière', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 154, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(214, 'Je n’ai pas d\'outils ou de données fiables pour suivre la performance', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 154, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(215, 'Je consulte certains chiffres de temps en temps, sans suivi structuré', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 154, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(216, 'Le suivi existe, mais il n’influence pas vraiment mes décisions', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 154, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(217, 'Je suis régulièrement des indicateurs simples mais précis', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 154, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(218, 'J\'utilise ces indicateurs pour ajuster mes décisions et piloter l’entreprise', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 154, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(219, 'Mon activité n\'est pas enregistrée officiellement et j\'exerce sans existence légale reconnue', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 155, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(220, 'La formalisation est en cours ou partiellement achevée, sans être totalement opérationnelle', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 155, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(221, 'L\'entreprise est formalisée, mais son statut juridique n\'est pas pleinement opérationnel', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 155, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(222, 'L\'entreprise est légalement reconnue, mais certains éléments administratifs restent incomplets', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 155, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(223, 'L\'entreprise est légalement enregistrée, avec l\'ensemble des documents requis', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 155, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(224, 'Le statut juridique est conforme à l\'activité exercée, cohérent avec la vision de l\'entreprise et pleinement opérationnel', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 155, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(225, 'Je ne dispose d\'aucun document juridique exploitable', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 156, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(226, 'Je ne sais pas clairement quels documents juridiques mon entreprise devrait posséder', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 156, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(227, 'Les documents existent, mais ils ne sont pas à jour', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 156, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(228, 'Certains documents juridiques sont manquants ou rarement utilisés', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 156, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(229, 'Les documents juridiques essentiels sont complets, disponibles et à jour', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 156, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(230, 'Je suis en mesure de produire rapidement mes documents en cas de contrôle, de partenariat ou d\'opportunité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 156, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(231, 'Je fonctionne sans contrat écrit', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 157, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(232, 'Les engagements sont essentiellement verbaux ou basés sur la confiance', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 157, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(233, 'Certains accords sont formalisés, mais de manière informelle ou occasionnelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 157, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(234, 'Les contrats existent, mais ne sont pas systématiques dans les relations commerciales', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 157, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(235, 'J\'utilise des contrats écrits pour sécuriser l\'ensemble de mes relations commerciales', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 157, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(236, 'Les contrats sont obligatoires dans mon activité et utilisés de manière régulière et structurée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 157, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(237, 'Je ne respecte pas ou très peu ces obligations', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 158, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(238, 'Je ne maîtrise pas réellement mes obligations fiscales et sociales', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 158, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(239, 'Certaines obligations sont respectées, mais je ne les comprends pas clairement', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 158, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(240, 'Je règle mes obligations principalement lorsque je suis sollicité ou relancé', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 158, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(241, 'Mes obligations fiscales et sociales sont comprises et respectées de manière régulière', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 158, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(242, 'Je connais mes échéances et j\'anticipe mes déclarations et paiements', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 158, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(243, 'Je n\'ai aucune assurance ou couverture pour mon activité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 159, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(244, 'Je ne me suis jamais réellement interrogé sur l\'utilité ou l\'importance d\'une assurance', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 159, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(245, 'Je réfléchis à souscrire une assurance ou j\'ai entamé des démarches', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 159, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(246, 'Une couverture existe, mais uniquement celle exigée de façon obligatoire, sans analyse réelle des risques', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 159, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(247, 'Mon activité est couverte par une assurance adaptée à ma réalité et effectivement active', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 159, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(248, 'Je connais les risques couverts et j\'actualise la couverture lorsque nécessaire', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 159, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(249, 'Je ne tiens aucune comptabilité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 160, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(250, 'Je n\'ai aucun outil ou support pour suivre mes opérations financières', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 160, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(251, 'Je tiens une comptabilité de manière irrégulière ou approximative', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 160, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(252, 'Certaines opérations sont enregistrées, mais pas de façon systématique', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 160, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(253, 'La comptabilité est tenue de manière régulière', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 160, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(254, 'Les opérations sont enregistrées de façon organisée et suivie', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 160, 0, 1, '2026-01-12 19:57:40', '2026-01-12 19:57:40'),
(255, 'Les finances personnelles et celles de l\'entreprise sont totalement mélangées', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 161, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(256, 'Je puise dans la caisse de l\'entreprise sans distinction claire', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 161, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(257, 'Une séparation existe partiellement, mais elle n\'est pas toujours respectée', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 161, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(258, 'Certains flux sont séparés, d\'autres restent confondus', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 161, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(259, 'Les finances personnelles et professionnelles sont totalement séparées', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 161, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(260, 'Les mouvements entre moi et l\'entreprise sont clairement identifiés et tracés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 161, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(261, 'Je ne dispose d\'aucun budget', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 162, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(262, 'Je fonctionne sans prévision financière', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 162, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(263, 'J\'ai une estimation globale de mes dépenses et recettes', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 162, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(264, 'Le budget existe de manière approximative, sans document formalisé', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 162, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(265, 'Je dispose d\'un budget annuel écrit', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 162, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(266, 'Le budget est utilisé pour anticiper les charges, les investissements et les besoins de trésorerie', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 162, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(267, 'Je ne sais pas exactement combien d\'argent l\'entreprise a à un moment donné', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 163, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(268, 'Je découvre souvent les difficultés de trésorerie trop tard', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 163, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(269, 'J\'ai une idée approximative de la trésorerie', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 163, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(270, 'Le suivi existe, mais il n\'est pas régulier ni fiable', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 163, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(271, 'Je dispose d\'un suivi clair et régulier de la trésorerie', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 163, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(272, 'Le suivi de trésorerie me permet d\'anticiper les tensions et de prendre des décisions', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 163, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(273, 'Je ne dispose d\'aucun état financier', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 164, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(274, 'Je ne sais pas produire de documents financiers lisibles', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 164, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(275, 'J\'ai des documents financiers très basiques, difficiles à exploiter', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 164, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(276, 'Les chiffres existent, mais ils servent peu à la prise de décision', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 164, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(277, 'Je dispose d\'états financiers lisibles et compréhensibles', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 164, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(278, 'J\'utilise ces documents pour analyser la performance et orienter mes décisions', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 164, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(279, 'Aucun rôle n\'est clairement défini', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 165, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(280, 'Tout repose essentiellement sur moi', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 165, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(281, 'Les rôles existent, mais uniquement de manière orale', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 165, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(282, 'Chacun sait globalement ce qu\'il doit faire, sans cadre écrit', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 165, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(283, 'Les rôles et responsabilités sont définis par écrit', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 165, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(284, 'Chaque personne sait précisément ce qui relève de sa responsabilité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 165, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41');
INSERT INTO `diagnosticreponses` (`id`, `titre`, `position`, `score`, `langue_id`, `diagnosticquestion_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(285, 'Aucune procédure n\'existe', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 166, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(286, 'Le travail se fait au cas par cas, sans méthode commune', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 166, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(287, 'Quelques consignes ou notes existent, mais elles sont incomplètes', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 166, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(288, 'Les procédures ne sont pas systématiquement suivies', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 166, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(289, 'Des procédures claires existent pour les tâches essentielles', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 166, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(290, 'Ces procédures sont connues et appliquées par l\'équipe', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 166, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(291, 'L\'organisation est désordonnée et dépend des urgences', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 167, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(292, 'Le travail se fait sans planification claire', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 167, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(293, 'L\'organisation existe, mais elle manque de clarté ou de régularité', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 167, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(294, 'Certaines tâches sont planifiées, d\'autres non', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 167, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(295, 'L\'organisation du travail est claire et structurée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 167, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(296, 'Les tâches sont planifiées, suivies et exécutées selon un cadre connu', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 167, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(297, 'Les délais sont rarement respectés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 168, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(298, 'Les retards sont fréquents et peu anticipés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 168, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(299, 'Les délais sont parfois respectés, parfois non', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 168, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(300, 'Les retards sont gérés, mais souvent dans l\'urgence', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 168, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(301, 'Les délais sont généralement respectés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 168, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(302, 'Les retards sont anticipés, expliqués et maîtrisés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 168, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(303, 'Je ne peux pas déléguer, tout dépend de moi', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 169, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(304, 'L\'entreprise ne fonctionne pas sans ma présence', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 169, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(305, 'Je délègue certaines tâches, mais de manière limitée', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 169, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(306, 'La délégation existe, mais reste fragile', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 169, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(307, 'Je délègue de manière fonctionnelle et organisée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 169, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(308, 'L\'entreprise peut fonctionner normalement en mon absence', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 169, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(309, 'Je travaille seul(e), sans équipe', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 170, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(310, 'L\'activité repose uniquement sur moi', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 170, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(311, 'Je fais appel à des aides occasionnelles ou temporaires', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 170, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(312, 'L\'équipe change fréquemment et manque de stabilité', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 170, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(313, 'Je dispose d\'une équipe stable, même réduite', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 170, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(314, 'Les personnes clés sont présentes de manière régulière et durable', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 170, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(315, 'Il n\'existe aucun contrat ni accord clair', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 171, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(316, 'Les relations de travail reposent uniquement sur la confiance', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 171, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(317, 'Des accords existent, mais uniquement de manière verbale', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 171, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(318, 'Les règles sont connues, mais non formalisées par écrit', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 171, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(319, 'Les relations de travail sont encadrées par des contrats ou accords écrits', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 171, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(320, 'Les rôles, obligations et conditions sont clairement définis par écrit', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 171, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(321, 'Les compétences ne sont pas identifiées', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 172, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(322, 'Je recrute ou fais appel à des personnes sans analyse précise des compétences', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 172, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(323, 'Certaines compétences sont identifiées, mais de manière partielle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 172, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(324, 'Les besoins en compétences sont connus, sans être clairement formalisés', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 172, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(325, 'Les compétences clés nécessaires à l\'activité sont clairement identifiées', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 172, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(326, 'Je sais quelles compétences renforcer ou recruter selon l\'évolution de l\'entreprise', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 172, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(327, 'Aucune action de formation n\'est menée', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 173, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(328, 'Les compétences évoluent uniquement par l\'expérience informelle', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 173, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(329, 'Des formations ont lieu de manière rare ou ponctuelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 173, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(330, 'La formation existe, mais sans plan ni continuité', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 173, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(331, 'Des actions de formation sont menées de manière régulière', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 173, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(332, 'La formation est utilisée comme un levier de performance et d\'amélioration continue', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 173, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(333, 'Il n\'existe aucune culture d\'entreprise clairement identifiable', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 174, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(334, 'Chacun fonctionne selon sa propre manière de faire', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 174, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(335, 'Une culture existe de façon informelle, sans être clairement définie', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 174, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(336, 'Certaines valeurs sont connues, mais peu partagées', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 174, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(337, 'La culture d\'entreprise est clairement identifiée et partagée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 174, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(338, 'Les valeurs et règles de fonctionnement guident les comportements au quotidien', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 174, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(339, 'Mon offre est floue ou change selon les opportunités', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 175, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(340, 'J\'ai du mal à expliquer clairement ce que je vends', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 175, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(341, 'Mon offre est globalement définie, mais manque encore de clarté', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 175, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(342, 'L\'offre est comprise par certains clients, mais pas par tous', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 175, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(343, 'Mon offre est clairement définie et facile à comprendre', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 175, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(344, 'Les clients savent exactement ce que je propose et ce que cela leur apporte', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 175, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(345, 'Je n\'ai pas de clients réguliers', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 176, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(346, 'Les ventes sont rares ou très irrégulières', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 176, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(347, 'J\'ai des clients occasionnels', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 176, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(348, 'Les ventes existent, mais sans réelle stabilité', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 176, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(349, 'J\'ai des clients réguliers', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 176, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(350, 'Une partie de mes clients revient de manière récurrente', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 176, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(351, 'Je ne sais pas clairement à quel type de client je m\'adresse', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 177, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(352, 'Je vends à toute personne intéressée, sans ciblage précis', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 177, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(353, 'J\'ai une idée approximative de mon marché cible', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 177, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(354, 'Je connais mon client type, sans l\'avoir clairement défini', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 177, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(355, 'Mon marché cible est clairement identifié', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 177, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(356, 'Je connais mon client type (besoins, attentes, contraintes)', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 177, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(357, 'Les prix sont fixés de manière aléatoire', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 178, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(358, 'Je fixe mes prix selon le client ou la situation', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 178, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(359, 'Les prix varient, sans règles clairement établies', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 178, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(360, 'Je m\'adapte souvent sans réelle logique de calcul', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 178, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(361, 'Les prix sont fixés selon une logique cohérente', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 178, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(362, 'Les prix tiennent compte des coûts, du marché et de la valeur proposée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 178, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(363, 'Je ne fais aucun suivi de la satisfaction client', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 179, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(364, 'Je ne sais pas réellement si mes clients sont satisfaits', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 179, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(365, 'Je recueille parfois des avis de manière informelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 179, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(366, 'Les retours existent, mais ne sont pas analysés', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 179, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(367, 'Je fais un suivi structuré de la satisfaction client', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 179, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(368, 'Les retours clients sont utilisés pour améliorer l\'offre et le service', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 179, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(369, 'Je suis souvent incapable de livrer ce qui est vendu', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 180, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(370, 'Les engagements pris dépassent fréquemment mes capacités réelles', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 180, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(371, 'Je parviens à livrer, mais avec des limites ou des difficultés', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 180, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(372, 'La capacité de livraison dépend fortement du contexte ou du volume', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 180, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(373, 'Je maîtrise ma capacité de livraison', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 180, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(374, 'Les engagements pris correspondent à des capacités réelles et maîtrisées', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 180, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(375, 'Les délais ou la qualité sont souvent non respectés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 181, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(376, 'Les retards et défauts sont fréquents', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 181, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(377, 'Les résultats sont variables selon les périodes ou les clients', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 181, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(378, 'Les délais et la qualité sont respectés de manière irrégulière', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 181, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(379, 'Les délais et la qualité sont généralement respectés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 181, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(380, 'Les écarts sont rares, anticipés et correctement gérés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 181, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(381, 'Les moyens sont insuffisants pour assurer une exécution correcte', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 182, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(382, 'Je manque régulièrement d\'outils ou d\'équipements adaptés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 182, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(383, 'Les moyens sont acceptables, mais restent limités', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 182, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(384, 'Certains équipements freinent la performance ou la qualité', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 182, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(385, 'Les moyens techniques sont adaptés à l\'activité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 182, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(386, 'Les outils et équipements soutiennent efficacement la production ou le service', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 182, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(387, 'Les imprévus sont subis et désorganisent fortement l\'activité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 183, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(388, 'Les problèmes sont traités trop tard', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 183, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(389, 'Les imprévus sont gérés, mais souvent dans l\'urgence', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 183, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(390, 'Les solutions sont réactives, sans réelle anticipation', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 183, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(391, 'Les imprévus sont anticipés ou rapidement maîtrisés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 183, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(392, 'Des solutions existent pour limiter l\'impact des difficultés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 183, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(393, 'Je n\'ai aucun historique formalisé de projets réalisés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 184, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(394, 'Les réalisations ne sont pas documentées', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 184, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(395, 'J\'ai réalisé des projets, mais ils sont peu ou mal documentés', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 184, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(396, 'Les preuves existent, mais sont difficiles à exploiter', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 184, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(397, 'Je dispose d\'un historique clair de projets ou réalisations', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 184, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(398, 'Les réalisations sont documentées et peuvent être présentées à des partenaires', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 184, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(399, 'Je n\'utilise aucun outil numérique pour gérer mon entreprise', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 185, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(400, 'Tout se fait de manière manuelle ou uniquement de vive voix', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 185, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(401, 'J\'utilise principalement WhatsApp pour communiquer', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 185, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(402, 'L\'usage du numérique est limité et peu structuré', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 185, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(403, 'J\'utilise plusieurs outils numériques adaptés (email, documents, applications)', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 185, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(404, 'Les outils numériques facilitent réellement l\'organisation et la gestion', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 185, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(405, 'Aucun archivage numérique n\'existe', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 186, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(406, 'Les documents sont dispersés ou difficiles à retrouver', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 186, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(407, 'Une partie des documents est conservée de manière numérique', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 186, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(408, 'L\'archivage existe, mais reste désorganisé ou incomplet', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 186, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(409, 'Les documents sont archivés de manière numérique et organisée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 186, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(410, 'Je peux retrouver rapidement les documents importants en cas de besoin', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 186, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(411, 'Aucun reporting ou suivi formalisé n\'est réalisé', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 187, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(412, 'Je ne rends pas compte de l\'activité de manière structurée', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 187, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(413, 'Un suivi existe, mais de manière irrégulière', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 187, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(414, 'Les informations sont collectées sans analyse systématique', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 187, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(415, 'Je réalise un reporting régulier de mes activités', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 187, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(416, 'Le reporting me sert à piloter l\'activité et à communiquer avec des partenaires', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 187, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(417, 'L\'entreprise n\'a aucune présence en ligne', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 188, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(418, 'Je n\'utilise pas internet pour présenter mon activité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 188, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(419, 'L\'entreprise a une présence en ligne faible ou peu animée', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 188, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(420, 'Les informations existent, mais sont rarement mises à jour', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 188, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(421, 'L\'entreprise dispose d\'une présence en ligne active', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 188, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(422, 'La visibilité en ligne est utilisée pour informer, vendre ou rassurer les clients', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 188, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(423, 'Je ne dispose pas de données fiables pour décider', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 189, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(424, 'Les informations sont insuffisantes ou peu exploitables', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 189, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(425, 'Certaines données existent, mais elles sont incomplètes', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 189, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(426, 'Les données sont peu utilisées dans la prise de décision', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 189, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(427, 'Je dispose de données exploitables et fiables', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 189, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(428, 'Les données sont utilisées pour analyser, décider et améliorer l\'entreprise', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 189, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(429, 'Je n\'ai aucun espace de travail identifié', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 190, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(430, 'Je travaille de manière informelle (domicile sans aménagement, lieux variables)', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 190, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(431, 'Un espace existe, mais il est temporaire ou peu adapté', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 190, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(432, 'L\'espace est utilisé de façon irrégulière ou peu professionnelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 190, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(433, 'Je dispose d\'un bureau ou d\'un espace de travail clairement identifié', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 190, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(434, 'Cet espace est utilisé de manière régulière et cohérente avec l\'activité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 190, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(435, 'Aucun espace technique n\'existe ou il est inexploitable', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 89, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(436, 'L\'activité se fait dans des conditions précaires ou improvisées', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 89, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(437, 'Un espace existe, mais il est partiellement fonctionnel', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 89, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(438, 'Les conditions permettent de travailler, mais limitent la performance ou la qualité', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 89, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(439, 'L\'atelier ou l\'espace technique est fonctionnel et adapté', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 89, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(440, 'Les conditions permettent une production ou une exécution correcte et régulière', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 89, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(441, 'Aucun point de vente ou espace de présentation n\'existe', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 90, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(442, 'Les ventes se font de manière informelle ou occasionnelle', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 90, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(443, 'Un point de vente ou un espace existe, mais il est peu structuré', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 90, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(444, 'L\'espace est peu visible ou peu aménagé', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 90, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(445, 'Je dispose d\'une boutique, d\'un showroom ou d\'un point de vente identifié', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 90, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(446, 'L\'espace est organisé, accessible et utilisé pour valoriser l\'offre', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 90, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(447, 'Les équipements sont inexistants ou inadaptés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 91, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(448, 'Je travaille avec des moyens très limités', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 91, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(449, 'Les équipements existent, mais sont incomplets ou vieillissants', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 91, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(450, 'Ils permettent de travailler, mais freinent la performance', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 91, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(451, 'Les équipements sont adaptés à l\'activité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 91, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(452, 'Les équipements soutiennent efficacement la qualité et la productivité', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 91, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(453, 'Les conditions de sécurité et d\'accessibilité sont insuffisantes', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 92, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(454, 'Les risques (vol, accident, insécurité) sont élevés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 92, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(455, 'Les conditions sont acceptables, mais restent perfectibles', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 92, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(456, 'La sécurité existe sans être formalisée ou renforcée', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 92, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(457, 'Les locaux sont sécurisés et accessibles', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 92, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(458, 'Les conditions rassurent les clients, le personnel et les partenaires', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 92, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(459, 'Je n\'ai aucun conseil juridique identifié', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 93, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(460, 'Je gère les questions juridiques seul(e), sans accompagnement structuré', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 93, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(461, 'J\'ai déjà consulté un juriste ou un avocat de manière ponctuelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 93, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(462, 'Le recours au conseil juridique existe, mais sans relation suivie', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 93, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(463, 'Je dispose d\'un avocat ou d\'un conseil juridique clairement identifié', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 93, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(464, 'Cet accompagnement est utilisé de manière régulière pour sécuriser mes décisions', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 93, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(465, 'Je ne travaille avec aucun expert-comptable ni cabinet de gestion', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 94, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(466, 'La gestion financière et comptable repose uniquement sur moi', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 94, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(467, 'J\'ai déjà fait appel à un expert ou à un cabinet de manière occasionnelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 94, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(468, 'L\'accompagnement existe, mais il n\'est ni structuré ni régulier', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 94, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(469, 'Je suis accompagné par un expert-comptable ou une structure de gestion identifiée', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 94, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(470, 'Cet accompagnement est régulier et intégré à la gestion de l\'entreprise', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 94, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(471, 'Je ne travaille avec aucun professionnel spécialisé', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(472, 'Je ne sais pas clairement quels experts sont nécessaires à mon activité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(473, 'J\'ai déjà eu recours à certains professionnels spécialisés, de manière ponctuelle', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(474, 'Les relations existent, mais sans continuité ni formalisation', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(475, 'Je travaille avec des professionnels spécialisés clairement identifiés', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(476, 'Ces relations sont régulières et contribuent à sécuriser mes opérations', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(477, 'Je n\'ai aucun partenaire technique ni financier clairement identifié', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(478, 'Je fonctionne principalement seul(e), sans appui externe structuré ou mobilisable', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(479, 'Certains partenaires existent, mais de manière occasionnelle ou opportuniste', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(480, 'Les relations sont peu formalisées, irrégulières ou difficiles à mobiliser', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(481, 'Je dispose de partenaires techniques crédibles, identifiés et mobilisables selon les besoins', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(482, 'J\'entretiens des relations suivies et fonctionnelles avec au moins un partenaire financier ou technique', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 95, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(483, 'Je ne fais partie d\'aucun réseau ou organisation professionnelle', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 96, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(484, 'Je n\'interagis pas avec les cadres institutionnels ou sectoriels', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 96, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(485, 'Je suis membre d\'un réseau, mais avec une implication limitée', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 96, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(486, 'La participation existe, mais génère peu d\'opportunités concrètes', 2, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 96, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(487, 'Je suis activement impliqué dans un ou plusieurs réseaux professionnels', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 96, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41'),
(488, 'Ces réseaux me permettent d\'accéder à des informations, opportunités ou partenariats utiles', 3, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 96, 0, 1, '2026-01-12 19:57:41', '2026-01-12 19:57:41');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticresultats`
--

CREATE TABLE `diagnosticresultats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reponsetexte` varchar(255) DEFAULT NULL,
  `diagnosticreponseids` text DEFAULT NULL,
  `diagnosticquestion_id` bigint(20) UNSIGNED DEFAULT 0,
  `diagnosticreponse_id` bigint(20) UNSIGNED DEFAULT 0,
  `diagnostic_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticresultats`
--

INSERT INTO `diagnosticresultats` (`id`, `reponsetexte`, `diagnosticreponseids`, `diagnosticquestion_id`, `diagnosticreponse_id`, `diagnostic_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(136, NULL, NULL, 2, 8, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(137, NULL, NULL, 3, 12, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(138, NULL, NULL, 4, 17, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(139, NULL, NULL, 5, 21, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(140, NULL, NULL, 6, 22, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(141, NULL, NULL, 7, 26, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(142, NULL, NULL, 8, 30, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(143, NULL, NULL, 9, 33, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(144, NULL, NULL, 10, 34, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(145, NULL, NULL, 10, 35, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(146, NULL, NULL, 10, 36, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(147, NULL, NULL, 11, 41, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(148, NULL, NULL, 11, 42, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(149, NULL, NULL, 12, 48, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(150, NULL, NULL, 12, 49, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(151, NULL, NULL, 12, 50, 3, 0, 1, '2025-08-14 14:47:06', '2025-08-14 14:47:06'),
(157, NULL, NULL, 1, 1, 3, 0, 1, '2025-08-15 12:01:53', '2025-08-15 12:01:53'),
(158, NULL, NULL, 13, 57, 3, 0, 1, '2025-08-15 12:01:53', '2025-08-15 12:01:53'),
(159, NULL, NULL, 13, 61, 3, 0, 1, '2025-08-15 12:01:53', '2025-08-15 12:01:53'),
(160, NULL, NULL, 1, 1, 4, 0, 1, '2025-08-15 12:07:31', '2025-08-15 12:07:31'),
(161, NULL, NULL, 13, 59, 4, 0, 1, '2025-08-15 12:07:31', '2025-08-15 12:07:31'),
(162, NULL, NULL, 13, 61, 4, 0, 1, '2025-08-15 12:07:31', '2025-08-15 12:07:31'),
(163, NULL, NULL, 1, 1, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(164, NULL, NULL, 2, 8, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(165, NULL, NULL, 3, 12, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(166, NULL, NULL, 4, 17, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(167, NULL, NULL, 5, 21, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(168, NULL, NULL, 6, 22, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(169, NULL, NULL, 7, 26, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(170, NULL, NULL, 8, 30, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(171, NULL, NULL, 9, 33, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(172, NULL, NULL, 10, 34, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(173, NULL, NULL, 10, 35, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(174, NULL, NULL, 10, 36, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(175, NULL, NULL, 11, 42, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(176, NULL, NULL, 11, 41, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(177, NULL, NULL, 12, 49, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(178, NULL, NULL, 12, 48, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(179, NULL, NULL, 12, 50, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(180, NULL, NULL, 13, 61, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(181, NULL, NULL, 13, 57, 5, 0, 1, '2025-08-15 21:08:47', '2025-08-15 21:08:47'),
(182, NULL, NULL, 1, 4, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(183, NULL, NULL, 2, 8, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(184, NULL, NULL, 3, 9, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(185, NULL, NULL, 4, 16, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(186, NULL, NULL, 5, 18, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(187, NULL, NULL, 6, 24, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(188, NULL, NULL, 7, 26, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(189, NULL, NULL, 8, 30, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(190, NULL, NULL, 9, 31, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(191, NULL, NULL, 10, 38, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(192, NULL, NULL, 11, 47, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(193, NULL, NULL, 12, 52, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(194, NULL, NULL, 13, 61, 6, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(195, NULL, NULL, 1, 4, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(196, NULL, NULL, 2, 8, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(197, NULL, NULL, 3, 10, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(198, NULL, NULL, 4, 14, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(199, NULL, NULL, 5, 19, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(200, NULL, NULL, 6, 24, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(201, NULL, NULL, 7, 25, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(202, NULL, NULL, 8, 29, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(203, NULL, NULL, 9, 31, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(204, NULL, NULL, 10, 36, 7, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:07'),
(205, NULL, NULL, 11, 41, 7, 0, 1, '2025-08-22 11:21:08', '2025-08-22 11:21:08'),
(206, NULL, NULL, 12, 53, 7, 0, 1, '2025-08-22 11:21:08', '2025-08-22 11:21:08'),
(207, NULL, NULL, 13, 59, 7, 0, 1, '2025-08-22 11:21:08', '2025-08-22 11:21:08'),
(208, NULL, NULL, 101, 64, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(209, NULL, NULL, 102, 67, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(210, NULL, NULL, 103, 72, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(211, NULL, NULL, 104, 74, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(212, NULL, NULL, 201, 78, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(213, NULL, NULL, 202, 81, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(214, NULL, NULL, 203, 86, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(215, NULL, NULL, 204, 87, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(216, NULL, NULL, 205, 91, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(217, NULL, NULL, 301, 94, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(218, NULL, NULL, 302, 98, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(219, NULL, NULL, 303, 101, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(220, NULL, NULL, 304, 105, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(221, NULL, NULL, 401, 112, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(222, NULL, NULL, 402, 113, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(223, NULL, NULL, 403, 117, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(224, NULL, NULL, 404, 122, 8, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(225, NULL, NULL, 501, 126, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(226, NULL, NULL, 502, 130, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(227, NULL, NULL, 503, 136, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(228, NULL, NULL, 504, 139, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(229, NULL, NULL, 601, 142, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(230, NULL, NULL, 602, 148, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(231, NULL, NULL, 603, 150, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(232, NULL, NULL, 604, 154, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(233, NULL, NULL, 701, 160, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(234, NULL, NULL, 702, 164, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(235, NULL, NULL, 703, 167, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(236, NULL, NULL, 704, 170, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(237, NULL, NULL, 801, 174, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(238, NULL, NULL, 802, 179, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(239, NULL, NULL, 803, 183, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(240, NULL, NULL, 804, 188, 8, 0, 1, '2025-08-22 11:22:17', '2025-08-22 11:22:17'),
(274, NULL, NULL, 101, 63, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(275, NULL, NULL, 102, 66, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(276, NULL, NULL, 103, 70, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(277, NULL, NULL, 104, 77, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(278, NULL, NULL, 201, 79, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(279, NULL, NULL, 202, 82, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(280, NULL, NULL, 203, 86, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(281, NULL, NULL, 204, 87, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(282, NULL, NULL, 205, 92, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(283, NULL, NULL, 301, 94, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(284, NULL, NULL, 302, 99, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(285, NULL, NULL, 303, 102, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(286, NULL, NULL, 304, 107, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(287, NULL, NULL, 401, 112, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(288, NULL, NULL, 402, 113, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(289, NULL, NULL, 403, 118, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(290, NULL, NULL, 404, 121, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(291, NULL, NULL, 501, 125, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(292, NULL, NULL, 502, 132, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(293, NULL, NULL, 503, 135, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(294, NULL, NULL, 504, 139, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(295, NULL, NULL, 601, 143, 9, 0, 1, '2025-08-23 07:30:44', '2025-08-23 07:30:44'),
(296, NULL, NULL, 602, 145, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(297, NULL, NULL, 603, 150, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(298, NULL, NULL, 604, 155, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(299, NULL, NULL, 701, 157, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(300, NULL, NULL, 702, 163, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(301, NULL, NULL, 703, 168, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(302, NULL, NULL, 704, 170, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(303, NULL, NULL, 801, 175, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(304, NULL, NULL, 802, 179, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(305, NULL, NULL, 803, 182, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(306, NULL, NULL, 804, 188, 9, 0, 1, '2025-08-23 07:30:45', '2025-08-23 07:30:45'),
(307, NULL, NULL, 1, 4, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(308, NULL, NULL, 2, 8, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(309, NULL, NULL, 3, 12, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(310, NULL, NULL, 4, 17, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(311, NULL, NULL, 5, 20, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(312, NULL, NULL, 6, 24, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(313, NULL, NULL, 7, 27, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(314, NULL, NULL, 8, 29, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(315, NULL, NULL, 9, 33, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(316, NULL, NULL, 10, 36, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(317, NULL, NULL, 11, 44, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(318, NULL, NULL, 12, 53, 10, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:30'),
(319, NULL, NULL, 13, 56, 10, 0, 1, '2025-09-10 07:33:31', '2025-09-10 07:33:31'),
(320, NULL, NULL, 101, 65, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(321, NULL, NULL, 102, 67, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(322, NULL, NULL, 103, 73, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(323, NULL, NULL, 104, 75, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(324, NULL, NULL, 201, 79, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(325, NULL, NULL, 202, 83, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(326, NULL, NULL, 203, 84, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(327, NULL, NULL, 204, 87, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(328, NULL, NULL, 205, 92, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(329, NULL, NULL, 301, 95, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(330, NULL, NULL, 302, 97, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(331, NULL, NULL, 303, 102, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(332, NULL, NULL, 304, 107, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(333, NULL, NULL, 401, 111, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(334, NULL, NULL, 402, 115, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(335, NULL, NULL, 403, 119, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(336, NULL, NULL, 404, 124, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(337, NULL, NULL, 501, 128, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(338, NULL, NULL, 502, 131, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(339, NULL, NULL, 503, 136, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(340, NULL, NULL, 504, 137, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(341, NULL, NULL, 601, 144, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(342, NULL, NULL, 602, 145, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(343, NULL, NULL, 603, 149, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(344, NULL, NULL, 604, 153, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(345, NULL, NULL, 701, 157, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(346, NULL, NULL, 702, 164, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(347, NULL, NULL, 703, 168, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(348, NULL, NULL, 704, 172, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(349, NULL, NULL, 801, 174, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(350, NULL, NULL, 802, 180, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(351, NULL, NULL, 803, 182, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28'),
(352, NULL, NULL, 804, 188, 11, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28');

-- --------------------------------------------------------

--
-- Structure de la table `diagnostics`
--

CREATE TABLE `diagnostics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scoreglobal` varchar(255) DEFAULT NULL,
  `commentaire` text DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `diagnostictype_id` bigint(20) UNSIGNED DEFAULT 0,
  `diagnosticstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnostics`
--

INSERT INTO `diagnostics` (`id`, `scoreglobal`, `commentaire`, `accompagnement_id`, `diagnostictype_id`, `diagnosticstatut_id`, `membre_id`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(6, '23', NULL, 2, 1, 2, 1, 0, 0, 1, '2025-08-15 21:10:45', '2025-08-15 21:10:45'),
(7, '26', NULL, 2, 1, 2, 2, 0, 0, 1, '2025-08-22 11:21:07', '2025-08-22 11:21:08'),
(8, '0', NULL, 0, 1, 1, 0, 1, 0, 1, '2025-08-22 11:22:16', '2025-08-22 11:22:16'),
(9, '0', NULL, 0, 1, 1, 0, 2, 0, 1, '2025-08-23 07:29:05', '2025-08-23 07:29:05'),
(10, '16', NULL, 3, 1, 2, 4, 0, 0, 1, '2025-09-10 07:33:30', '2025-09-10 07:33:31'),
(11, '0', NULL, 0, 1, 1, 0, 3, 0, 1, '2025-09-10 13:02:28', '2025-09-10 13:02:28');

-- --------------------------------------------------------

--
-- Structure de la table `diagnosticstatuts`
--

CREATE TABLE `diagnosticstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnosticstatuts`
--

INSERT INTO `diagnosticstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En cours', 1, '2025-08-22 10:27:32', '2025-08-22 10:27:32'),
(2, 'Validé', 1, '2025-08-22 10:29:11', '2025-08-22 10:29:11');

-- --------------------------------------------------------

--
-- Structure de la table `diagnostictypes`
--

CREATE TABLE `diagnostictypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `diagnostictypes`
--

INSERT INTO `diagnostictypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Tests psychotechniques', 1, '2026-01-12 17:30:33', '2026-01-12 17:30:33'),
(2, 'Niveaux de structuration', 1, '2026-01-12 17:30:54', '2026-01-12 17:30:54'),
(3, 'Tests de classification', 1, '2026-01-12 17:31:08', '2026-01-12 17:49:06');

-- --------------------------------------------------------

--
-- Structure de la table `disponibilites`
--

CREATE TABLE `disponibilites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horairedebut` varchar(255) NOT NULL,
  `horairefin` varchar(255) DEFAULT NULL,
  `jour_id` bigint(20) UNSIGNED DEFAULT 0,
  `expert_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `disponibilites`
--

INSERT INTO `disponibilites` (`id`, `horairedebut`, `horairefin`, `jour_id`, `expert_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, '12:00', '18:00', 1, 2, 0, 1, '2025-08-22 12:42:24', '2025-08-22 12:42:24'),
(3, '06:00', '12:25', 1, 3, 0, 1, '2025-09-10 07:51:10', '2025-09-10 07:51:10'),
(4, '06:00', '11:25', 3, 3, 0, 1, '2025-09-10 07:51:28', '2025-09-10 07:51:28'),
(5, '06:00', '11:25', 3, 3, 0, 1, '2025-09-10 07:51:29', '2025-09-10 07:51:29'),
(6, '07:00', '11:00', 5, 3, 0, 1, '2025-09-10 11:57:38', '2025-09-10 11:57:38'),
(7, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:32', '2025-09-10 11:59:32'),
(8, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:32', '2025-09-10 11:59:32'),
(9, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:32', '2025-09-10 11:59:32'),
(10, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:33', '2025-09-10 11:59:33'),
(11, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:33', '2025-09-10 11:59:33'),
(12, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:33', '2025-09-10 11:59:33'),
(13, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:34', '2025-09-10 11:59:34'),
(14, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:34', '2025-09-10 11:59:34'),
(15, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:34', '2025-09-10 11:59:34'),
(16, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:34', '2025-09-10 11:59:34'),
(17, '11:00', '11:20', 6, 3, 0, 1, '2025-09-10 11:59:35', '2025-09-10 11:59:35');

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `documenttype_id` bigint(20) UNSIGNED DEFAULT 0,
  `datedocument` date DEFAULT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `titre`, `fichier`, `documenttype_id`, `datedocument`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'dfghkjkbvh chj', 'storage/documents/2025/07/09/686e7027978e2_Rapport_Reunion_CJET_EQUIPE IT.pdf', NULL, '2025-07-09', 1, 0, 1, '2025-07-09 11:35:35', '2025-07-09 11:35:35'),
(2, 'Carte d\'identité', 'documents/4HshsYjtM8obQXrFHqaJCNxgajBIdigJw8o4eqdd.png', 1, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52'),
(3, 'Passeport', 'documents/MZ8RnKTfv95UjytDqGBKeB3H0PiCGkqUdNeZrHsk.png', 2, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52'),
(4, 'Acte de naissance', 'documents/mZMRNoxZp0wYbeSjka2FAp3NiXih77BBEGwuteY7.jpg', 3, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52'),
(5, 'Certificat de nationalité', 'documents/H3MO3NzpJaazfFGV65Mn6UVEJVLHMzSOmLCJsx8R.png', 4, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52');

-- --------------------------------------------------------

--
-- Structure de la table `documenttypes`
--

CREATE TABLE `documenttypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documenttypes`
--

INSERT INTO `documenttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'identité', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:42'),
(2, 'Passeport', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:57'),
(3, 'Acte de naissance', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:17'),
(4, 'Certificat de nationalité', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:37');

-- --------------------------------------------------------

--
-- Structure de la table `dossierstatuts`
--

CREATE TABLE `dossierstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `echeanciers`
--

CREATE TABLE `echeanciers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) NOT NULL,
  `echeancierstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateecheancier` date DEFAULT NULL,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `echeanciers`
--

INSERT INTO `echeanciers` (`id`, `montant`, `echeancierstatut_id`, `dateecheancier`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '566', NULL, '2025-07-10', 1, 0, 1, '2025-07-10 19:34:08', '2025-07-10 19:34:08');

-- --------------------------------------------------------

--
-- Structure de la table `echeancierstatuts`
--

CREATE TABLE `echeancierstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `entreprisemembres`
--

CREATE TABLE `entreprisemembres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprisemembres`
--

INSERT INTO `entreprisemembres` (`id`, `fonction`, `bio`, `membre_id`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'Directeur', 'NovaLabs est un laboratoire d’innovation technologique dédié à l’accompagnement des startups et porteurs de projets à fort potentiel. Fondée en 2025 par des experts en technologie, entrepreneuriat et business development, NovaLabs a pour mission de transformer des idées novatrices en entreprises viables et durables.', 1, 1, 0, 1, '2025-08-22 10:51:33', '2025-08-22 21:35:52'),
(3, 'Directeur', NULL, 1, 2, 0, 1, '2025-08-22 21:31:10', '2025-08-22 21:36:16'),
(4, 'Consultant', NULL, 2, 2, 0, 1, '2025-08-23 07:26:20', '2025-08-23 07:26:20'),
(5, 'Directeur Général', 'Expert en Digitalisation et Management d\'entreprise', 4, 3, 0, 1, '2025-09-10 07:20:54', '2025-09-10 07:20:54'),
(6, 'PDG', 'Serial entrepreneur', 4, 4, 0, 1, '2025-09-22 07:49:15', '2025-09-22 07:49:15');

-- --------------------------------------------------------

--
-- Structure de la table `entrepriseprofils`
--

CREATE TABLE `entrepriseprofils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entrepriseprofils`
--

INSERT INTO `entrepriseprofils` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Pépites', 1, '2026-01-06 14:24:40', '2026-01-06 14:24:40'),
(2, 'Emergeants', 1, '2026-01-06 14:25:15', '2026-01-06 14:25:15'),
(3, 'Elites', 1, '2026-01-06 14:25:29', '2026-01-06 14:25:40');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `adresse` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `vignette` varchar(255) DEFAULT NULL,
  `entreprisetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `entrepriseprofil_id` bigint(20) UNSIGNED DEFAULT 0,
  `est_membre_cijes` tinyint(1) NOT NULL DEFAULT 0,
  `annee_creation` year(4) DEFAULT NULL,
  `secteur_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `supabase_startup_id` varchar(255) DEFAULT NULL,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `nom`, `email`, `telephone`, `adresse`, `description`, `vignette`, `entreprisetype_id`, `entrepriseprofil_id`, `est_membre_cijes`, `annee_creation`, `secteur_id`, `pays_id`, `supabase_startup_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'NovaLabs', 'yokamly@gmail.com', '90291387', '57, rue tchiko adewui', 'Innovation / Tech / Startups', 'Laravel/storage/app/public/entreprises/MJoM8EMgBM2NXNe0StRDDRFDJGiGhhNBpERZbyFw.png', 2, 0, 0, NULL, 1, '8409335f-e085-4597-9cae-359a60a816c6', NULL, 0, 1, '2025-07-07 14:48:01', '2025-08-22 13:30:28'),
(2, 'SKE Group', 'yokamly@gmail.com', '90291387', '57, rue tchiko adewui', NULL, NULL, 1, 0, 0, NULL, 2, '8409335f-e085-4597-9cae-359a60a816c6', NULL, 0, 1, '2025-08-22 21:31:10', '2025-08-23 07:26:20'),
(3, 'INNOVA TECH', 'innovatech@gmail.com', 'AZERZERTAETAERATER23534534', 'Kégué, lomé Togo', 'La vie est belle avec le digital', 'entreprises/Ypplp9dqKAHIarnKhXVP5OBBsctBptS5CmmALqUX.png', 2, 0, 0, NULL, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', NULL, 1, 1, '2025-09-10 07:20:54', '2025-09-22 07:50:42'),
(4, 'High Lab Tech', 'highlabtech@gmail.com', '+22890909090', 'Kégué, Lomé', 'Spécialisation en informatique', 'entreprises/60okuwooh3mAnRFEVYTXu8jm5kUd6zZkcuDutCZI.png', 2, 0, 0, NULL, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', NULL, 1, 1, '2025-09-22 07:49:15', '2025-09-22 07:50:50');

-- --------------------------------------------------------

--
-- Structure de la table `entreprisetypes`
--

CREATE TABLE `entreprisetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprisetypes`
--

INSERT INTO `entreprisetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'SA', 1, '2025-06-18 21:29:26', '2025-06-18 21:29:26'),
(2, 'SARL', 1, '2025-06-18 21:29:41', '2025-06-18 21:29:41'),
(3, 'PME', 1, '2026-01-12 17:18:29', '2026-01-12 17:18:29'),
(4, 'Collectivité', 1, '2026-01-12 17:19:04', '2026-01-12 17:19:04');

-- --------------------------------------------------------

--
-- Structure de la table `espaceressources`
--

CREATE TABLE `espaceressources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcecompte_id` bigint(20) UNSIGNED DEFAULT 0,
  `espace_id` bigint(20) UNSIGNED DEFAULT 0,
  `paiementstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `espaces`
--

CREATE TABLE `espaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `capacite` varchar(255) DEFAULT NULL,
  `resume` text DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `vignette` varchar(255) DEFAULT NULL,
  `espacetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `espaces`
--

INSERT INTO `espaces` (`id`, `titre`, `capacite`, `resume`, `prix`, `description`, `vignette`, `espacetype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Nos salles de conférences', '20 m2', 'Nos salles de conférences à des prix imbattables', NULL, '<p>Nos salles de conférences à des prix imbattables </p>', 'espaces/2026/01/02/6957bc42dea48_conseils.JPG', 1, '0', 0, 1, '2025-07-10 13:39:45', '2026-01-02 12:38:27'),
(2, 'Des bureaux à louer', '10 m2', NULL, NULL, '<p><br></p>', 'espaces/2026/01/02/6957c79fa2184_affaire.JPG', 2, '0', 0, 1, '2025-07-10 13:39:45', '2026-01-02 13:26:55');

-- --------------------------------------------------------

--
-- Structure de la table `espacetypes`
--

CREATE TABLE `espacetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `espacetypes`
--

INSERT INTO `espacetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Salle de conférence', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15'),
(2, 'Co-working', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15');

-- --------------------------------------------------------

--
-- Structure de la table `evaluations`
--

CREATE TABLE `evaluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) NOT NULL,
  `commentaire` text DEFAULT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `expert_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evaluations`
--

INSERT INTO `evaluations` (`id`, `note`, `commentaire`, `membre_id`, `expert_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, '1', 'Hum', 4, 3, 0, 1, '2025-09-10 07:50:32', '2025-09-22 07:40:22');

-- --------------------------------------------------------

--
-- Structure de la table `evenementinscriptions`
--

CREATE TABLE `evenementinscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `evenement_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateevenementinscription` date DEFAULT NULL,
  `evenementinscriptiontype_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenementinscriptions`
--

INSERT INTO `evenementinscriptions` (`id`, `membre_id`, `evenement_id`, `dateevenementinscription`, `evenementinscriptiontype_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-08-11', 2, 0, 1, '2025-08-11 10:57:55', '2025-08-11 10:57:55'),
(2, 2, 1, '2025-08-22', 1, 0, 1, '2025-08-22 10:52:31', '2025-08-22 10:52:31'),
(3, 4, 1, '2025-09-10', 1, 0, 1, '2025-09-10 07:39:55', '2025-09-10 07:39:55');

-- --------------------------------------------------------

--
-- Structure de la table `evenementinscriptiontypes`
--

CREATE TABLE `evenementinscriptiontypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenementinscriptiontypes`
--

INSERT INTO `evenementinscriptiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 10:50:43', '2025-08-11 10:50:43'),
(2, 'Peut-être', 1, '2025-08-11 10:51:01', '2025-08-11 10:51:01'),
(3, 'Non', 1, '2025-08-11 10:51:09', '2025-08-11 10:51:09');

-- --------------------------------------------------------

--
-- Structure de la table `evenementressources`
--

CREATE TABLE `evenementressources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcecompte_id` bigint(20) UNSIGNED DEFAULT 0,
  `evenement_id` bigint(20) UNSIGNED DEFAULT 0,
  `paiementstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `evenements`
--

CREATE TABLE `evenements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `evenementtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateevenement` datetime DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id`, `titre`, `resume`, `description`, `prix`, `langue_id`, `vignette`, `evenementtype_id`, `dateevenement`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Networking Entrepreneurial', 'Rencontres entre entrepreneurs', '<p>Séance mensuelle de networking pour échanger avec d’autres fondateurs et experts du secteur.</p>', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/evenements/2025/08/11/6899ded185c94_conseil.JPG', 3, '2025-08-11 12:15:00', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-08-11 10:15:13', '2025-09-09 13:25:31'),
(2, 'Startup Bootcamp 2025', 'Formation intensive pour incubés', '<p>Un bootcamp de 3 jours destiné aux startups incubées, avec ateliers pratiques sur le business model, le pitch, et la levée de fonds.</p>', NULL, '0', 'evenements/2026/01/07/695e8464e9aec_conseil.JPG', 1, '2025-08-21 20:10:00', '0', 0, 0, '2025-08-21 18:10:54', '2026-01-07 16:05:57');

-- --------------------------------------------------------

--
-- Structure de la table `evenementtypes`
--

CREATE TABLE `evenementtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `evenementtypes`
--

INSERT INTO `evenementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Séminaires', 1, '2025-08-11 09:48:25', '2025-08-11 09:48:25'),
(2, 'Colloques', 1, '2025-08-11 09:48:44', '2025-08-11 09:48:44'),
(3, 'Conférences de presse', 1, '2025-08-11 09:49:01', '2025-08-11 09:49:01');

-- --------------------------------------------------------

--
-- Structure de la table `experts`
--

CREATE TABLE `experts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domaine` longtext DEFAULT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `experttype_id` bigint(20) UNSIGNED DEFAULT 0,
  `expertvalide_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experts`
--

INSERT INTO `experts` (`id`, `domaine`, `fichier`, `experttype_id`, `expertvalide_id`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, '<p>Informatique</p>', 'experts/2026/01/02/6957c8065d4ed_carte_identite.pdf', 1, 1, 2, 0, 1, '2025-08-22 10:53:01', '2026-01-02 13:28:38'),
(3, 'Management d\'entreprise', 'experts/sPcsVJ3UOMSMvkInLdi2s3A4QW8y0ptoxuBDIn66.jpg', 1, 1, 4, 0, 1, '2025-09-10 07:45:52', '2025-09-10 07:45:52');

-- --------------------------------------------------------

--
-- Structure de la table `experttypes`
--

CREATE TABLE `experttypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experttypes`
--

INSERT INTO `experttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Expert', 1, '2025-07-09 13:06:16', '2025-07-09 13:06:16');

-- --------------------------------------------------------

--
-- Structure de la table `expertvalides`
--

CREATE TABLE `expertvalides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `expertvalides`
--

INSERT INTO `expertvalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-09 13:05:04', '2026-01-12 17:38:36'),
(2, 'Validé', 1, '2026-01-12 17:38:54', '2026-01-12 17:38:54');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `reponse` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `reponse`, `langue_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Qu’est-ce que le CIJES ?', '<p>Le <strong>Centre d’Incubation des Juniors Entreprises et Startups (CIJES)</strong> est une plateforme hybride (digitale et physique) qui accompagne les jeunes entreprises, startups et coopératives à travers un <strong>modèle innovant basé sur les crédits d’incubation et les bons d’accompagnement</strong>.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 08:11:40', '2025-09-09 13:29:38'),
(2, 'Qui peut rejoindre le CIJES ?', '<p>Toute <strong>jeune entreprise</strong>, <strong>startup</strong>, <strong>auto-entrepreneur</strong> ou <strong>coopérative</strong> enregistrée au Togo et ayant moins de <strong>10 ans d’existence</strong> peut s’inscrire. Des exceptions sont possibles pour des projets innovants à fort potentiel.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 08:12:40', '2025-09-09 13:28:49');

-- --------------------------------------------------------

--
-- Structure de la table `formationniveaus`
--

CREATE TABLE `formationniveaus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formationniveaus`
--

INSERT INTO `formationniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Débutant', 1, '2025-08-11 14:37:30', '2025-08-22 10:18:48'),
(2, 'Intermédiaire', 1, '2025-08-22 10:18:38', '2025-08-22 10:18:38');

-- --------------------------------------------------------

--
-- Structure de la table `formationressources`
--

CREATE TABLE `formationressources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcecompte_id` bigint(20) UNSIGNED DEFAULT 0,
  `formation_id` bigint(20) UNSIGNED DEFAULT 0,
  `paiementstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date DEFAULT NULL,
  `prix` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `expert_id` bigint(20) UNSIGNED DEFAULT 0,
  `formationniveau_id` bigint(20) UNSIGNED DEFAULT 0,
  `formationtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `titre`, `datedebut`, `datefin`, `prix`, `description`, `expert_id`, `formationniveau_id`, `formationtype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Quelle formation suivre pour lancer sa startup ?', '2025-08-11', '2025-08-14', NULL, '<p>Quelle formation suivre pour lancer sa startup ? Quelle formation suivre pour lancer sa startup ?Quelle formation suivre pour lancer sa startup ?</p>', NULL, 1, 0, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-08-11 14:46:50', '2025-08-22 10:41:48'),
(3, 'Développement Personnel', '2025-09-18', '2025-09-24', NULL, 'Renforcez votre capacité en développement personnel', 3, 2, 0, NULL, 0, 1, '2025-09-10 12:11:44', '2025-09-10 12:11:44'),
(4, 'Développement Personnel', '2025-09-18', '2025-09-24', NULL, 'Renforcez votre capacité en développement personnel', 3, 2, 0, NULL, 0, 1, '2025-09-10 12:11:44', '2025-09-10 12:11:44'),
(5, 'Développement Personnel', '2025-09-18', '2025-09-24', NULL, 'Renforcez votre capacité en développement personnel', 3, 2, 0, NULL, 0, 1, '2025-09-10 12:11:44', '2025-09-10 12:11:44'),
(6, 'Développement Personnel', '2025-09-18', '2025-09-24', NULL, 'Renforcez votre capacité en développement personnel', 3, 2, 0, NULL, 0, 1, '2025-09-10 12:11:45', '2025-09-10 12:11:45');

-- --------------------------------------------------------

--
-- Structure de la table `formationtypes`
--

CREATE TABLE `formationtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formationtypes`
--

INSERT INTO `formationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Formation entreprenariat', 1, '2026-01-11 13:15:55', '2026-01-11 13:15:55'),
(2, 'Formation de structuration', 1, '2026-01-11 13:16:19', '2026-01-11 13:16:19');

-- --------------------------------------------------------

--
-- Structure de la table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `forumtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `secteur_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateforum` date DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `forums`
--

INSERT INTO `forums` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `forumtype_id`, `secteur_id`, `dateforum`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Présentation des membres', 'Espace pour que chaque entrepreneur se présente.', '<p><strong>Présentation des membres</strong> – espace pour que chaque entrepreneur se présente.</p><p><strong>Success stories</strong> – partager des réussites d’autres startups ou projets incubés.</p><p><strong>Leçons apprises</strong> – expériences, erreurs et apprentissages.</p>', '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 'storage/forums/2025/07/10/686f9cc7ed958_afrique-togoéàç.png', 1, NULL, '2025-07-11', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-10 08:58:16', '2025-08-22 10:38:43');

-- --------------------------------------------------------

--
-- Structure de la table `forumtypes`
--

CREATE TABLE `forumtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `forumtypes`
--

INSERT INTO `forumtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Sujet sur l\'incubation', 1, '2025-08-05 19:06:23', '2025-08-22 10:22:18');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jours`
--

CREATE TABLE `jours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `jours`
--

INSERT INTO `jours` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Lundi', 1, '2025-07-09 14:10:04', '2025-07-09 14:10:04'),
(2, 'Mardi', 1, '2025-07-09 14:10:14', '2025-07-09 14:10:14'),
(3, 'Mercredi', 1, '2025-08-22 10:19:05', '2025-08-22 10:19:05'),
(4, 'Jeudi', 1, '2025-08-22 10:19:14', '2025-08-22 10:19:14'),
(5, 'Vendredi', 1, '2025-08-22 10:19:24', '2025-08-22 10:19:24'),
(6, 'Samedi', 1, '2025-08-22 10:19:33', '2025-08-22 10:19:33'),
(7, 'Dimanche', 1, '2025-08-22 10:19:42', '2025-08-22 10:19:42');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id`, `titre`, `code`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Français', 'fr', 1, '2025-06-19 14:02:56', '2025-06-19 14:03:21'),
(2, 'Anglais', 'en', 1, '2025-06-19 14:03:11', '2025-06-19 14:03:11');

-- --------------------------------------------------------

--
-- Structure de la table `membrecategories`
--

CREATE TABLE `membrecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membrecategories`
--

INSERT INTO `membrecategories` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Entrepreneur', 1, '2026-01-06 14:30:45', '2026-01-06 14:30:45'),
(2, 'Expert', 1, '2026-01-06 14:30:59', '2026-01-06 14:30:59'),
(3, 'Conseiller', 1, '2026-01-12 17:22:51', '2026-01-12 17:22:51');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_identifiant` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `membrestatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `vignette` varchar(255) DEFAULT NULL,
  `membretype_id` bigint(20) UNSIGNED DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `telephone` varchar(255) DEFAULT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `numero_identifiant`, `nom`, `prenom`, `email`, `membrestatut_id`, `vignette`, `membretype_id`, `user_id`, `pays_id`, `telephone`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'MBR202667512', 'LOOKY', 'Yokamly', 'yokamly@gmail.com', 3, 'storage/membres/2025/07/04/686862d9cbb36_Image1.png', 1, 0, '8409335f-e085-4597-9cae-359a60a816c6', '90291387', 1, '2025-07-04 21:24:15', '2025-07-25 20:04:18'),
(2, 'MBR202629845', 'LOOKY', 'Yokamly Ruben', 'yokamly@gmail.com', 1, 'Laravel/storage/app/public/vignettes/6blos41j8z53bktO1IhmzXhBgb8mTASOTE3CBAC3.jpg', 1, 1, '8409335f-e085-4597-9cae-359a60a816c6', '90291387', 1, '2025-08-21 19:35:22', '2025-08-22 13:19:41'),
(3, 'MBR202675529', 'Doe', 'John', 'johndoe@gmail.com', 1, NULL, 1, 2, '8409335f-e085-4597-9cae-359a60a816c6', '90291387', 1, '2025-08-22 10:06:39', '2025-08-22 10:06:39'),
(4, 'MBR202688891', 'TOSSOU', 'Leatitia', 'Leatitia@gmail.com', 1, 'vignettes/ISdQ2CwEGqAUM8n2lZ6rZOvhs7YTc4BZ8llSite6.png', 1, 5, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 'AZEEEERTU', 1, '2025-09-10 07:07:38', '2025-09-10 07:14:10');

-- --------------------------------------------------------

--
-- Structure de la table `membrestatuts`
--

CREATE TABLE `membrestatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membrestatuts`
--

INSERT INTO `membrestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 12:48:49', '2025-06-18 13:06:40'),
(3, 'Actif', 1, '2025-06-18 12:50:17', '2025-06-18 16:11:02');

-- --------------------------------------------------------

--
-- Structure de la table `membretypes`
--

CREATE TABLE `membretypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `membrecategorie_id` bigint(20) UNSIGNED DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `membretypes`
--

INSERT INTO `membretypes` (`id`, `titre`, `membrecategorie_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Entrepreneur', 1, 1, '2025-07-04 20:06:55', '2026-01-12 17:24:46'),
(2, 'Expert', 2, 1, '2025-07-04 20:07:17', '2026-01-12 17:25:30'),
(3, 'Conseiller CJES', 1, 1, '2025-07-04 20:07:36', '2026-01-12 17:26:19');

-- --------------------------------------------------------

--
-- Structure de la table `messageforums`
--

CREATE TABLE `messageforums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contenu` text DEFAULT NULL,
  `sujet_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contenu` text DEFAULT NULL,
  `conversation_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `lu` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `conversation_id`, `membre_id`, `lu`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'dfjghgc df df g', 1, 1, 0, 1, '2025-07-10 11:25:15', '2025-07-10 11:25:15');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2015_04_12_000000_create_orchid_users_table', 1),
(5, '2015_10_19_214424_create_orchid_roles_table', 1),
(6, '2015_10_19_214425_create_orchid_role_users_table', 1),
(7, '2016_08_07_125128_create_orchid_attachmentstable_table', 1),
(8, '2017_09_17_125801_create_notifications_table', 1),
(9, '2025_01_13_000006_add_supabase_user_id_to_users_table', 1),
(10, '2025_06_02_221804_create_accompagnementniveaus_table', 1),
(11, '2025_06_02_221804_create_accompagnementstatuts_table', 1),
(12, '2025_06_02_221804_create_accompagnementtypes_table', 1),
(13, '2025_06_02_221804_create_actualitetypes_table', 1),
(14, '2025_06_02_221804_create_alertetypes_table', 1),
(15, '2025_06_02_221804_create_bonstatuts_table', 1),
(16, '2025_06_02_221804_create_bontypes_table', 1),
(17, '2025_06_02_221804_create_conseillertypes_table', 1),
(18, '2025_06_02_221804_create_conseillervalides_table', 1),
(19, '2025_06_02_221804_create_contacttypes_table', 1),
(20, '2025_06_02_221804_create_cotisationtypes_table', 1),
(21, '2025_06_02_221804_create_creditstatuts_table', 1),
(22, '2025_06_02_221804_create_credittypes_table', 1),
(23, '2025_06_02_221804_create_diagnosticmoduletypes_table', 1),
(24, '2025_06_02_221804_create_diagnosticquestioncategories_table', 1),
(25, '2025_06_02_221804_create_diagnosticquestiontypes_table', 1),
(26, '2025_06_02_221804_create_diagnosticstatuts_table', 1),
(27, '2025_06_02_221804_create_diagnostictypes_table', 1),
(28, '2025_06_02_221804_create_documenttypes_table', 1),
(29, '2025_06_02_221804_create_dossierstatuts_table', 1),
(30, '2025_06_02_221804_create_echeancierstatuts_table', 1),
(31, '2025_06_02_221804_create_entrepriseprofils_table', 1),
(32, '2025_06_02_221804_create_entreprisetypes_table', 1),
(33, '2025_06_02_221804_create_espacetypes_table', 1),
(34, '2025_06_02_221804_create_evenementinscriptiontypes_table', 1),
(35, '2025_06_02_221804_create_evenementtypes_table', 1),
(36, '2025_06_02_221804_create_experttypes_table', 1),
(37, '2025_06_02_221804_create_expertvalides_table', 1),
(38, '2025_06_02_221804_create_formationniveaus_table', 1),
(39, '2025_06_02_221804_create_formationtypes_table', 1),
(40, '2025_06_02_221804_create_forumtypes_table', 1),
(41, '2025_06_02_221804_create_jours_table', 1),
(42, '2025_06_02_221804_create_langues_table', 1),
(43, '2025_06_02_221804_create_membrecategories_table', 1),
(44, '2025_06_02_221804_create_membrestatuts_table', 1),
(45, '2025_06_02_221804_create_membretypes_table', 1),
(46, '2025_06_02_221804_create_newslettertypes_table', 1),
(47, '2025_06_02_221804_create_offretypes_table', 1),
(48, '2025_06_02_221804_create_operationtypes_table', 1),
(49, '2025_06_02_221804_create_paiementstatuts_table', 1),
(50, '2025_06_02_221804_create_partenaireactivitetypes_table', 1),
(51, '2025_06_02_221804_create_partenairetypes_table', 1),
(52, '2025_06_02_221804_create_participantstatuts_table', 1),
(53, '2025_06_02_221804_create_piecetypes_table', 1),
(54, '2025_06_02_221804_create_prestationrealiseestatuts_table', 1),
(55, '2025_06_02_221804_create_prestationtypes_table', 1),
(56, '2025_06_02_221804_create_quizquestiontypes_table', 1),
(57, '2025_06_02_221804_create_quizresultatstatuts_table', 1),
(58, '2025_06_02_221804_create_recommandationorigines_table', 1),
(59, '2025_06_02_221804_create_recommandationtypes_table', 1),
(60, '2025_06_02_221804_create_reservationstatuts_table', 1),
(61, '2025_06_02_221804_create_ressourcetypes_table', 1),
(62, '2025_06_02_221804_create_secteurs_table', 1),
(63, '2025_06_02_221804_create_slidertypes_table', 1),
(64, '2025_06_02_221804_create_suivistatuts_table', 1),
(65, '2025_06_02_221804_create_suivitypes_table', 1),
(66, '2025_06_02_221804_create_veilletypes_table', 1),
(67, '2025_06_02_225744_create_accompagnementconseillers_table', 1),
(68, '2025_06_02_225744_create_accompagnementdocuments_table', 1),
(69, '2025_06_02_225744_create_accompagnements_table', 1),
(70, '2025_06_02_225744_create_actions_table', 1),
(71, '2025_06_02_225744_create_actualites_table', 1),
(72, '2025_06_02_225744_create_alertes_table', 1),
(73, '2025_06_02_225744_create_bons_table', 1),
(74, '2025_06_02_225744_create_bonutilises_table', 1),
(75, '2025_06_02_225744_create_chiffres_table', 1),
(76, '2025_06_02_225744_create_commentaires_table', 1),
(77, '2025_06_02_225744_create_communes_table', 1),
(78, '2025_06_02_225744_create_conseillerentreprises_table', 1),
(79, '2025_06_02_225744_create_conseillerprescriptions_table', 1),
(80, '2025_06_02_225744_create_conseillers_table', 1),
(81, '2025_06_02_225744_create_contacts_table', 1),
(82, '2025_06_02_225744_create_conversations_table', 1),
(83, '2025_06_02_225744_create_conversions_table', 1),
(84, '2025_06_02_225744_create_cotisations_table', 1),
(85, '2025_06_02_225744_create_credits_table', 1),
(86, '2025_06_02_225744_create_diagnosticmodules_table', 1),
(87, '2025_06_02_225744_create_diagnosticquestions_table', 1),
(88, '2025_06_02_225744_create_diagnosticreponses_table', 1),
(89, '2025_06_02_225744_create_diagnosticresultats_table', 1),
(90, '2025_06_02_225744_create_diagnostics_table', 1),
(91, '2025_06_02_225744_create_disponibilites_table', 1),
(92, '2025_06_02_225744_create_documents_table', 1),
(93, '2025_06_02_225744_create_echeanciers_table', 1),
(94, '2025_06_02_225744_create_entreprisemembres_table', 1),
(95, '2025_06_02_225744_create_entreprises_table', 1),
(96, '2025_06_02_225744_create_espaceressources_table', 1),
(97, '2025_06_02_225744_create_espaces_table', 1),
(98, '2025_06_02_225744_create_evaluations_table', 1),
(99, '2025_06_02_225744_create_evenementinscriptions_table', 1),
(100, '2025_06_02_225744_create_evenementressources_table', 1),
(101, '2025_06_02_225744_create_evenements_table', 1),
(102, '2025_06_02_225744_create_experts_table', 1),
(103, '2025_06_02_225744_create_faqs_table', 1),
(104, '2025_06_02_225744_create_formationressources_table', 1),
(105, '2025_06_02_225744_create_formations_table', 1),
(106, '2025_06_02_225744_create_forums_table', 1),
(107, '2025_06_02_225744_create_membres_table', 1),
(108, '2025_06_02_225744_create_messageforums_table', 1),
(109, '2025_06_02_225744_create_messages_table', 1),
(110, '2025_06_02_225744_create_newsletters_table', 1),
(111, '2025_06_02_225744_create_pagelibres_table', 1),
(112, '2025_06_02_225744_create_parrainages_table', 1),
(113, '2025_06_02_225744_create_partenaires_table', 1),
(114, '2025_06_02_225744_create_participants_table', 1),
(115, '2025_06_02_225744_create_payss_table', 1),
(116, '2025_06_02_225744_create_pieces_table', 1),
(117, '2025_06_02_225744_create_plans_table', 1),
(118, '2025_06_02_225744_create_prefectures_table', 1),
(119, '2025_06_02_225744_create_prestationrealisees_table', 1),
(120, '2025_06_02_225744_create_prestationressources_table', 1),
(121, '2025_06_02_225744_create_prestations_table', 1),
(122, '2025_06_02_225744_create_quartiers_table', 1),
(123, '2025_06_02_225744_create_quizmembres_table', 1),
(124, '2025_06_02_225744_create_quizquestions_table', 1),
(125, '2025_06_02_225744_create_quizreponses_table', 1),
(126, '2025_06_02_225744_create_quizresultats_table', 1),
(127, '2025_06_02_225744_create_quizs_table', 1),
(128, '2025_06_02_225744_create_recompenses_table', 1),
(129, '2025_06_02_225744_create_regions_table', 1),
(130, '2025_06_02_225744_create_reservations_table', 1),
(131, '2025_06_02_225744_create_ressourcecomptes_table', 1),
(132, '2025_06_02_225744_create_ressourcetransactions_table', 1),
(133, '2025_06_02_225744_create_ressourcetypeoffretypes_table', 1),
(134, '2025_06_02_225744_create_services_table', 1),
(135, '2025_06_02_225744_create_sliders_table', 1),
(136, '2025_06_02_225744_create_suivis_table', 1),
(137, '2025_06_02_225744_create_sujets_table', 1),
(138, '2025_06_02_225744_create_temoignages_table', 1),
(139, '2025_06_02_231000_add_membrecategorie_id_to_membretypes_table', 1),
(140, '2025_06_02_235000_add_vignette_to_diagnostics_table', 1),
(141, '2025_06_02_235100_add_vignette_to_diagnosticmodules_table', 1),
(142, '2025_06_02_235200_remove_vignette_from_diagnostics_table', 1),
(143, '2025_06_08_160000_create_cotisationressources_table', 1),
(144, '2025_06_09_120000_add_entrepriseprofil_id_and_nombre_jours_to_cotisationtypes_table', 1),
(145, '2025_06_09_123000_create_reductiontypes_table', 1),
(146, '2025_06_09_124500_remove_description_from_reductiontypes_table', 1),
(147, '2025_06_09_130000_make_titre_nullable_in_reductiontypes_table', 1),
(148, '2025_06_09_131000_make_pourcentage_montant_nullable_in_reductiontypes_table', 1),
(149, '2025_06_09_163000_add_dates_promotion_to_reductiontypes_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `newslettertype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `newslettertypes`
--

CREATE TABLE `newslettertypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `newslettertypes`
--

INSERT INTO `newslettertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Newsletter', 1, '2026-01-12 17:40:26', '2026-01-12 17:40:26');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offretypes`
--

CREATE TABLE `offretypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offretypes`
--

INSERT INTO `offretypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Prestations', 1, '2026-01-11 13:11:42', '2026-01-11 13:11:42'),
(2, 'Formations', 1, '2026-01-11 13:11:58', '2026-01-11 13:11:58'),
(3, 'Evènements', 1, '2026-01-11 13:12:16', '2026-01-11 13:12:16'),
(4, 'Espaces', 1, '2026-01-11 13:12:36', '2026-01-11 13:12:36');

-- --------------------------------------------------------

--
-- Structure de la table `operationtypes`
--

CREATE TABLE `operationtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `operationtypes`
--

INSERT INTO `operationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Crédit', 1, '2026-01-12 17:34:51', '2026-01-12 17:34:51'),
(2, 'Débit', 1, '2026-01-12 17:35:27', '2026-01-12 17:35:27'),
(3, 'Remboursement', 1, '2026-01-12 17:36:08', '2026-01-12 17:36:08'),
(4, 'Retrait', 1, '2026-01-12 17:36:20', '2026-01-12 17:36:20'),
(5, 'Conversion', 1, '2026-01-12 17:36:29', '2026-01-12 17:36:29');

-- --------------------------------------------------------

--
-- Structure de la table `pagelibres`
--

CREATE TABLE `pagelibres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `parent` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pagelibres`
--

INSERT INTO `pagelibres` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `parent`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'À propos du CIJES', 'L’incubateur qui transforme vos ambitions en réalités. Le Centre d’Incubation des Juniors Entreprises et Startups (CIJES) est bien plus qu’un incubateur : c’est une plateforme d’accompagnement hybride (physique et digital), pensée pour propulser les jeunes entreprises et startups togolaises vers la compétitivité, l’innovation et la durabilité.\r\nGrâce à un modèle unique basé sur les crédits d’incubation et les bons d’accompagnement, le CIJET offre un écosystème complet pour soutenir les entrepreneurs dans toutes les phases de leur développement.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/pagelibres/2025/07/21/687e9858cd1ab_groupe-d-afro-americains-travaillant-ensemble (1).jpg', 1, 1, 1, '2025-07-21 17:43:20', '2025-09-09 13:22:06'),
(2, 'Notre Vision', 'Devenir le catalyseur incontournable de l’entrepreneuriat innovant en Afrique de l’Ouest, en faisant du Togo un hub de référence pour les jeunes entreprises performantes, responsables et connectées aux marchés internationaux.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:44:18', '2025-09-09 11:30:48'),
(3, 'Notre Mission', NULL, '<p><strong>Structurer</strong> les projets pour les rendre viables et bancables.</p><p><strong>Accompagner</strong> les entrepreneurs avec des outils adaptés, du mentorat et des formations ciblées.</p><p><strong>Faciliter l’accès aux financements</strong> et aux opportunités de marché.</p><p><strong>Intégrer la technologie</strong> et l’intelligence artificielle pour booster la compétitivité des startups.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:44:53', '2025-09-09 11:31:47'),
(4, 'Nos Valeurs', NULL, '<p><strong>Innovation</strong> : Anticiper et intégrer les meilleures solutions pour l’entrepreneuriat.</p><p><strong>Collaboration</strong> : Créer un écosystème basé sur l’entraide et le partage d’expériences.</p><p><strong>Intégrité</strong> : Garantir la transparence dans tous nos processus et partenariats.</p><p><strong>Inclusion</strong> : Offrir un accès équitable aux services, sans barrières sociales ou financières.</p><p><strong>Impact</strong> : Mesurer notre réussite par la croissance et la durabilité des entreprises incubées.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:45:36', '2025-09-09 13:22:27'),
(5, 'Notre Approche Unique', NULL, '<p>CIJES combine <strong>expertise humaine</strong> et <strong>technologies avancées</strong> pour offrir :</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Un <strong>parcours d’incubation personnalisé</strong> adapté aux besoins réels.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Des <strong>bons d’accompagnement intelligents</strong> pour les services stratégiques.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Une <strong>intelligence artificielle intégrée</strong> pour le suivi et l’analyse en temps réel.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Une <strong>plateforme digitale</strong> accessible 24/7 pour rester connecté et progresser.</li></ol><p><br></p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:46:10', '2025-09-09 13:22:50');

-- --------------------------------------------------------

--
-- Structure de la table `paiementstatuts`
--

CREATE TABLE `paiementstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paiementstatuts`
--

INSERT INTO `paiementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2026-01-12 17:12:06', '2026-01-12 17:12:06'),
(2, 'Echoué', 1, '2026-01-12 17:12:36', '2026-01-12 17:12:36'),
(3, 'Annulé', 1, '2026-01-12 17:13:07', '2026-01-12 17:13:07'),
(4, 'Payé', 1, '2026-01-12 17:13:42', '2026-01-12 17:13:42');

-- --------------------------------------------------------

--
-- Structure de la table `parrainages`
--

CREATE TABLE `parrainages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `membre_parrain_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_filleul_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `partenaireactivitetypes`
--

CREATE TABLE `partenaireactivitetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contact` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `partenairetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id`, `titre`, `contact`, `description`, `langue_id`, `vignette`, `partenairetype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Partenaire 1 Partenaire 1', NULL, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-08-16 06:51:46', '2025-09-09 13:26:06');

-- --------------------------------------------------------

--
-- Structure de la table `partenairetypes`
--

CREATE TABLE `partenairetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenairetypes`
--

INSERT INTO `partenairetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Banques', 1, '2025-07-21 18:10:13', '2025-07-21 18:10:13'),
(2, 'Bailleurs', 1, '2025-07-21 18:10:25', '2025-07-21 18:10:25'),
(3, 'Ministères', 1, '2025-07-21 18:10:37', '2025-07-21 18:10:37'),
(4, 'ONG', 1, '2025-07-21 18:10:48', '2025-07-21 18:10:48'),
(5, 'Entreprises partenaires', 1, '2025-07-21 18:11:05', '2025-07-21 18:11:05');

-- --------------------------------------------------------

--
-- Structure de la table `participants`
--

CREATE TABLE `participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `formation_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateparticipant` date DEFAULT NULL,
  `participantstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `participants`
--

INSERT INTO `participants` (`id`, `membre_id`, `formation_id`, `dateparticipant`, `participantstatut_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-08-11', 1, 0, 1, '2025-08-11 14:52:24', '2025-08-11 14:52:24'),
(2, 2, 1, '2025-08-22', 1, 0, 1, '2025-08-22 12:44:43', '2025-08-22 12:44:43'),
(3, 4, 3, '2025-09-10', 1, 0, 1, '2025-09-10 12:16:31', '2025-09-10 12:16:31');

-- --------------------------------------------------------

--
-- Structure de la table `participantstatuts`
--

CREATE TABLE `participantstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `participantstatuts`
--

INSERT INTO `participantstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 14:36:26', '2026-01-12 17:16:20'),
(2, 'Peut-être', 1, '2026-01-12 17:17:04', '2026-01-12 17:17:04'),
(3, 'Non', 1, '2026-01-12 17:17:29', '2026-01-12 17:17:29');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payss`
--

CREATE TABLE `payss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `indicatif` varchar(255) DEFAULT NULL,
  `monnaie` varchar(255) DEFAULT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `drapeau` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payss`
--

INSERT INTO `payss` (`id`, `nom`, `code`, `indicatif`, `monnaie`, `etat`, `drapeau`, `created_at`, `updated_at`) VALUES
(2, 'Benin', 'BE', '229', 'XOF', 1, 'storage/drapeaux/2025/06/27/685eb9e2661d0_f775cd9e-d47d-4079-97cb-9aaee9413d29.png', '2025-06-27 13:24:29', '2025-06-28 09:24:46'),
(4, 'Togo', 'TG', '228', 'XOF', 1, 'storage/drapeaux/2025/06/28/685fd1f663091_Image1.png', '2025-06-28 09:28:54', '2025-06-28 09:28:54');

-- --------------------------------------------------------

--
-- Structure de la table `pieces`
--

CREATE TABLE `pieces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `fichier` varchar(255) DEFAULT NULL,
  `piecetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `datepiece` date DEFAULT NULL,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pieces`
--

INSERT INTO `pieces` (`id`, `titre`, `fichier`, `piecetype_id`, `datepiece`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'opérateur économique', 'pieces/yzlUDl7Ua4XByUK1r1TKmWdZLlw9PmnBmvVsjxm9.pdf', 1, '2025-09-10', 3, 0, 1, '2025-09-10 07:23:40', '2025-09-10 07:23:40'),
(2, 'Carte OTR', 'pieces/K3KYcuxJ9L1y4TpaXhh9HiSsVAOp7LJ43NYMF9Ea.png', 2, '2025-09-10', 3, 0, 1, '2025-09-10 07:23:40', '2025-09-10 07:23:40'),
(3, 'Récépissé', 'pieces/jqXH8tlvhuEDs8RKz9cU8PC5Av7NOpmO4db3YkDR.pdf', 3, '2025-09-10', 3, 0, 1, '2025-09-10 07:23:40', '2025-09-10 07:23:40'),
(4, 'Carte d\'opérateur économique', 'pieces/kCNii4Sbgstq9v0nq6UTJSdeQnPSxP8V2PcaR1ek.png', 1, '2025-09-22', 4, 0, 1, '2025-09-22 07:51:57', '2025-09-22 07:51:57'),
(5, 'Carte OTR', 'pieces/Jms2d4rAlQnwqe2Ph8FgxuGbC6SUDZxULX3cJo22.png', 2, '2025-09-22', 4, 0, 1, '2025-09-22 07:51:57', '2025-09-22 07:51:57'),
(6, 'Récépissé', 'pieces/xa2wFJBeyVijYEfcT06qm0wTQQ1dqlBegg687t5Z.png', 3, '2025-09-22', 4, 0, 1, '2025-09-22 07:51:57', '2025-09-22 07:51:57');

-- --------------------------------------------------------

--
-- Structure de la table `piecetypes`
--

CREATE TABLE `piecetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `piecetypes`
--

INSERT INTO `piecetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'opérateur économique', 1, '2025-08-22 10:24:02', '2025-08-22 10:24:02'),
(2, 'Carte OTR', 1, '2025-08-22 10:24:19', '2025-08-22 10:24:58'),
(3, 'Récépissé', 1, '2025-08-22 10:24:40', '2025-08-22 10:24:40');

-- --------------------------------------------------------

--
-- Structure de la table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objectif` text DEFAULT NULL,
  `actionprioritaire` longtext DEFAULT NULL,
  `dateplan` date DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plans`
--

INSERT INTO `plans` (`id`, `objectif`, `actionprioritaire`, `dateplan`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Développement de l’entreprise', 'Comment définir un plan stratégique efficace ?\r\n\r\nIdentifier les besoins financiers et humains pour mon projet\r\n\r\nChoisir entre accompagnement individuel ou collectif', '2025-07-09', 1, 0, 1, '2025-07-09 11:08:50', '2025-08-22 11:24:17'),
(2, 'Augmenter ma confiance en moi', 'Suivre des séances', '2025-09-11', 3, 0, 1, '2025-09-10 07:35:54', '2025-09-10 07:35:54');

-- --------------------------------------------------------

--
-- Structure de la table `prefectures`
--

CREATE TABLE `prefectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `cheflieu` varchar(255) DEFAULT NULL,
  `region_id` bigint(20) UNSIGNED DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prefectures`
--

INSERT INTO `prefectures` (`id`, `nom`, `cheflieu`, `region_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Golfe', 'Lomé', 1, 1, '2025-06-28 13:58:29', '2025-06-28 13:58:29');

-- --------------------------------------------------------

--
-- Structure de la table `prestationrealisees`
--

CREATE TABLE `prestationrealisees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) NOT NULL,
  `feedback` text DEFAULT NULL,
  `prestation_id` bigint(20) UNSIGNED DEFAULT 0,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `daterealisation` date DEFAULT NULL,
  `prestationrealiseestatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestationrealisees`
--

INSERT INTO `prestationrealisees` (`id`, `note`, `feedback`, `prestation_id`, `accompagnement_id`, `daterealisation`, `prestationrealiseestatut_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '50', 'gdfg wdfg ddf', 1, 1, '2025-07-08', 1, 0, 1, '2025-07-08 19:40:21', '2025-07-08 19:40:21');

-- --------------------------------------------------------

--
-- Structure de la table `prestationrealiseestatuts`
--

CREATE TABLE `prestationrealiseestatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestationrealiseestatuts`
--

INSERT INTO `prestationrealiseestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:29:50', '2025-06-18 13:29:53'),
(2, 'Terminé', 1, '2026-01-12 17:05:43', '2026-01-12 17:05:43');

-- --------------------------------------------------------

--
-- Structure de la table `prestationressources`
--

CREATE TABLE `prestationressources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) DEFAULT NULL,
  `reference` text DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcecompte_id` bigint(20) UNSIGNED DEFAULT 0,
  `prestation_id` bigint(20) UNSIGNED DEFAULT 0,
  `paiementstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prestations`
--

CREATE TABLE `prestations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `prix` varchar(255) NOT NULL,
  `duree` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `prestationtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestations`
--

INSERT INTO `prestations` (`id`, `titre`, `prix`, `duree`, `description`, `entreprise_id`, `prestationtype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'Prestations en développement web et mobile : comment se démarquer ?', '50000', '2 mois', '<p>Prestations en développement web et mobile : comment se démarquer ? Prestations en développement web et mobile : comment se démarquer ? Prestations en développement web et mobile : comment se démarquer ?</p>', 1, 2, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-08-11 11:18:04', '2025-08-22 10:42:53'),
(3, 'Etat financier', '250000', '1H', 'Votre état financier en 1H', 3, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-09-10 12:06:56', '2025-09-10 12:06:56');

-- --------------------------------------------------------

--
-- Structure de la table `prestationtypes`
--

CREATE TABLE `prestationtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prestationtypes`
--

INSERT INTO `prestationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Structuration', 1, '2025-08-05 14:45:06', '2026-01-11 13:13:27'),
(2, 'Organisation structurelle', 1, '2025-08-22 10:25:28', '2026-01-11 13:14:56');

-- --------------------------------------------------------

--
-- Structure de la table `quartiers`
--

CREATE TABLE `quartiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `commune_id` bigint(20) UNSIGNED DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quartiers`
--

INSERT INTO `quartiers` (`id`, `nom`, `commune_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Sagbado', 1, 1, '2025-06-28 14:45:12', '2025-06-28 14:45:12');

-- --------------------------------------------------------

--
-- Structure de la table `quizmembres`
--

CREATE TABLE `quizmembres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `quizquestion_id` bigint(20) UNSIGNED DEFAULT 0,
  `quizreponse_id` bigint(20) UNSIGNED DEFAULT 0,
  `valeur` text DEFAULT NULL,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizquestions`
--

CREATE TABLE `quizquestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` text NOT NULL,
  `point` varchar(255) DEFAULT NULL,
  `quiz_id` bigint(20) UNSIGNED DEFAULT 0,
  `quizquestiontype_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizquestiontypes`
--

CREATE TABLE `quizquestiontypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizreponses`
--

CREATE TABLE `quizreponses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `correcte` tinyint(1) NOT NULL DEFAULT 0,
  `quizquestion_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizresultats`
--

CREATE TABLE `quizresultats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `quiz_id` bigint(20) UNSIGNED DEFAULT 0,
  `quizresultatstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `score` text DEFAULT NULL,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizresultatstatuts`
--

CREATE TABLE `quizresultatstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quizs`
--

CREATE TABLE `quizs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` text DEFAULT NULL,
  `seuil_reussite` varchar(255) NOT NULL,
  `formation_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recommandationorigines`
--

CREATE TABLE `recommandationorigines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `recommandationorigines`
--

INSERT INTO `recommandationorigines` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'IA', 1, '2025-06-19 13:20:48', '2025-06-19 13:20:48'),
(2, 'Manuel', 1, '2025-06-19 13:21:01', '2025-06-19 13:21:01');

-- --------------------------------------------------------

--
-- Structure de la table `recommandationtypes`
--

CREATE TABLE `recommandationtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recompenses`
--

CREATE TABLE `recompenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `valeur` varchar(255) DEFAULT NULL,
  `commentaire` text DEFAULT NULL,
  `action_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `dateattribution` date DEFAULT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `source_id` varchar(255) DEFAULT NULL,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reductiontypes`
--

CREATE TABLE `reductiontypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `entrepriseprofil_id` bigint(20) UNSIGNED DEFAULT 0,
  `offretype_id` bigint(20) UNSIGNED DEFAULT 0,
  `pourcentage` decimal(5,2) DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `nom`, `code`, `pays_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Maritime', 'RM', '8409335f-e085-4597-9cae-359a60a816c6', 1, '2025-06-28 13:13:19', '2025-06-28 13:13:46'),
(3, 'Plateaux', 'RP', '11f6b6d5-f968-4b3a-9f99-531830286a09', 1, '2025-07-15 09:14:18', '2025-07-25 15:08:22');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `observation` text DEFAULT NULL,
  `reservationstatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `espace_id` bigint(20) UNSIGNED DEFAULT 0,
  `datedebut` date DEFAULT NULL,
  `datefin` date DEFAULT NULL,
  `montant` varchar(255) DEFAULT '0',
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `observation`, `reservationstatut_id`, `espace_id`, `datedebut`, `datefin`, `montant`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'toutes les journées du 18 et 19', 1, 2, '2025-09-18', '2025-09-19', '0', 4, 0, 1, '2025-09-10 07:44:24', '2025-09-10 07:44:24');

-- --------------------------------------------------------

--
-- Structure de la table `reservationstatuts`
--

CREATE TABLE `reservationstatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservationstatuts`
--

INSERT INTO `reservationstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45'),
(2, 'Validé', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45');

-- --------------------------------------------------------

--
-- Structure de la table `ressourcecomptes`
--

CREATE TABLE `ressourcecomptes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `solde` varchar(255) NOT NULL,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `entreprise_id` bigint(20) UNSIGNED DEFAULT 0,
  `user_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ressourcetransactions`
--

CREATE TABLE `ressourcetransactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `montant` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `ressourcecompte_id` bigint(20) UNSIGNED DEFAULT 0,
  `datetransaction` date DEFAULT NULL,
  `operationtype_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ressourcetypeoffretypes`
--

CREATE TABLE `ressourcetypeoffretypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offretype_id` bigint(20) UNSIGNED DEFAULT 0,
  `ressourcetype_id` bigint(20) UNSIGNED DEFAULT 0,
  `table_id` varchar(255) NOT NULL DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Structure de la table `ressourcetypes`
--

CREATE TABLE `ressourcetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ressourcetypes`
--

INSERT INTO `ressourcetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'KOBO', 1, '2025-09-13 13:02:38', '2025-09-13 13:02:38'),
(2, 'CORIS', 1, '2025-09-13 13:02:50', '2025-09-13 13:02:50'),
(3, 'BON', 1, '2025-09-13 13:03:08', '2025-09-13 13:03:08'),
(4, 'SIKA', 1, '2025-09-13 13:03:14', '2025-09-13 13:03:14');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'administrateur', 'Administrateur', '{\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\",\"platform.index\":\"1\"}', '2025-06-19 16:28:13', '2025-06-19 16:28:13');

-- --------------------------------------------------------

--
-- Structure de la table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(1, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Technologies et innovation', 1, '2025-08-22 10:50:55', '2025-08-22 10:50:55'),
(2, 'Incubateur de startups', 1, '2025-08-22 10:51:05', '2025-08-22 10:51:05');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Parcours d’incubation personnalisé', 'Un accompagnement adapté à votre réalité et vos objectifs.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:02:50', '2025-09-09 13:34:03'),
(2, 'Bons d’accompagnement intelligents', 'Des ressources ciblées pour booster votre croissance.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:03:20', '2025-09-09 13:34:23'),
(3, 'Experts & mentors agréés', 'Accédez à un réseau solide de professionnels.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:04:04', '2025-09-09 13:34:42'),
(4, 'Intelligence artificielle intégrée', 'Optimisez vos décisions grâce à la data et aux outils IA.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:04:33', '2025-09-09 13:35:14'),
(5, 'Suivi en temps réel de l’impact', 'Mesurez vos performances et votre progression.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:05:04', '2025-09-09 13:35:35'),
(6, 'Connexion aux marchés & financements', 'Nous ouvrons les portes des opportunités locales et internationales.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:05:35', '2025-09-09 13:33:42');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0NHY84NfwCvS7fwelCIPlEMrzRWPBAm7cMWUsXMp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUzQyRFF3bDRvY2htNmxZUHBHY2szSWhGMG1XMzl2bFRqeGJqaVdzSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766222704),
('djm9sfKbap0Oy0Q4Ux4vcImqgRoGFO06pOCUF1EC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY0c4VldnQVFnSWtjM0FveUNqQlVJaThkRGdTUTU0REdxbVVHekdjTyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766222794),
('GCYZBvlMV7v57wskc2nh1BREMDwuYl5odPqLJeLa', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOEFXenhVdXpkTE1GdjB3SVBjeTBJbTFHVlhKbU43cHdIZHQzYWlYWCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766337640),
('LpgpDv2JL9Rnrjmm8Wy9EUvK5OTEvNp509MgkNMH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZ3p4aUNYQW9NdWxEYWQ0cDFCUncwMDY5a3dqRFRqMUNoenRTc2xMQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766223391),
('pGLaxGTnfuH6Hl3bpTkA2qdswC6yO30ctiFzRuZG', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSG9mMnNSR2R0eFQzSlJPVktwWEFjRmhZQUNIME1oSjVUUUswYjZkZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1766224986),
('QWNU0PjkB0rGBmOr2jdLxCmMkG8A2pR6mInbXN1N', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV0k0M1NzbFdHbDBlMlVUakFGODN4Y080TFNHeGdndXZkS1FPbEVhRyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766337476),
('RBpvtgBZLzBZzevxJqul14bAePHuSnIQyXlfdbzx', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMHI5cWpnWGtGdjFBVGJhelB4RVc3aGlsQlR3T0ZwVklCSExhbzRJUSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo3O30=', 1766223486);

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `slidertype_id` bigint(20) UNSIGNED DEFAULT 0,
  `lienurl` text DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `slidertype_id`, `lienurl`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Incubons l’avenir ensemble', 'Accédez à un accompagnement structuré, intelligent et sans barrières.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/sliders/2025/07/21/687e9730bc2bd_groupe-d-afro-americains-travaillant-ensemble (3).jpg', 1, NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 17:38:24', '2025-09-09 13:26:23');

-- --------------------------------------------------------

--
-- Structure de la table `slidertypes`
--

CREATE TABLE `slidertypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `slidertypes`
--

INSERT INTO `slidertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Image', 1, '2025-07-02 20:54:26', '2025-07-02 20:54:26'),
(2, 'Vidéo', 1, '2025-07-02 20:54:34', '2025-07-02 20:54:34');

-- --------------------------------------------------------

--
-- Structure de la table `suivis`
--

CREATE TABLE `suivis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `observation` text NOT NULL,
  `suivistatut_id` bigint(20) UNSIGNED DEFAULT 0,
  `suivitype_id` bigint(20) UNSIGNED DEFAULT 0,
  `datesuivi` date DEFAULT NULL,
  `accompagnement_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suivis`
--

INSERT INTO `suivis` (`id`, `observation`, `suivistatut_id`, `suivitype_id`, `datesuivi`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'dg srdsrt grsgtr tr', 1, NULL, '2025-07-09', 1, 0, 1, '2025-07-08 19:05:33', '2025-07-08 19:05:33');

-- --------------------------------------------------------

--
-- Structure de la table `suivistatuts`
--

CREATE TABLE `suivistatuts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suivistatuts`
--

INSERT INTO `suivistatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actif', 1, '2025-06-18 13:37:15', '2025-06-18 16:41:02');

-- --------------------------------------------------------

--
-- Structure de la table `suivitypes`
--

CREATE TABLE `suivitypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sujets`
--

CREATE TABLE `sujets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `resume` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `vignette` varchar(255) DEFAULT NULL,
  `forum_id` bigint(20) UNSIGNED DEFAULT 0,
  `membre_id` bigint(20) UNSIGNED DEFAULT 0,
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sujets`
--

INSERT INTO `sujets` (`id`, `titre`, `resume`, `description`, `vignette`, `forum_id`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Comment valider son idée de startup avant de lancer ?', 'Comment valider son idée de startup avant de lancer ?', '<p><br></p>', 'storage/sujets/2025/07/10/686fa23377344_Image1.png', 1, 1, 0, 1, '2025-07-10 09:21:23', '2025-08-22 10:40:48');

-- --------------------------------------------------------

--
-- Structure de la table `temoignages`
--

CREATE TABLE `temoignages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `profil` varchar(255) DEFAULT NULL,
  `commentaire` text DEFAULT NULL,
  `langue_id` varchar(255) DEFAULT '0',
  `vignette` varchar(255) DEFAULT NULL,
  `pays_id` varchar(255) DEFAULT '0',
  `spotlight` tinyint(1) NOT NULL DEFAULT 0,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `nom`, `profil`, `commentaire`, `langue_id`, `vignette`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'LOOKY Yokamly', 'Informaticien', 'Grâce au CIJES, j\'ai pu structurer mon entreprise et accéder à des financements qui m\'étaient inaccessibles auparavant. L\'accompagnement des experts a été déterminant.', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/temoignages/2025/07/21/687ea405b875f_6388000.png', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-02 22:53:22', '2025-09-09 11:29:13');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `supabase_user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`permissions`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `supabase_user_id`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'ruben', 'yokamly@gmail.com', NULL, '$2y$12$zAnRDVer7dh20kI04UfmZu8WHOL4SqQ5DIWK1HzU6LMDT8Uk2Rshm', 'd3LtynGml0n5lEyNxSgVqX3u1ygRDEAfe5HomaRdzsIUF82V4ojPyQJElzle', NULL, '2025-06-02 19:57:26', '2025-06-02 19:57:26', '{\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"0\",\"platform.systems.attachment\":\"0\",\"platform.index\":\"0\"}'),
(2, 'John Doe', 'johndoe@gmail.com', NULL, '$2y$12$bcR3Wh.w9dEjnEJekjC0wOEAuB7vUNuzHm33ShwwLmt3JwyvE3x3C', NULL, NULL, '2025-08-22 10:03:46', '2025-08-22 10:03:46', NULL),
(3, 'Japhet', 'ptchabao@gmail.com', NULL, '$2y$12$py84LZKsnhNW65ljQztnBuStcxHaFGveVMmdVeVWVz3jQ4SmZNw5i', NULL, NULL, '2025-08-23 07:30:52', '2025-08-23 07:30:52', NULL),
(4, 'Joel', 'greatmiraclethebest@gmail.com', NULL, '$2y$12$leigKwENbezLOW9M52Vly.yJu56dd1eq0SYxHB8bbKVZ.DJnKz9Se', NULL, NULL, '2025-09-10 06:48:33', '2025-09-10 06:48:33', NULL),
(5, 'Assion TOMETY', 'assvictorien@gmail.com', NULL, '$2y$12$8YymD5lNowTP0udILZOeRuOjDotHqFVaX2aXYX/ZZoYTAMG77vnSG', NULL, NULL, '2025-09-10 06:54:33', '2025-09-11 22:50:36', '{\"platform.systems.attachment\":\"0\",\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"0\",\"platform.index\":\"0\"}'),
(6, 'Admin', 'admin@gmail.com', NULL, '$2y$12$H/HaNspVr1vY10DWjLqfOewyxknRuYmwgJd4cw/WPj53FSYbD2QEO', NULL, NULL, '2025-09-11 08:19:10', '2025-09-11 08:19:10', '{\"platform.systems.attachment\":\"0\",\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"0\",\"platform.index\":\"0\"}'),
(7, 'admin', 'admin@admin.com', NULL, '$2y$12$jRIhj/2d1CLHGk9P92eJ8uslTEeJVvhIHHOpYXh6AN6To5I/ywlTa', 'BpWTiWU7zyt9y5fhmCDz6g4gy6rmdTao2vT6LGpIUGA4wS92qn46UkjoEo31', NULL, '2025-12-20 09:35:48', '2025-12-20 09:35:48', '{\"platform.systems.roles\":true,\"platform.systems.users\":true,\"platform.systems.attachment\":true,\"platform.index\":true}');

-- --------------------------------------------------------

--
-- Structure de la table `veilletypes`
--

CREATE TABLE `veilletypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accompagnementconseillers`
--
ALTER TABLE `accompagnementconseillers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `accompagnementdocuments`
--
ALTER TABLE `accompagnementdocuments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `accompagnementniveaus`
--
ALTER TABLE `accompagnementniveaus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `accompagnements`
--
ALTER TABLE `accompagnements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `accompagnementstatuts`
--
ALTER TABLE `accompagnementstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `accompagnementtypes`
--
ALTER TABLE `accompagnementtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `actualitetypes`
--
ALTER TABLE `actualitetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `alertes`
--
ALTER TABLE `alertes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `alertetypes`
--
ALTER TABLE `alertetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachmentable_attachmentable_type_attachmentable_id_index` (`attachmentable_type`,`attachmentable_id`),
  ADD KEY `attachmentable_attachment_id_foreign` (`attachment_id`);

--
-- Index pour la table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bons`
--
ALTER TABLE `bons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bonstatuts`
--
ALTER TABLE `bonstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bontypes`
--
ALTER TABLE `bontypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bonutilises`
--
ALTER TABLE `bonutilises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `chiffres`
--
ALTER TABLE `chiffres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `communes`
--
ALTER TABLE `communes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseillerentreprises`
--
ALTER TABLE `conseillerentreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseillerprescriptions`
--
ALTER TABLE `conseillerprescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseillers`
--
ALTER TABLE `conseillers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseillertypes`
--
ALTER TABLE `conseillertypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conseillervalides`
--
ALTER TABLE `conseillervalides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacttypes`
--
ALTER TABLE `contacttypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `conversions`
--
ALTER TABLE `conversions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cotisationressources`
--
ALTER TABLE `cotisationressources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cotisations`
--
ALTER TABLE `cotisations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cotisationtypes`
--
ALTER TABLE `cotisationtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `creditstatuts`
--
ALTER TABLE `creditstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `credittypes`
--
ALTER TABLE `credittypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticmodules`
--
ALTER TABLE `diagnosticmodules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticmoduletypes`
--
ALTER TABLE `diagnosticmoduletypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticquestioncategories`
--
ALTER TABLE `diagnosticquestioncategories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticquestions`
--
ALTER TABLE `diagnosticquestions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticquestiontypes`
--
ALTER TABLE `diagnosticquestiontypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticreponses`
--
ALTER TABLE `diagnosticreponses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticresultats`
--
ALTER TABLE `diagnosticresultats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnostics`
--
ALTER TABLE `diagnostics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnosticstatuts`
--
ALTER TABLE `diagnosticstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `diagnostictypes`
--
ALTER TABLE `diagnostictypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `disponibilites`
--
ALTER TABLE `disponibilites`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `documenttypes`
--
ALTER TABLE `documenttypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dossierstatuts`
--
ALTER TABLE `dossierstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `echeanciers`
--
ALTER TABLE `echeanciers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `echeancierstatuts`
--
ALTER TABLE `echeancierstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprisemembres`
--
ALTER TABLE `entreprisemembres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entrepriseprofils`
--
ALTER TABLE `entrepriseprofils`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `entreprisetypes`
--
ALTER TABLE `entreprisetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `espaceressources`
--
ALTER TABLE `espaceressources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `espaces`
--
ALTER TABLE `espaces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `espacetypes`
--
ALTER TABLE `espacetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenementinscriptions`
--
ALTER TABLE `evenementinscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenementinscriptiontypes`
--
ALTER TABLE `evenementinscriptiontypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenementressources`
--
ALTER TABLE `evenementressources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenementtypes`
--
ALTER TABLE `evenementtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `experttypes`
--
ALTER TABLE `experttypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `expertvalides`
--
ALTER TABLE `expertvalides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formationniveaus`
--
ALTER TABLE `formationniveaus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formationressources`
--
ALTER TABLE `formationressources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formationtypes`
--
ALTER TABLE `formationtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forumtypes`
--
ALTER TABLE `forumtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jours`
--
ALTER TABLE `jours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membrecategories`
--
ALTER TABLE `membrecategories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membres_numero_identifiant_unique` (`numero_identifiant`);

--
-- Index pour la table `membrestatuts`
--
ALTER TABLE `membrestatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `membretypes`
--
ALTER TABLE `membretypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messageforums`
--
ALTER TABLE `messageforums`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newslettertypes`
--
ALTER TABLE `newslettertypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Index pour la table `offretypes`
--
ALTER TABLE `offretypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `operationtypes`
--
ALTER TABLE `operationtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pagelibres`
--
ALTER TABLE `pagelibres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiementstatuts`
--
ALTER TABLE `paiementstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parrainages`
--
ALTER TABLE `parrainages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaireactivitetypes`
--
ALTER TABLE `partenaireactivitetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaires`
--
ALTER TABLE `partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenairetypes`
--
ALTER TABLE `partenairetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `participantstatuts`
--
ALTER TABLE `participantstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `payss`
--
ALTER TABLE `payss`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pieces`
--
ALTER TABLE `pieces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `piecetypes`
--
ALTER TABLE `piecetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prefectures`
--
ALTER TABLE `prefectures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prestationrealisees`
--
ALTER TABLE `prestationrealisees`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prestationrealiseestatuts`
--
ALTER TABLE `prestationrealiseestatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prestationressources`
--
ALTER TABLE `prestationressources`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prestations`
--
ALTER TABLE `prestations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prestationtypes`
--
ALTER TABLE `prestationtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quartiers`
--
ALTER TABLE `quartiers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizmembres`
--
ALTER TABLE `quizmembres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizquestiontypes`
--
ALTER TABLE `quizquestiontypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizreponses`
--
ALTER TABLE `quizreponses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizresultats`
--
ALTER TABLE `quizresultats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizresultatstatuts`
--
ALTER TABLE `quizresultatstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quizs`
--
ALTER TABLE `quizs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recommandationorigines`
--
ALTER TABLE `recommandationorigines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recommandationtypes`
--
ALTER TABLE `recommandationtypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recompenses`
--
ALTER TABLE `recompenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reductiontypes`
--
ALTER TABLE `reductiontypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservationstatuts`
--
ALTER TABLE `reservationstatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ressourcecomptes`
--
ALTER TABLE `ressourcecomptes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ressourcetransactions`
--
ALTER TABLE `ressourcetransactions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ressourcetypeoffretypes`
--
ALTER TABLE `ressourcetypeoffretypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ressourcetypes`
--
ALTER TABLE `ressourcetypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Index pour la table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slidertypes`
--
ALTER TABLE `slidertypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suivis`
--
ALTER TABLE `suivis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suivistatuts`
--
ALTER TABLE `suivistatuts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `suivitypes`
--
ALTER TABLE `suivitypes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sujets`
--
ALTER TABLE `sujets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignages`
--
ALTER TABLE `temoignages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `veilletypes`
--
ALTER TABLE `veilletypes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accompagnementconseillers`
--
ALTER TABLE `accompagnementconseillers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `accompagnementdocuments`
--
ALTER TABLE `accompagnementdocuments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `accompagnementniveaus`
--
ALTER TABLE `accompagnementniveaus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `accompagnements`
--
ALTER TABLE `accompagnements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `accompagnementstatuts`
--
ALTER TABLE `accompagnementstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `accompagnementtypes`
--
ALTER TABLE `accompagnementtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `actualitetypes`
--
ALTER TABLE `actualitetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `alertes`
--
ALTER TABLE `alertes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `alertetypes`
--
ALTER TABLE `alertetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `attachmentable`
--
ALTER TABLE `attachmentable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `bons`
--
ALTER TABLE `bons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bonstatuts`
--
ALTER TABLE `bonstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bontypes`
--
ALTER TABLE `bontypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `bonutilises`
--
ALTER TABLE `bonutilises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `chiffres`
--
ALTER TABLE `chiffres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `communes`
--
ALTER TABLE `communes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `conseillerentreprises`
--
ALTER TABLE `conseillerentreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `conseillerprescriptions`
--
ALTER TABLE `conseillerprescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `conseillers`
--
ALTER TABLE `conseillers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `conseillertypes`
--
ALTER TABLE `conseillertypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `conseillervalides`
--
ALTER TABLE `conseillervalides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacttypes`
--
ALTER TABLE `contacttypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `conversions`
--
ALTER TABLE `conversions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cotisationressources`
--
ALTER TABLE `cotisationressources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cotisations`
--
ALTER TABLE `cotisations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cotisationtypes`
--
ALTER TABLE `cotisationtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `creditstatuts`
--
ALTER TABLE `creditstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `credittypes`
--
ALTER TABLE `credittypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `diagnosticmodules`
--
ALTER TABLE `diagnosticmodules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `diagnosticmoduletypes`
--
ALTER TABLE `diagnosticmoduletypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `diagnosticquestioncategories`
--
ALTER TABLE `diagnosticquestioncategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `diagnosticquestions`
--
ALTER TABLE `diagnosticquestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `diagnosticquestiontypes`
--
ALTER TABLE `diagnosticquestiontypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `diagnosticreponses`
--
ALTER TABLE `diagnosticreponses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT pour la table `diagnosticresultats`
--
ALTER TABLE `diagnosticresultats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT pour la table `diagnostics`
--
ALTER TABLE `diagnostics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `diagnosticstatuts`
--
ALTER TABLE `diagnosticstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `diagnostictypes`
--
ALTER TABLE `diagnostictypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `disponibilites`
--
ALTER TABLE `disponibilites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `documenttypes`
--
ALTER TABLE `documenttypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `dossierstatuts`
--
ALTER TABLE `dossierstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `echeanciers`
--
ALTER TABLE `echeanciers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `echeancierstatuts`
--
ALTER TABLE `echeancierstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `entreprisemembres`
--
ALTER TABLE `entreprisemembres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `entrepriseprofils`
--
ALTER TABLE `entrepriseprofils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `entreprisetypes`
--
ALTER TABLE `entreprisetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `espaceressources`
--
ALTER TABLE `espaceressources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `espaces`
--
ALTER TABLE `espaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `espacetypes`
--
ALTER TABLE `espacetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `evenementinscriptions`
--
ALTER TABLE `evenementinscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `evenementinscriptiontypes`
--
ALTER TABLE `evenementinscriptiontypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `evenementressources`
--
ALTER TABLE `evenementressources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `evenementtypes`
--
ALTER TABLE `evenementtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `experts`
--
ALTER TABLE `experts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `experttypes`
--
ALTER TABLE `experttypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `expertvalides`
--
ALTER TABLE `expertvalides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `formationniveaus`
--
ALTER TABLE `formationniveaus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `formationressources`
--
ALTER TABLE `formationressources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `formationtypes`
--
ALTER TABLE `formationtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `forumtypes`
--
ALTER TABLE `forumtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `jours`
--
ALTER TABLE `jours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `membrecategories`
--
ALTER TABLE `membrecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `membrestatuts`
--
ALTER TABLE `membrestatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `membretypes`
--
ALTER TABLE `membretypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `messageforums`
--
ALTER TABLE `messageforums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT pour la table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `newslettertypes`
--
ALTER TABLE `newslettertypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `offretypes`
--
ALTER TABLE `offretypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `operationtypes`
--
ALTER TABLE `operationtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `pagelibres`
--
ALTER TABLE `pagelibres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `paiementstatuts`
--
ALTER TABLE `paiementstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `parrainages`
--
ALTER TABLE `parrainages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partenaireactivitetypes`
--
ALTER TABLE `partenaireactivitetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partenaires`
--
ALTER TABLE `partenaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `partenairetypes`
--
ALTER TABLE `partenairetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `participantstatuts`
--
ALTER TABLE `participantstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `payss`
--
ALTER TABLE `payss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `pieces`
--
ALTER TABLE `pieces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `piecetypes`
--
ALTER TABLE `piecetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `prefectures`
--
ALTER TABLE `prefectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `prestationrealisees`
--
ALTER TABLE `prestationrealisees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `prestationrealiseestatuts`
--
ALTER TABLE `prestationrealiseestatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `prestationressources`
--
ALTER TABLE `prestationressources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prestations`
--
ALTER TABLE `prestations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `prestationtypes`
--
ALTER TABLE `prestationtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `quartiers`
--
ALTER TABLE `quartiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `quizmembres`
--
ALTER TABLE `quizmembres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizquestions`
--
ALTER TABLE `quizquestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizquestiontypes`
--
ALTER TABLE `quizquestiontypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizreponses`
--
ALTER TABLE `quizreponses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizresultats`
--
ALTER TABLE `quizresultats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizresultatstatuts`
--
ALTER TABLE `quizresultatstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quizs`
--
ALTER TABLE `quizs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recommandationorigines`
--
ALTER TABLE `recommandationorigines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `recommandationtypes`
--
ALTER TABLE `recommandationtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recompenses`
--
ALTER TABLE `recompenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reductiontypes`
--
ALTER TABLE `reductiontypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reservationstatuts`
--
ALTER TABLE `reservationstatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ressourcecomptes`
--
ALTER TABLE `ressourcecomptes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ressourcetransactions`
--
ALTER TABLE `ressourcetransactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ressourcetypeoffretypes`
--
ALTER TABLE `ressourcetypeoffretypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `ressourcetypes`
--
ALTER TABLE `ressourcetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `slidertypes`
--
ALTER TABLE `slidertypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `suivis`
--
ALTER TABLE `suivis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `suivistatuts`
--
ALTER TABLE `suivistatuts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `suivitypes`
--
ALTER TABLE `suivitypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sujets`
--
ALTER TABLE `sujets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `temoignages`
--
ALTER TABLE `temoignages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `veilletypes`
--
ALTER TABLE `veilletypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `attachmentable`
--
ALTER TABLE `attachmentable`
  ADD CONSTRAINT `attachmentable_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `attachments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
