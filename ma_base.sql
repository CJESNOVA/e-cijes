
--
-- Base de données : `cijet`
--

--
-- Déchargement des données de la table `accompagnementconseillers`
--

INSERT INTO `accompagnementconseillers` (`id`, `observation`, `accompagnementtype_id`, `conseiller_id`, `datedebut`, `datefin`, `montant`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, '2025-08-14', '2025-08-21', '50000', 2, 0, 1, '2025-08-14 09:18:44', '2025-08-22 11:28:56'),
(2, NULL, 1, 2, '2025-08-22', '2025-08-30', '50000', 1, 0, 1, '2025-08-22 11:30:10', '2025-08-22 11:30:10');

--
-- Déchargement des données de la table `accompagnementdocuments`
--

INSERT INTO `accompagnementdocuments` (`id`, `document_id`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2025-07-09 12:39:05', '2025-07-09 12:39:05');

--
-- Déchargement des données de la table `accompagnementniveaus`
--

INSERT INTO `accompagnementniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Diagnostic', 1, '2025-06-19 12:38:23', '2025-06-19 12:38:38');

--
-- Déchargement des données de la table `accompagnements`
--

INSERT INTO `accompagnements` (`id`, `membre_id`, `entreprise_id`, `accompagnementniveau_id`, `dateaccompagnement`, `accompagnementstatut_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2025-07-08', 2, 0, 1, '2025-07-08 18:37:06', '2025-08-22 21:26:11'),
(2, 2, 2, 1, '2025-08-22', 2, 0, 1, '2025-08-22 11:21:08', '2025-08-23 07:34:00'),
(3, 4, 0, 1, '2025-09-10', 1, 0, 1, '2025-09-10 07:33:31', '2025-09-10 07:33:31');

--
-- Déchargement des données de la table `accompagnementstatuts`
--

INSERT INTO `accompagnementstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:20:34', '2025-08-22 10:31:06'),
(2, 'Terminé', 1, '2025-08-22 21:25:32', '2025-08-22 21:25:32');

--
-- Déchargement des données de la table `accompagnementtypes`
--

INSERT INTO `accompagnementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseil', 1, '2025-08-14 09:12:11', '2025-08-14 09:12:11');

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `actualitetype_id`, `dateactualite`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Comment le CIJES révolutionne l’incubation des startups au Togo ?', 'Découvrez le modèle unique du CIJET qui allie technologie, accompagnement personnalisé et financement pour booster l’entrepreneuriat togolais.', '<p>L’incubation traditionnelle connaît une transformation majeure avec l’arrivée du CIJET. Plus qu’un simple incubateur, le CIJET propose un écosystème complet où l’innovation rencontre le financement et la technologie. À travers ses <strong>crédits d’incubation</strong>, ses <strong>bons d’accompagnement intelligents</strong> et son <strong>plateau digital interactif</strong>, il offre aux startups togolaises des outils inédits pour structurer leurs projets et accéder aux marchés.</p>', '8a99c479-75b7-43db-ab10-e4f2c7d361e7', 'storage/actualites/2025/07/25/68835473bfa72_5609177.jpg', 1, '2025-07-25', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 07:48:03', '2025-09-09 11:28:41'),
(2, '5 astuces pour rendre votre business plan irrésistible', 'Un business plan solide peut séduire investisseurs et partenaires. Voici 5 conseils pratiques pour le rendre convaincant et attractif.', '<p>Le business plan est la carte d’identité de votre projet. Mal rédigé, il peut fermer des portes ; bien structuré, il devient votre meilleur atout pour convaincre investisseurs et bailleurs. Dans cet article, nous vous dévoilons <strong>5 astuces incontournables</strong> pour concevoir un business plan clair, réaliste et séduisant, en mettant l’accent sur la viabilité financière et la stratégie de croissance.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/actualites/2025/07/25/6883567761be4_femme-d-affaires-afro-americaine-travaillant-sur-ordinateur.jpg', 3, '2025-07-25', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 07:58:41', '2025-09-09 13:24:51'),
(3, 'Success Story : De l’idée au marché grâce au CIJES', 'Découvrez comment un jeune entrepreneur a transformé une simple idée en une entreprise prospère grâce à l’accompagnement CIJES.', '<p>Chez CIJET, nous croyons que chaque idée mérite une chance. Cette success story raconte le parcours inspirant d’un incubé qui, grâce à notre <strong>parcours structuré</strong>, nos <strong>experts mentors</strong> et nos <strong>bons d’accompagnement</strong>, a franchi toutes les étapes : de la validation du concept jusqu’à la conquête du marché. Une preuve concrète que l’innovation, soutenue par un accompagnement efficace, peut changer des vies.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/actualites/2025/07/25/6883568cb619b_personnes-au-bureau-pendant-une-journee-de-travail.jpg', 2, '2025-07-24', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 08:02:01', '2025-09-09 13:24:29');

--
-- Déchargement des données de la table `actualitetypes`
--

INSERT INTO `actualitetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actualités CIJES', 1, '2025-07-25 07:52:12', '2025-07-25 07:52:12'),
(2, 'Événements & Formations', 1, '2025-07-25 07:52:25', '2025-07-25 07:52:25'),
(3, 'Conseils & Bonnes Pratiques', 1, '2025-07-25 07:52:49', '2025-07-25 07:52:49');

--
-- Déchargement des données de la table `alertes`
--

INSERT INTO `alertes` (`id`, `titre`, `contenu`, `lienurl`, `langue_id`, `alertetype_id`, `datealerte`, `membre_id`, `lu`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Alerte 1', 'Alerte 1 Alerte 1 Alerte 1 Alerte 1 Alerte 1', NULL, '1', 2, '2025-07-07', 1, 0, 1, '2025-07-07 17:26:28', '2025-07-08 07:04:35');

--
-- Déchargement des données de la table `alertetypes`
--

INSERT INTO `alertetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Alertes', 1, '2025-07-07 17:25:09', '2025-07-07 17:25:09'),
(2, 'Infos', 1, '2025-07-07 17:25:18', '2025-07-07 17:25:18');

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
(33, '64fe194339bc6941d7e3706d3c1814b3ed5c3131', 'afrique-togoéàç.png', 'image/png', 'png', 837328, 0, '2025/06/02/', NULL, NULL, 'dfb93b5d6796b83dc21dd811dfb6edb936238750', 'public', 1, NULL, '2025-07-07 14:31:14', '2025-07-07 14:31:14');

--
-- Déchargement des données de la table `bons`
--

INSERT INTO `bons` (`id`, `montant`, `bonstatut_id`, `bontype_id`, `datebon`, `pays_id`, `entreprise_id`, `user_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '500000', 1, 1, '2025-07-09', '8409335f-e085-4597-9cae-359a60a816c6', 1, 1, 0, 1, '2025-07-08 07:57:13', '2025-08-16 06:29:33');

--
-- Déchargement des données de la table `bonstatuts`
--

INSERT INTO `bonstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-16 06:29:13', '2025-08-22 10:30:41');

--
-- Déchargement des données de la table `bontypes`
--

INSERT INTO `bontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Bon d\'achat', 1, '2025-07-15 09:09:03', '2025-08-22 10:23:00');

--
-- Déchargement des données de la table `bonutilises`
--

INSERT INTO `bonutilises` (`id`, `montant`, `noteservice`, `bon_id`, `prestationrealisee_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '500000', 'dferfer', 1, 1, 0, 1, '2025-07-08 20:08:05', '2025-07-08 20:08:05');

--
-- Déchargement des données de la table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_5c785c036466adea360111aa28563bfd556b5fba', 'i:2;', 1766058098),
('laravel_cache_5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1766058098;', 1766058098);

--
-- Déchargement des données de la table `chiffres`
--

INSERT INTO `chiffres` (`id`, `titre`, `chiffre`, `langue_id`, `vignette`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'jeunes entreprises accompagnées', '500', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:08:02', '2025-09-09 13:27:38'),
(2, 'experts mobilisés', '80', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:08:27', '2025-09-09 13:27:53'),
(3, 'secteurs prioritaires couverts', '5', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:08:54', '2025-09-09 13:28:08'),
(4, 'emplois créés en 1 an', '300', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 18:09:19', '2025-09-09 13:27:23');

--
-- Déchargement des données de la table `communes`
--

INSERT INTO `communes` (`id`, `nom`, `prefecture_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Golfe 7', 1, 1, '2025-06-28 14:17:17', '2025-06-28 14:17:17'),
(2, 'Golfe 1', 1, 1, '2025-06-28 14:17:37', '2025-06-28 14:17:37');

--
-- Déchargement des données de la table `conseillerentreprises`
--

INSERT INTO `conseillerentreprises` (`id`, `conseiller_id`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2025-08-14 09:13:04', '2025-08-14 09:13:04');

--
-- Déchargement des données de la table `conseillerprescriptions`
--

INSERT INTO `conseillerprescriptions` (`id`, `conseiller_id`, `membre_id`, `entreprise_id`, `prestation_id`, `formation_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 1, 2, NULL, 0, 1, '2025-08-22 10:56:41', '2025-08-22 11:06:10'),
(3, 2, 2, 0, 0, 1, 0, 1, '2025-08-22 11:29:18', '2025-08-22 11:29:18'),
(4, 2, 2, 0, 2, 0, 0, 1, '2025-08-22 11:29:30', '2025-08-22 11:29:30'),
(5, 2, 2, 1, 2, 0, 0, 1, '2025-08-22 11:30:51', '2025-08-22 11:30:51');

--
-- Déchargement des données de la table `conseillers`
--

INSERT INTO `conseillers` (`id`, `fonction`, `conseillertype_id`, `conseillervalide_id`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '<p>Conseil sur les technologies de l\'informatique </p>', 1, 1, 1, 0, 1, '2025-08-12 10:51:35', '2025-08-22 10:55:20'),
(2, '<p>Conseiller</p>', 1, 1, 2, 0, 1, '2025-08-22 11:07:09', '2025-08-22 11:28:41');

--
-- Déchargement des données de la table `conseillertypes`
--

INSERT INTO `conseillertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Conseiller CIJES', 1, '2025-08-12 10:38:35', '2025-08-12 10:38:35');

--
-- Déchargement des données de la table `conseillervalides`
--

INSERT INTO `conseillervalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-12 10:38:15', '2025-08-22 10:19:59');

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`id`, `membre_id1`, `membre_id2`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2025-07-10 10:46:30', '2025-07-10 10:46:30');

--
-- Déchargement des données de la table `credits`
--

INSERT INTO `credits` (`id`, `montanttotal`, `montantutilise`, `creditstatut_id`, `credittype_id`, `datecredit`, `entreprise_id`, `pays_id`, `partenaire_id`, `user_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '555', '555', 1, 1, '2025-07-22', 1, '8409335f-e085-4597-9cae-359a60a816c6', 1, 1, 0, 1, '2025-07-10 18:36:04', '2025-08-16 06:52:18');

--
-- Déchargement des données de la table `creditstatuts`
--

INSERT INTO `creditstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 20:01:04', '2025-06-18 20:01:04');

--
-- Déchargement des données de la table `diagnosticmodules`
--

INSERT INTO `diagnosticmodules` (`id`, `titre`, `position`, `description`, `diagnosticmoduletype_id`, `parent`, `langue_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Profil du porteur de projet ou de l’entrepreneur débutant', 1, '<p>Identifier les forces personnelles, la maturité entrepreneuriale, la résilience émotionnelle, la capacité d’organisation et la vision stratégique du porteur de projet.</p>', 1, 0, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:02:09'),
(2, 'A. Posture entrepreneuriale et soft skills', 1, '<p><br></p>', 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 13:14:05', '2025-07-29 13:15:29'),
(3, 'B. Intelligence émotionnelle et résilience', 2, NULL, 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 13:15:14', '2025-07-29 13:15:14'),
(4, 'C. Analyse SWOT personnel', 3, NULL, 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-29 13:16:38', '2025-07-29 13:16:38'),
(5, 'BLOC 1 – STRUCTURE ORGANISATIONNELLE', 1, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(6, 'BLOC 2 – MODÈLE ÉCONOMIQUE & VIABILITÉ', 2, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(7, 'BLOC 3 – GOUVERNANCE & LEADERSHIP', 3, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(8, 'BLOC 4 – RESSOURCES HUMAINES', 4, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(9, 'BLOC 5 – CONFORMITÉ LÉGALE, FISCALE ET SOCIALE', 5, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(10, 'BLOC 6 – GESTION FINANCIÈRE & COMPTABILITÉ', 6, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(11, 'BLOC 7 – SYSTÈME D’INFORMATION & DIGITALISATION', 7, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(12, 'BLOC 8 – STRATÉGIE DE DÉVELOPPEMENT & PARTENARIATS', 8, NULL, 2, 0, NULL, NULL, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58');

--
-- Déchargement des données de la table `diagnosticmoduletypes`
--

INSERT INTO `diagnosticmoduletypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Diagnostics Membre', 1, '2025-08-13 13:04:35', '2025-08-13 13:04:35'),
(2, 'Diagnostics Entreprise', 1, '2025-08-13 13:04:48', '2025-08-13 13:04:48');

--
-- Déchargement des données de la table `diagnosticquestions`
--

INSERT INTO `diagnosticquestions` (`id`, `titre`, `position`, `diagnosticmodule_id`, `diagnosticquestiontype_id`, `diagnosticquestioncategorie_id`, `langue_id`, `obligatoire`, `parent`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Termines-tu ce que tu commences ?', '1', 2, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-09-11 22:36:55'),
(2, 'As-tu une vision structurée pour ton activité sur au moins 3 ans ?', '2', 2, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:27'),
(3, 'Quelle est ta principale motivation pour entreprendre ?', '3', 2, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:29'),
(4, 'Comment planifies-tu tes semaines ?', '4', 2, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:31'),
(5, 'Pour une activité nécessitant une équipe : sais-tu fédérer ou déléguer efficacement ?', '5', 2, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:38'),
(6, 'Face à une critique client injuste, comment réagis-tu ?', '6', 3, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:40'),
(7, 'Après un échec ou une mauvaise journée, que fais-tu ?', '7', 3, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:42'),
(8, 'En situation de stress ou de colère, que fais-tu ?', '8', 3, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:51'),
(9, 'Quand tu te compares aux autres entrepreneurs…', '9', 3, 1, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:47'),
(10, '1. Forces personnelles', '10', 4, 2, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 09:50:21', '2025-07-29 13:55:50'),
(11, '2. Faiblesses personnelles', '11', 4, 2, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:55:53'),
(12, '3. Opportunités : Ce qui peut t’aider autour de toi', '12', 4, 2, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:55:56'),
(13, '4. Menaces : Ce qui peut te freiner ou te décourager autour de toi', '13', 4, 2, NULL, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, NULL, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:55:21'),
(101, 'Est-ce que tu sais clairement “qui fait quoi” dans ton entreprise ?', '1', 5, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(102, 'Est-ce que les rôles et responsabilités sont bien définis ?', '2', 5, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(103, 'Avez-vous des règles ou méthodes de travail bien définies ?', '3', 5, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(104, 'Avez-vous un système pour bien communiquer et vous organiser entre vous ?', '4', 5, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:12:59', '2025-08-22 11:12:59'),
(201, 'Quelle est la valeur réelle que ton offre apporte aux clients ?', '1', 6, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(202, 'Sais-tu exactement qui est ton client principal ?', '2', 6, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(203, 'Sais-tu comment ton entreprise gagne de l\'argent ?', '3', 6, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(204, 'As-tu testé ton activité sur le terrain avant d’investir beaucoup ?', '4', 6, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(205, 'Ton modèle peut-il être répété ou développé ailleurs (scalable) ?', '5', 6, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(301, 'As-tu une vision claire de ce que tu veux bâtir dans 2 à 3 ans ?', '1', 7, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(302, 'Comment prends-tu les décisions importantes dans ton entreprise ?', '2', 7, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(303, 'Es-tu accompagné·e ou conseillé·e dans tes décisions stratégiques ?', '3', 7, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(304, 'Est-ce que tu appliques des valeurs ou principes dans ta façon de gérer ton activité ?', '4', 7, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(401, 'Comment choisis-tu les personnes qui travaillent avec toi ?', '1', 8, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(402, 'As-tu rédigé des fiches de poste ou des documents clairs pour expliquer le travail à faire ?', '2', 8, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(403, 'As-tu une manière de suivre le travail ou d’évaluer les performances de ceux qui t’aident ?', '3', 8, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(404, 'As-tu prévu de former ton équipe ou toi-même pour progresser ?', '4', 8, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(501, 'Est-ce que ton entreprise est enregistrée officiellement ?', '1', 9, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(502, 'Est-ce que tu es à jour dans le paiement de tes impôts et taxes ?', '2', 9, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(503, 'Est-ce que tu as ouvert un compte CNSS pour toi ou ton personnel ?', '3', 9, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(504, 'Est-ce que tu respectes les règles ou normes propres à ton activité ?', '4', 9, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(601, 'Est-ce que tu tiens ta comptabilité régulièrement ?', '1', 10, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(602, 'As-tu une idée claire de tes marges et de ta rentabilité ?', '2', 10, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(603, 'As-tu un budget prévisionnel ou un plan de trésorerie ?', '3', 10, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(604, 'As-tu accès à un financement formel (banque, microfinance, subvention…) ?', '4', 10, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(701, 'Utilises-tu des outils numériques pour gérer ton activité ?', '1', 11, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(702, 'As-tu une présence en ligne ?', '2', 11, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(703, 'Utilises-tu des outils de communication digitale avec tes clients ou ton équipe ?', '3', 11, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(704, 'Tes données (clients, finances, stock…) sont-elles sécurisées et sauvegardées ?', '4', 11, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(801, 'As-tu un plan pour développer ton activité dans les mois ou années à venir ?', '1', 12, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(802, 'As-tu des partenaires solides qui t’aident dans ton développement ?', '2', 12, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(803, 'Participes-tu à des programmes ou événements qui te permettent de progresser ?', '3', 12, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(804, 'Est-ce que tu innoves ou fais évoluer ton offre ?', '4', 12, 1, 0, NULL, 0, 0, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58');

--
-- Déchargement des données de la table `diagnosticquestiontypes`
--

INSERT INTO `diagnosticquestiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Choix unique', 1, '2025-07-29 12:55:21', '2025-07-29 12:55:21'),
(2, 'Choix multiple', 1, '2025-07-29 12:55:42', '2025-07-29 12:55:42');

--
-- Déchargement des données de la table `diagnosticreponses`
--

INSERT INTO `diagnosticreponses` (`id`, `titre`, `position`, `score`, `langue_id`, `diagnosticquestion_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Toujours, je vais jusqu’au bout même avec des obstacles', 1, 4, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 14:01:58'),
(2, 'Souvent, mais je ralentis si je rencontre un challenge difficile à surmonter', 2, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(3, 'Parfois, je commence beaucoup de choses mais j’abandonne si c’est trop difficile', 3, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(4, 'Non, honnêtement je me décourage facilement et j’abandonne avant la moitié face à un obstacle', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 1, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(5, 'Oui, claire, formalisée (écrite) avec des jalons chiffrés', 1, 4, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(6, 'Oui, présente mais non structurée (floue, non rédigée)', 2, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(7, 'J’y réfléchis, mais rien n’est défini ni documenté', 3, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(8, 'Non, je vis au jour le jour', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 2, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(9, 'Réaliser une vision personnelle & contribuer à la société', 1, 4, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(10, 'Innover, créer quelque chose de nouveau', 2, 4, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(11, 'Obtenir indépendance financière et réussite professionnelle', 3, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(12, 'Assurer un revenu stable, échapper à un besoin immédiat', 4, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(13, 'Je ne suis pas vraiment motivé·e, je réponds surtout à une pression extérieure', 5, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 3, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(14, 'J’ai un agenda hebdo, je définis 3 priorités et je bloque du temps pour chaque', 1, 4, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(15, 'Je note les tâches importantes de la semaine, mais sans horaire précis', 2, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(16, 'Je me fie à ma mémoire et une simple todo list', 3, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(17, 'Je ne planifie pas : je réagis au jour le jour', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 4, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(18, 'Oui : je motive, je choisis la bonne personne, je donne des consignes claires et je fais un suivi avec feedback', 1, 4, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(19, 'Je travaille en équipe, mais c’est parfois compliqué', 2, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(20, 'Je préfère tout faire seul, car c’est plus rapide ou sûr', 3, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(21, 'Je n’ai jamais dirigé ni travaillé en équipe', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 5, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(22, 'A. Je garde mon calme, j’écoute sans interrompre. Je prends du recul pour comprendre son point de vue, puis je lui réponds avec respect et fermeté, en posant des limites claires.', 1, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 6, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(23, 'B. Je reste poli·e en apparence, mais je suis blessé·e ou frustré·e à l’intérieur. Je ne cherche pas à comprendre, j’évite le conflit, même si je garde tout pour moi.', 2, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 6, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(24, 'C. Je me ferme, je m’énerve ou je réponds sur le même ton. Parfois, je ne dis rien et j’attends que ça passe.', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 6, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(25, 'A. J’analyse ce qui n’a pas fonctionné et je note ce que je peux en apprendre.', 1, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 7, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(26, 'B. J’en parle avec quelqu’un : un ami, un mentor ou un collègue.', 2, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 7, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(27, 'C. Je le laisse de côté : je passe à autre chose sans vraiment digérer ce qui s’est passé.', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 7, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(28, 'A. Je prends du recul : je m’arrête, je respire profondément, et j’attends quelques instants.', 1, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 8, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(29, 'B. Je réagis vite, sans réfléchir.', 2, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 8, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(30, 'C. Je crie, je m’énerve, ou je me ferme complètement.', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 8, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(31, 'A. Ça me motive : je regarde ce qu’ils font de mieux et je m’en inspire.', 1, 3, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 9, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(32, 'B. Parfois ça me décourage : je me sens en retard ou moins bon·ne.', 2, 2, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 9, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(33, 'C. Je me sens incapable : je perds confiance, je doute de moi.', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 9, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(34, 'Curieux·se ou plein·e d’idées', 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(35, 'Très énergique + structuré·e', 2, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(36, 'Bon·ne à écouter + empathique', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(37, 'Résilient·e : tu rebondis après un échec', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(38, 'Tu as un bon réseau ou un soutien familial', 5, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(39, 'Tu maîtrises bien ton métier', 6, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(40, 'Tu as une bonne stabilité financière', 7, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 10, 0, 1, '2025-07-29 09:50:21', '2025-07-29 09:50:21'),
(41, 'Je suis seul(e), je n’ai personne pour m’aider ou me conseiller', 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(42, 'Ma situation familiale ou personnelle me pèse', 2, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(43, 'Je ne maîtrise pas bien mon métier ou les outils qu’il faut', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(44, 'Je doute beaucoup de moi', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(45, 'Je repousse souvent ce que je dois faire', 5, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(46, 'Je me décourage facilement quand ça ne marche pas vite', 6, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(47, 'J’ai du mal à m’organiser ou à me discipliner', 7, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 11, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(48, 'Il existe des aides ou subventions accessibles là où je suis', 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(49, 'Je peux suivre des formations utiles près de chez moi ou en ligne', 2, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(50, 'Les gens autour de moi ont vraiment besoin de ce que je propose', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(51, 'Je connais quelqu’un (ou j’ai une piste) pour m’aider financièrement ou techniquement', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(52, 'Je fais partie d’un groupe ou d’un réseau d’entrepreneurs', 5, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(53, 'La loi et les papiers ne me bloquent pas trop pour travailler', 6, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(54, 'Je peux avoir un crédit ou une aide financière si je prépare bien mon dossier', 7, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 12, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(55, 'Il y a trop de personnes qui vendent la même chose que moi, souvent à bas prix', 1, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(56, 'Les lois, les papiers ou les conditions changent tout le temps', 2, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(57, 'Les taxes ou frais à payer sont trop lourds pour moi', 3, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(58, 'Je vois souvent du favoritisme ou de la corruption dans les démarches', 4, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(59, 'Les gens autour de moi n’ont pas assez d’argent pour acheter régulièrement', 5, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(60, 'Il y a de l’insécurité ou de l’instabilité là où je travaille', 6, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(61, 'Faire les démarches administratives prend trop de temps et d’énergie', 7, 1, '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 13, 0, 1, '2025-07-29 13:50:46', '2025-07-29 13:50:46'),
(62, 'Oui, j’ai un organigramme clair, écrit et à jour', 1, 5, NULL, 101, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(63, 'Oui, tout est clair dans ma tête, mais ce n’est pas formalisé (rédigé)', 2, 3, NULL, 101, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(64, 'Je travaille seul(e), donc je fais tout', 3, 2, NULL, 101, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(65, 'Non, je ne sais pas comment organiser ça, j’ai besoin d’aide', 4, 0, NULL, 101, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(66, 'Oui, chaque personne a une fiche de poste écrite et claire', 1, 5, NULL, 102, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(67, 'C’est expliqué oralement, mais ce n’est pas écrit', 2, 3, NULL, 102, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(68, 'Chacun fait un peu de tout selon les jours', 3, 2, NULL, 102, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(69, 'Je gère tout seul·e, je ne délègue rien', 4, 0, NULL, 102, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(70, 'Oui, tout est écrit, expliqué et suivi', 1, 5, NULL, 103, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(71, 'On a quelques méthodes connues, mais pas écrites', 2, 3, NULL, 103, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(72, 'On improvise selon les cas, sans méthode fixe', 3, 1, NULL, 103, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(73, 'Il n’y a pas de méthode claire, c’est difficile', 4, 0, NULL, 103, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(74, 'Oui, on a un bon système : réunions régulières + outils partagés', 1, 5, NULL, 104, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(75, 'On échange souvent mais de façon informelle (ex. WhatsApp)', 2, 3, NULL, 104, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(76, 'On communique peu, c’est un peu désorganisé', 3, 1, NULL, 104, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(77, 'Je travaille seul·e ou chacun est isolé, on se parle juste en cas d’urgence', 4, 0, NULL, 104, 0, 1, '2025-08-22 11:13:00', '2025-08-22 11:13:00'),
(78, 'Mon offre est semblable à celle des autres. Les clients n’ont pas vraiment de raison de me choisir', 1, 1, NULL, 201, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(79, 'Il y a quelques différences : prix, service, qualité ou accessibilité, mais rien d’unique', 2, 3, NULL, 201, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(80, 'Mon offre est vraiment distincte, bien pensée, difficile à copier, et appréciée pour ça', 3, 5, NULL, 201, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(81, 'Je connais très bien mon client : qui il est, ce qu’il aime, combien il peut payer, où le trouver', 1, 5, NULL, 202, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(82, 'J’ai une idée vague, je sais “plus ou moins” à qui je m’adresse, mais ce n’est pas très précis', 2, 3, NULL, 202, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(83, 'Je vends à qui veut, je n’ai pas de cible claire. Pour moi, “tout le monde peut acheter”', 3, 1, NULL, 202, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(84, 'Oui, je connais mes prix, mes coûts, mes marges. Je sais ce que je gagne sur chaque vente', 1, 5, NULL, 203, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(85, 'Je vends mais je ne suis pas certain(e) de mes vrais bénéfices. Je ne calcule pas toujours', 2, 3, NULL, 203, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(86, 'Je fixe les prix au hasard ou en copiant les autres, sans savoir si c’est rentable', 3, 1, NULL, 203, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(87, 'Oui, j’ai testé pendant un moment avec de vrais clients (ventes réelles, retours, adaptation)', 1, 5, NULL, 204, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(88, 'J’ai demandé des avis autour de moi, mais je n’ai pas fait de vrais tests avant de me lancer', 2, 3, NULL, 204, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(89, 'Non, je n’ai rien testé. J’ai tout lancé directement sans savoir si ça allait marcher', 3, 1, NULL, 204, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(90, 'Oui, je peux ouvrir la même activité dans d’autres villes, zones, ou même à l’étranger', 1, 5, NULL, 205, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(91, 'Peut-être, mais je n’ai pas encore pensé à comment le faire concrètement', 2, 3, NULL, 205, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(92, 'Non, mon activité dépend trop d’un lieu, d’une personne ou d’un contexte difficile à copier', 3, 1, NULL, 205, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(93, 'Oui, c’est clair dans ma tête ou sur papier : je sais où je vais, avec des objectifs précis', 1, 5, NULL, 301, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(94, 'J’ai des idées, mais elles ne sont pas encore très claires ni bien organisées', 2, 3, NULL, 301, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(95, 'Pour l’instant, je me concentre sur le quotidien. Le long terme, ce sera pour plus tard', 3, 1, NULL, 301, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(96, 'Honnêtement, je gère au jour le jour, je n’ai pas encore de vraie direction', 4, 0, NULL, 301, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(97, 'Je réfléchis, je consulte les bonnes personnes, et je pèse les options avant de trancher', 1, 5, NULL, 302, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(98, 'Je décide seul·e, mais je demande parfois l’avis des autres', 2, 3, NULL, 302, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(99, 'Je décide surtout au feeling, sans vraie méthode', 3, 1, NULL, 302, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(100, 'Je laisse les choses se faire, j’attends souvent que d’autres décident pour moi', 4, 0, NULL, 302, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(101, 'Oui, j’ai un accompagnateur ou un réseau que je consulte régulièrement', 1, 5, NULL, 303, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(102, 'Je connais quelques personnes vers qui je me tourne si besoin', 2, 3, NULL, 303, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(103, 'Je n’ai personne avec qui échanger, je réfléchis tout·e seul·e', 3, 1, NULL, 303, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(104, 'Je n’ai jamais cherché d’aide ou de mentorat, ce n’est pas mon truc', 4, 0, NULL, 303, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(105, 'Oui, j’ai défini mes principes et je les applique, même quand c’est difficile', 1, 5, NULL, 304, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(106, 'J’essaie d’être juste, mais je m’adapte selon les situations pour survivre', 2, 3, NULL, 304, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(107, 'Je fais surtout ce qui m’arrange ou ce que tout le monde fait', 3, 1, NULL, 304, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(108, 'Je ne me suis jamais posé la question, je fais juste de mon mieux pour tenir', 4, 0, NULL, 304, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(109, 'Je recrute avec un profil précis, selon des critères clairs, et j’explique bien les attentes', 1, 5, NULL, 401, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(110, 'Je choisis les gens selon leur motivation ou relation, mais je n’ai pas de méthode claire', 2, 3, NULL, 401, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(111, 'Je travaille avec ceux qui sont disponibles, même sans expérience', 3, 1, NULL, 401, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(112, 'Je n’ai jamais eu besoin de recruter', 4, 0, NULL, 401, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(113, 'Oui, chaque poste a un document clair (missions, responsabilités, résultats attendus)', 1, 5, NULL, 402, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(114, 'J’explique les tâches oralement, mais ce n’est pas écrit', 2, 3, NULL, 402, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(115, 'Chacun se débrouille, on s’adapte en fonction du jour', 3, 1, NULL, 402, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(116, 'Je suis seul·e, ou je fais tout moi-même', 4, 0, NULL, 402, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(117, 'Oui, je fais un suivi régulier (hebdomadaire ou mensuel) et je donne du feedback', 1, 5, NULL, 403, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(118, 'J’essaie de voir si le travail avance, mais sans vrai système', 2, 3, NULL, 403, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(119, 'Je ne contrôle pas vraiment, sauf en cas de gros problème', 3, 1, NULL, 403, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(120, 'Je n’ai jamais eu à suivre quelqu’un, je travaille seul·e', 4, 0, NULL, 403, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(121, 'Oui, je planifie des formations ou des temps d’apprentissage selon les besoins', 1, 5, NULL, 404, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(122, 'Je donne quelques conseils ou j’apprends “sur le tas”', 2, 3, NULL, 404, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(123, 'Je n’y ai jamais pensé ou je n’ai pas de temps pour ça', 3, 1, NULL, 404, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(124, 'Je n’ai pas d’équipe ou je ne me forme pas actuellement', 4, 0, NULL, 404, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(125, 'Oui, j’ai tous les documents légaux requis, à jour', 1, 5, NULL, 501, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(126, 'J’ai commencé les démarches ou j’ai une reconnaissance partielle', 2, 3, NULL, 501, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(127, 'J’exerce sans immatriculation pour l’instant', 3, 1, NULL, 501, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(128, 'Je ne sais pas comment faire ou à qui m’adresser', 4, 0, NULL, 501, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(129, 'Oui, je déclare et je paie régulièrement ce qui est exigé', 1, 5, NULL, 502, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(130, 'Je paie certaines taxes, mais pas tout ou pas toujours à temps', 2, 3, NULL, 502, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(131, 'Je ne paie pas, je n’ai pas les moyens de supporter toutes les charges', 3, 1, NULL, 502, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(132, 'Je n’ai jamais rien payé, je crains les contrôles ou sanctions', 4, 0, NULL, 502, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(133, 'Oui, j’ai un numéro CNSS et je déclare régulièrement', 1, 5, NULL, 503, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(134, 'Je connais la CNSS mais je ne suis pas encore inscrit', 2, 3, NULL, 503, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(135, 'Je ne sais pas comment fonctionne la CNSS', 3, 1, NULL, 503, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(136, 'Je ne pense pas que ce soit nécessaire dans mon cas', 4, 0, NULL, 503, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(137, 'Oui, je sais tout ce qu’il fait et j’ai tous les agréments ou autorisations nécessaires', 1, 5, NULL, 504, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(138, 'J’en connais quelques-uns, mais je ne suis pas encore en règle totalement', 2, 3, NULL, 504, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(139, 'Je n’ai aucune autorisation officielle, je travaille comme je peux', 3, 1, NULL, 504, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(140, 'Je ne suis pas au courant qu’il y a des règles à respecter', 4, 0, NULL, 504, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(141, 'Oui, j’ai une comptabilité à jour, avec livre de recettes/dépenses ou logiciel de gestion', 1, 5, NULL, 601, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(142, 'Je note mes dépenses et revenus, mais pas de façon organisée et systématique', 2, 3, NULL, 601, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(143, 'Je garde quelques reçus ou comptes approximatifs dans ma tête', 3, 1, NULL, 601, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(144, 'Je ne note rien du tout, je ne m’en occupe pas', 4, 0, NULL, 601, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(145, 'Oui, je calcule mes marges par produit/service et je connais mon seuil de rentabilité', 1, 5, NULL, 602, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(146, 'J’ai une idée approximative, mais je ne fais pas de calcul précis', 2, 3, NULL, 602, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(147, 'Je sais combien je vends, mais pas combien il me reste vraiment', 3, 1, NULL, 602, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(148, 'Je ne me suis jamais posé la question', 4, 0, NULL, 602, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(149, 'Oui, j’ai un budget/planning de trésorerie pour les prochains mois', 1, 5, NULL, 603, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(150, 'J’essaie de prévoir mentalement, mais ce n’est pas formalisé ou écrit', 2, 3, NULL, 603, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(151, 'Je vis au jour le jour, je vois au fur et à mesure', 3, 1, NULL, 603, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(152, 'Je ne sais pas comment faire cela', 4, 0, NULL, 603, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(153, 'Oui, j’ai déjà obtenu un crédit ou une subvention pour mon activité', 1, 5, NULL, 604, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(154, 'J’ai fait des démarches ou j’ai des pistes', 2, 3, NULL, 604, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(155, 'Je n’ai jamais essayé, je ne sais pas à qui m’adresser', 3, 1, NULL, 604, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(156, 'Je pense que ce n’est pas fait pour moi', 4, 0, NULL, 604, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(157, 'Oui, j’utilise un ou plusieurs logiciels (ex. : Excel, CRM, facturation, gestion commerciale)', 1, 5, NULL, 701, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(158, 'J’utilise un peu le numérique mais ce n’est pas régulier ni organisé', 2, 3, NULL, 701, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(159, 'Je fais tout à la main, sans outil numérique', 3, 1, NULL, 701, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(160, 'Je ne vois pas encore l’intérêt d’utiliser le numérique', 4, 0, NULL, 701, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(161, 'Oui, j’ai au moins un canal actif avec des publications fréquentes', 1, 5, NULL, 702, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(162, 'J’ai une page ou un compte, mais je l’utilise rarement', 2, 3, NULL, 702, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(163, 'J’ai commencé à créer quelque chose, mais ce n’est pas encore prêt', 3, 1, NULL, 702, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(164, 'Je n’ai aucune présence en ligne', 4, 0, NULL, 702, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(165, 'Oui, j’ai mis en place des canaux clairs pour échanger efficacement', 1, 5, NULL, 703, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(166, 'On communique par téléphone ou WhatsApp au cas par cas', 2, 3, NULL, 703, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(167, 'On n’utilise aucun canal précis, chacun se débrouille', 3, 1, NULL, 703, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(168, 'Je travaille seul(e), donc je n’ai pas mis ça en place', 4, 0, NULL, 703, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(169, 'Oui, je protège mes données et je fais des sauvegardes régulières', 1, 5, NULL, 704, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(170, 'Je garde des infos quelque part mais ce n’est pas sécurisé', 2, 3, NULL, 704, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(171, 'Je garde tout dans mon téléphone ou ma tête', 3, 1, NULL, 704, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(172, 'Je n’ai aucune organisation pour mes données', 4, 0, NULL, 704, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(173, 'Oui, j’ai un plan clair, écrit ou bien pensé, avec des étapes', 1, 5, NULL, 801, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(174, 'J’ai des idées de développement, mais ce n’est pas encore structuré', 2, 3, NULL, 801, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(175, 'Je n’ai pas encore pensé à ça, je me concentre sur ce que je fais déjà', 3, 1, NULL, 801, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(176, 'Je ne pense pas que ce soit possible pour mon activité', 4, 0, NULL, 801, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(177, 'Oui, j’ai des partenaires actifs avec qui je travaille ou collabore', 1, 5, NULL, 802, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(178, 'J’ai quelques contacts, mais ce ne sont pas encore des partenariats solides', 2, 3, NULL, 802, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(179, 'Je travaille seul·e, sans partenaire', 3, 1, NULL, 802, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(180, 'Je n’ai jamais cherché à créer de partenariat', 4, 0, NULL, 802, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(181, 'Oui, régulièrement. Je me forme, je postule à des programmes ou j’expose mon activité', 1, 5, NULL, 803, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(182, 'De temps en temps, quand j’en entends parler', 2, 3, NULL, 803, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(183, 'Rarement ou jamais. Je ne suis pas connecté·e à ces opportunités', 3, 1, NULL, 803, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(184, 'Je ne vois pas en quoi cela pourrait m’aider pour le moment', 4, 0, NULL, 803, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(185, 'Oui, j’améliore ou adapte régulièrement mes produits/services', 1, 5, NULL, 804, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(186, 'J’y pense parfois, mais ce n’est pas encore une habitude', 2, 3, NULL, 804, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(187, 'Je ne change rien. Ce que je propose reste le même', 3, 1, NULL, 804, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58'),
(188, 'Je ne vois pas l’intérêt de changer ce qui fonctionne déjà', 4, 0, NULL, 804, 0, 1, '2025-08-22 11:16:58', '2025-08-22 11:16:58');

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

--
-- Déchargement des données de la table `diagnosticstatuts`
--

INSERT INTO `diagnosticstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En cours', 1, '2025-08-22 10:27:32', '2025-08-22 10:27:32'),
(2, 'Validé', 1, '2025-08-22 10:29:11', '2025-08-22 10:29:11');

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

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `titre`, `fichier`, `documenttype_id`, `datedocument`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'dfghkjkbvh chj', 'storage/documents/2025/07/09/686e7027978e2_Rapport_Reunion_CJET_EQUIPE IT.pdf', NULL, '2025-07-09', 1, 0, 1, '2025-07-09 11:35:35', '2025-07-09 11:35:35'),
(2, 'Carte d\'identité', 'documents/4HshsYjtM8obQXrFHqaJCNxgajBIdigJw8o4eqdd.png', 1, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52'),
(3, 'Passeport', 'documents/MZ8RnKTfv95UjytDqGBKeB3H0PiCGkqUdNeZrHsk.png', 2, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52'),
(4, 'Acte de naissance', 'documents/mZMRNoxZp0wYbeSjka2FAp3NiXih77BBEGwuteY7.jpg', 3, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52'),
(5, 'Certificat de nationalité', 'documents/H3MO3NzpJaazfFGV65Mn6UVEJVLHMzSOmLCJsx8R.png', 4, '2025-09-10', 4, 0, 1, '2025-09-10 07:10:52', '2025-09-10 07:10:52');

--
-- Déchargement des données de la table `documenttypes`
--

INSERT INTO `documenttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'identité', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:42'),
(2, 'Passeport', 1, '2025-07-28 21:17:05', '2025-08-22 10:20:57'),
(3, 'Acte de naissance', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:17'),
(4, 'Certificat de nationalité', 1, '2025-07-28 21:17:05', '2025-08-22 10:21:37');

--
-- Déchargement des données de la table `echeanciers`
--

INSERT INTO `echeanciers` (`id`, `montant`, `echeancierstatut_id`, `dateecheancier`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '566', NULL, '2025-07-10', 1, 0, 1, '2025-07-10 19:34:08', '2025-07-10 19:34:08');

--
-- Déchargement des données de la table `entreprisemembres`
--

INSERT INTO `entreprisemembres` (`id`, `fonction`, `bio`, `membre_id`, `entreprise_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'Directeur', 'NovaLabs est un laboratoire d’innovation technologique dédié à l’accompagnement des startups et porteurs de projets à fort potentiel. Fondée en 2025 par des experts en technologie, entrepreneuriat et business development, NovaLabs a pour mission de transformer des idées novatrices en entreprises viables et durables.', 1, 1, 0, 1, '2025-08-22 10:51:33', '2025-08-22 21:35:52'),
(3, 'Directeur', NULL, 1, 2, 0, 1, '2025-08-22 21:31:10', '2025-08-22 21:36:16'),
(4, 'Consultant', NULL, 2, 2, 0, 1, '2025-08-23 07:26:20', '2025-08-23 07:26:20'),
(5, 'Directeur Général', 'Expert en Digitalisation et Management d\'entreprise', 4, 3, 0, 1, '2025-09-10 07:20:54', '2025-09-10 07:20:54'),
(6, 'PDG', 'Serial entrepreneur', 4, 4, 0, 1, '2025-09-22 07:49:15', '2025-09-22 07:49:15');

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `nom`, `email`, `telephone`, `adresse`, `description`, `vignette`, `entreprisetype_id`, `secteur_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'NovaLabs', 'yokamly@gmail.com', '90291387', '57, rue tchiko adewui', 'Innovation / Tech / Startups', 'Laravel/storage/app/public/entreprises/MJoM8EMgBM2NXNe0StRDDRFDJGiGhhNBpERZbyFw.png', 2, 1, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-07 14:48:01', '2025-08-22 13:30:28'),
(2, 'SKE Group', 'yokamly@gmail.com', '90291387', '57, rue tchiko adewui', NULL, NULL, 1, 2, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-08-22 21:31:10', '2025-08-23 07:26:20'),
(3, 'INNOVA TECH', 'innovatech@gmail.com', 'AZERZERTAETAERATER23534534', 'Kégué, lomé Togo', 'La vie est belle avec le digital', 'entreprises/Ypplp9dqKAHIarnKhXVP5OBBsctBptS5CmmALqUX.png', 2, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 1, 1, '2025-09-10 07:20:54', '2025-09-22 07:50:42'),
(4, 'High Lab Tech', 'highlabtech@gmail.com', '+22890909090', 'Kégué, Lomé', 'Spécialisation en informatique', 'entreprises/60okuwooh3mAnRFEVYTXu8jm5kUd6zZkcuDutCZI.png', 2, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 1, 1, '2025-09-22 07:49:15', '2025-09-22 07:50:50');

--
-- Déchargement des données de la table `entreprisetypes`
--

INSERT INTO `entreprisetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'SA', 1, '2025-06-18 21:29:26', '2025-06-18 21:29:26'),
(2, 'SARL', 1, '2025-06-18 21:29:41', '2025-06-18 21:29:41');

--
-- Déchargement des données de la table `espaces`
--

INSERT INTO `espaces` (`id`, `titre`, `capacite`, `resume`, `description`, `vignette`, `espacetype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Nos salles de conférences', '20 m2', 'Nos salles de conférences à des prix imbattables', '<p>Nos salles de conférences à des prix imbattables </p>', 'Laravel/storage/app/public/espaces/2025/08/22/68a8923d9fd65_salle-de-reunion-d-affaires.jpg', 1, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-10 13:39:45', '2025-08-22 13:52:29'),
(2, 'Des bureaux à louer', '10 m2', NULL, '<p><br></p>', 'Laravel/storage/app/public/espaces/2025/08/22/68a89258924d3_employe-masculin-a-son-nouveau-travail-de-bureau.jpg', 2, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-10 13:39:45', '2025-08-22 13:52:56');

--
-- Déchargement des données de la table `espacetypes`
--

INSERT INTO `espacetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Salle de conférence', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15'),
(2, 'Co-working', 1, '2025-07-31 08:04:15', '2025-07-31 08:04:15');

--
-- Déchargement des données de la table `evaluations`
--

INSERT INTO `evaluations` (`id`, `note`, `commentaire`, `membre_id`, `expert_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, '1', 'Hum', 4, 3, 0, 1, '2025-09-10 07:50:32', '2025-09-22 07:40:22');

--
-- Déchargement des données de la table `evenementinscriptions`
--

INSERT INTO `evenementinscriptions` (`id`, `membre_id`, `evenement_id`, `dateevenementinscription`, `evenementinscriptiontype_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-08-11', 2, 0, 1, '2025-08-11 10:57:55', '2025-08-11 10:57:55'),
(2, 2, 1, '2025-08-22', 1, 0, 1, '2025-08-22 10:52:31', '2025-08-22 10:52:31'),
(3, 4, 1, '2025-09-10', 1, 0, 1, '2025-09-10 07:39:55', '2025-09-10 07:39:55');

--
-- Déchargement des données de la table `evenementinscriptiontypes`
--

INSERT INTO `evenementinscriptiontypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Oui', 1, '2025-08-11 10:50:43', '2025-08-11 10:50:43'),
(2, 'Peut-être', 1, '2025-08-11 10:51:01', '2025-08-11 10:51:01'),
(3, 'Non', 1, '2025-08-11 10:51:09', '2025-08-11 10:51:09');

--
-- Déchargement des données de la table `evenements`
--

INSERT INTO `evenements` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `evenementtype_id`, `dateevenement`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Networking Entrepreneurial', 'Rencontres entre entrepreneurs', '<p>Séance mensuelle de networking pour échanger avec d’autres fondateurs et experts du secteur.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/evenements/2025/08/11/6899ded185c94_conseil.JPG', 3, '2025-08-11 12:15:00', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-08-11 10:15:13', '2025-09-09 13:25:31'),
(2, 'Startup Bootcamp 2025', 'Formation intensive pour incubés', '<p>Un bootcamp de 3 jours destiné aux startups incubées, avec ateliers pratiques sur le business model, le pitch, et la levée de fonds.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/evenements/2025/08/21/68a77f003de33_conseils.JPG', 1, '2025-08-21 20:10:00', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 0, '2025-08-21 18:10:54', '2025-09-09 13:25:08');

--
-- Déchargement des données de la table `evenementtypes`
--

INSERT INTO `evenementtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Séminaires', 1, '2025-08-11 09:48:25', '2025-08-11 09:48:25'),
(2, 'Colloques', 1, '2025-08-11 09:48:44', '2025-08-11 09:48:44'),
(3, 'Conférences de presse', 1, '2025-08-11 09:49:01', '2025-08-11 09:49:01');

--
-- Déchargement des données de la table `experts`
--

INSERT INTO `experts` (`id`, `domaine`, `fichier`, `experttype_id`, `expertvalide_id`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'Informatique', NULL, 1, 1, 2, 0, 1, '2025-08-22 10:53:01', '2025-08-22 10:53:01'),
(3, 'Management d\'entreprise', 'experts/sPcsVJ3UOMSMvkInLdi2s3A4QW8y0ptoxuBDIn66.jpg', 1, 1, 4, 0, 1, '2025-09-10 07:45:52', '2025-09-10 07:45:52');

--
-- Déchargement des données de la table `experttypes`
--

INSERT INTO `experttypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Expert', 1, '2025-07-09 13:06:16', '2025-07-09 13:06:16');

--
-- Déchargement des données de la table `expertvalides`
--

INSERT INTO `expertvalides` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Validé', 1, '2025-07-09 13:05:04', '2025-07-09 13:05:04');

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `reponse`, `langue_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Qu’est-ce que le CIJES ?', '<p>Le <strong>Centre d’Incubation des Juniors Entreprises et Startups (CIJES)</strong> est une plateforme hybride (digitale et physique) qui accompagne les jeunes entreprises, startups et coopératives à travers un <strong>modèle innovant basé sur les crédits d’incubation et les bons d’accompagnement</strong>.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 08:11:40', '2025-09-09 13:29:38'),
(2, 'Qui peut rejoindre le CIJES ?', '<p>Toute <strong>jeune entreprise</strong>, <strong>startup</strong>, <strong>auto-entrepreneur</strong> ou <strong>coopérative</strong> enregistrée au Togo et ayant moins de <strong>10 ans d’existence</strong> peut s’inscrire. Des exceptions sont possibles pour des projets innovants à fort potentiel.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-25 08:12:40', '2025-09-09 13:28:49');

--
-- Déchargement des données de la table `formationniveaus`
--

INSERT INTO `formationniveaus` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Débutant', 1, '2025-08-11 14:37:30', '2025-08-22 10:18:48'),
(2, 'Intermédiaire', 1, '2025-08-22 10:18:38', '2025-08-22 10:18:38');

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `titre`, `datedebut`, `datefin`, `description`, `expert_id`, `formationniveau_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Quelle formation suivre pour lancer sa startup ?', '2025-08-11', '2025-08-14', '<p>Quelle formation suivre pour lancer sa startup ? Quelle formation suivre pour lancer sa startup ?Quelle formation suivre pour lancer sa startup ?</p>', NULL, 1, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-08-11 14:46:50', '2025-08-22 10:41:48'),
(3, 'Développement Personnel', '2025-09-18', '2025-09-24', 'Renforcez votre capacité en développement personnel', 3, 2, NULL, 0, 1, '2025-09-10 12:11:44', '2025-09-10 12:11:44'),
(4, 'Développement Personnel', '2025-09-18', '2025-09-24', 'Renforcez votre capacité en développement personnel', 3, 2, NULL, 0, 1, '2025-09-10 12:11:44', '2025-09-10 12:11:44'),
(5, 'Développement Personnel', '2025-09-18', '2025-09-24', 'Renforcez votre capacité en développement personnel', 3, 2, NULL, 0, 1, '2025-09-10 12:11:44', '2025-09-10 12:11:44'),
(6, 'Développement Personnel', '2025-09-18', '2025-09-24', 'Renforcez votre capacité en développement personnel', 3, 2, NULL, 0, 1, '2025-09-10 12:11:45', '2025-09-10 12:11:45');

--
-- Déchargement des données de la table `forums`
--

INSERT INTO `forums` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `forumtype_id`, `secteur_id`, `dateforum`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Présentation des membres', 'Espace pour que chaque entrepreneur se présente.', '<p><strong>Présentation des membres</strong> – espace pour que chaque entrepreneur se présente.</p><p><strong>Success stories</strong> – partager des réussites d’autres startups ou projets incubés.</p><p><strong>Leçons apprises</strong> – expériences, erreurs et apprentissages.</p>', '9a47a2c6-e532-403b-8acb-fb94ea2cb46a', 'storage/forums/2025/07/10/686f9cc7ed958_afrique-togoéàç.png', 1, NULL, '2025-07-11', '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-07-10 08:58:16', '2025-08-22 10:38:43');

--
-- Déchargement des données de la table `forumtypes`
--

INSERT INTO `forumtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Sujet sur l\'incubation', 1, '2025-08-05 19:06:23', '2025-08-22 10:22:18');

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

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id`, `titre`, `code`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Français', 'fr', 1, '2025-06-19 14:02:56', '2025-06-19 14:03:21'),
(2, 'Anglais', 'en', 1, '2025-06-19 14:03:11', '2025-06-19 14:03:11');

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `nom`, `prenom`, `email`, `membrestatut_id`, `vignette`, `membretype_id`, `user_id`, `pays_id`, `telephone`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'LOOKY', 'Yokamly', 'yokamly@gmail.com', 3, 'storage/membres/2025/07/04/686862d9cbb36_Image1.png', 1, 'yok', '8409335f-e085-4597-9cae-359a60a816c6', '90291387', 1, '2025-07-04 21:24:15', '2025-07-25 20:04:18'),
(2, 'LOOKY', 'Yokamly Ruben', 'yokamly@gmail.com', 1, 'Laravel/storage/app/public/vignettes/6blos41j8z53bktO1IhmzXhBgb8mTASOTE3CBAC3.jpg', 1, '1', '8409335f-e085-4597-9cae-359a60a816c6', '90291387', 1, '2025-08-21 19:35:22', '2025-08-22 13:19:41'),
(3, 'Doe', 'John', 'johndoe@gmail.com', 1, NULL, 1, '2', '8409335f-e085-4597-9cae-359a60a816c6', '90291387', 1, '2025-08-22 10:06:39', '2025-08-22 10:06:39'),
(4, 'TOSSOU', 'Leatitia', 'Leatitia@gmail.com', 1, 'vignettes/ISdQ2CwEGqAUM8n2lZ6rZOvhs7YTc4BZ8llSite6.png', 1, '5', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 'AZEEEERTU', 1, '2025-09-10 07:07:38', '2025-09-10 07:14:10');

--
-- Déchargement des données de la table `membrestatuts`
--

INSERT INTO `membrestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 12:48:49', '2025-06-18 13:06:40'),
(3, 'Actif', 1, '2025-06-18 12:50:17', '2025-06-18 16:11:02');

--
-- Déchargement des données de la table `membretypes`
--

INSERT INTO `membretypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Incubé', 1, '2025-07-04 20:06:55', '2025-07-04 20:06:55'),
(2, 'Expert', 1, '2025-07-04 20:07:17', '2025-07-04 20:07:17'),
(3, 'Partenaire', 1, '2025-07-04 20:07:36', '2025-07-04 20:07:36');

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `contenu`, `conversation_id`, `membre_id`, `lu`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'dfjghgc df df g', 1, 1, 0, 1, '2025-07-10 11:25:15', '2025-07-10 11:25:15');

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2015_04_12_000000_create_orchid_users_table', 2),
(5, '2015_10_19_214424_create_orchid_roles_table', 2),
(6, '2015_10_19_214425_create_orchid_role_users_table', 2),
(7, '2016_08_07_125128_create_orchid_attachmentstable_table', 2),
(8, '2017_09_17_125801_create_notifications_table', 2),
(10, '2025_06_02_221804_create_tasks_table', 3),
(11, '2025_06_02_225744_create_posts_table', 4),
(13, '2025_06_02_221804_create_membrestatuts_table', 5),
(14, '2025_06_02_221804_create_accompagnementstatuts_table', 6),
(15, '2025_06_02_221804_create_prestationrealiseestatuts_table', 7),
(16, '2025_06_02_221804_create_suivistatuts_table', 8),
(17, '2025_06_02_221804_create_creditstatuts_table', 9),
(18, '2025_06_02_221804_create_bonstatuts_table', 10),
(19, '2025_06_02_221804_create_reservationstatuts_table', 11),
(20, '2025_06_02_221804_create_participantstatuts_table', 12),
(21, '2025_06_02_221804_create_dossierstatuts_table', 13),
(22, '2025_06_02_221804_create_entreprisetypes_table', 13),
(23, '2025_06_02_221804_create_prestationtypes_table', 14),
(24, '2025_06_02_221804_create_suivitypes_table', 15),
(26, '2025_06_02_221804_create_bontypes_table', 17),
(27, '2025_06_02_221804_create_forumtypes_table', 18),
(28, '2025_06_02_221804_create_documenttypes_table', 19),
(29, '2025_06_02_221804_create_espacetypes_table', 20),
(30, '2025_06_02_221804_create_recommandationtypes_table', 21),
(31, '2025_06_02_221804_create_partenairetypes_table', 22),
(32, '2025_06_02_221804_create_partenaireactivitetypes_table', 23),
(33, '2025_06_02_221804_create_alertetypes_table', 24),
(34, '2025_06_02_221804_create_secteurs_table', 25),
(35, '2025_06_02_221804_create_accompagnementniveaus_table', 26),
(36, '2025_06_02_221804_create_experttypes_table', 27),
(38, '2025_06_02_221804_create_recommandationorigines_table', 29),
(39, '2025_06_02_221804_create_formationniveaus_table', 30),
(40, '2025_06_02_221804_create_langues_table', 31),
(46, '2025_06_02_225744_create_payss_table', 32),
(47, '2025_06_02_225744_create_regions_table', 33),
(48, '2025_06_02_225744_create_prefectures_table', 34),
(49, '2025_06_02_225744_create_communes_table', 35),
(50, '2025_06_02_225744_create_quartiers_table', 36),
(51, '2025_06_02_225744_create_pagelibres_table', 37),
(52, '2025_06_02_221804_create_actualitetypes_table', 38),
(53, '2025_06_02_225744_create_actualites_table', 39),
(54, '2025_06_02_225744_create_partenaires_table', 40),
(55, '2025_06_02_221804_create_slidertypes_table', 41),
(56, '2025_06_02_225744_create_sliders_table', 42),
(57, '2025_06_02_225744_create_services_table', 43),
(58, '2025_06_02_225744_create_chiffres_table', 44),
(59, '2025_06_02_225744_create_temoignages_table', 45),
(60, '2025_06_02_221804_create_contacttypes_table', 46),
(61, '2025_06_02_225744_create_contacts_table', 47),
(62, '2025_06_02_225744_create_commentaires_table', 48),
(63, '2025_06_02_225744_create_faqs_table', 49),
(64, '2025_06_02_221804_create_membretypes_table', 50),
(66, '2025_06_02_225744_create_membres_table', 51),
(67, '2025_06_02_225744_create_entreprises_table', 52),
(69, '2025_06_02_221804_create_veilletypes_table', 53),
(70, '2025_06_02_225744_create_alertes_table', 53),
(71, '2025_06_02_225744_create_bons_table', 54),
(72, '2025_06_02_225744_create_prestations_table', 55),
(73, '2025_06_02_225744_create_entreprisemembres_table', 56),
(74, '2025_06_02_225744_create_accompagnements_table', 57),
(75, '2025_06_02_225744_create_suivis_table', 58),
(76, '2025_06_02_225744_create_prestationrealisees_table', 59),
(77, '2025_06_02_225744_create_bonutilises_table', 60),
(78, '2025_06_02_225744_create_plans_table', 61),
(79, '2025_06_02_225744_create_documents_table', 62),
(80, '2025_06_02_225744_create_accompagnementdocuments_table', 63),
(81, '2025_06_02_221804_create_expertvalides_table', 64),
(82, '2025_06_02_225744_create_experts_table', 65),
(83, '2025_06_02_221804_create_jours_table', 66),
(84, '2025_06_02_225744_create_disponibilites_table', 67),
(85, '2025_06_02_225744_create_evaluations_table', 68),
(86, '2025_06_02_225744_create_forums_table', 69),
(87, '2025_06_02_225744_create_sujets_table', 70),
(88, '2025_06_02_225744_create_messageforums_table', 71),
(89, '2025_06_02_225744_create_conversations_table', 72),
(90, '2025_06_02_225744_create_messages_table', 73),
(91, '2025_06_02_225744_create_espaces_table', 74),
(93, '2025_06_02_225744_create_reservations_table', 75),
(94, '2025_06_02_221804_create_credittypes_table', 76),
(95, '2025_06_02_225744_create_credits_table', 77),
(96, '2025_06_02_221804_create_echeancierstatuts_table', 78),
(97, '2025_06_02_225744_create_echeanciers_table', 79),
(98, '2025_06_02_221804_create_diagnosticstatuts_table', 80),
(99, '2025_06_02_221804_create_diagnostictypes_table', 80),
(100, '2025_06_02_225744_create_diagnostics_table', 81),
(101, '2025_06_02_225744_create_diagnosticmodules_table', 82),
(102, '2025_06_02_221804_create_diagnosticquestioncategories_table', 83),
(103, '2025_06_02_221804_create_diagnosticquestiontypes_table', 83),
(104, '2025_06_02_225744_create_diagnosticquestions_table', 83),
(105, '2025_06_02_225744_create_diagnosticreponses_table', 84),
(106, '2025_06_02_225744_create_diagnosticresultats_table', 85),
(107, '2025_06_02_221804_create_evenementtypes_table', 86),
(108, '2025_06_02_225744_create_evenements_table', 87),
(109, '2025_06_02_221804_create_evenementinscriptiontypes_table', 88),
(110, '2025_06_02_225744_create_evenementinscriptions_table', 89),
(111, '2025_06_02_225744_create_formations_table', 90),
(112, '2025_06_02_225744_create_participants_table', 91),
(113, '2025_06_02_221804_create_conseillertypes_table', 92),
(114, '2025_06_02_221804_create_conseillervalides_table', 92),
(115, '2025_06_02_225744_create_conseillers_table', 93),
(117, '2025_06_02_225744_create_conseillerprescriptions_table', 95),
(118, '2025_06_02_221804_create_accompagnementtypes_table', 96),
(119, '2025_06_02_221804_create_diagnosticmoduletypes_table', 97),
(120, '2025_06_02_225744_create_accompagnementconseillers_table', 98),
(121, '2025_06_02_225744_create_conseillerentreprises_table', 99),
(122, '2025_06_02_221804_create_piecetypes_table', 100),
(123, '2025_06_02_225744_create_pieces_table', 101);

--
-- Déchargement des données de la table `pagelibres`
--

INSERT INTO `pagelibres` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `parent`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'À propos du CIJES', 'L’incubateur qui transforme vos ambitions en réalités. Le Centre d’Incubation des Juniors Entreprises et Startups (CIJES) est bien plus qu’un incubateur : c’est une plateforme d’accompagnement hybride (physique et digital), pensée pour propulser les jeunes entreprises et startups togolaises vers la compétitivité, l’innovation et la durabilité.\r\nGrâce à un modèle unique basé sur les crédits d’incubation et les bons d’accompagnement, le CIJET offre un écosystème complet pour soutenir les entrepreneurs dans toutes les phases de leur développement.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/pagelibres/2025/07/21/687e9858cd1ab_groupe-d-afro-americains-travaillant-ensemble (1).jpg', 1, 1, 1, '2025-07-21 17:43:20', '2025-09-09 13:22:06'),
(2, 'Notre Vision', 'Devenir le catalyseur incontournable de l’entrepreneuriat innovant en Afrique de l’Ouest, en faisant du Togo un hub de référence pour les jeunes entreprises performantes, responsables et connectées aux marchés internationaux.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:44:18', '2025-09-09 11:30:48'),
(3, 'Notre Mission', NULL, '<p><strong>Structurer</strong> les projets pour les rendre viables et bancables.</p><p><strong>Accompagner</strong> les entrepreneurs avec des outils adaptés, du mentorat et des formations ciblées.</p><p><strong>Faciliter l’accès aux financements</strong> et aux opportunités de marché.</p><p><strong>Intégrer la technologie</strong> et l’intelligence artificielle pour booster la compétitivité des startups.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:44:53', '2025-09-09 11:31:47'),
(4, 'Nos Valeurs', NULL, '<p><strong>Innovation</strong> : Anticiper et intégrer les meilleures solutions pour l’entrepreneuriat.</p><p><strong>Collaboration</strong> : Créer un écosystème basé sur l’entraide et le partage d’expériences.</p><p><strong>Intégrité</strong> : Garantir la transparence dans tous nos processus et partenariats.</p><p><strong>Inclusion</strong> : Offrir un accès équitable aux services, sans barrières sociales ou financières.</p><p><strong>Impact</strong> : Mesurer notre réussite par la croissance et la durabilité des entreprises incubées.</p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:45:36', '2025-09-09 13:22:27'),
(5, 'Notre Approche Unique', NULL, '<p>CIJES combine <strong>expertise humaine</strong> et <strong>technologies avancées</strong> pour offrir :</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Un <strong>parcours d’incubation personnalisé</strong> adapté aux besoins réels.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Des <strong>bons d’accompagnement intelligents</strong> pour les services stratégiques.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Une <strong>intelligence artificielle intégrée</strong> pour le suivi et l’analyse en temps réel.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Une <strong>plateforme digitale</strong> accessible 24/7 pour rester connecté et progresser.</li></ol><p><br></p>', 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, 0, 1, '2025-07-21 17:46:10', '2025-09-09 13:22:50');

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id`, `titre`, `contact`, `description`, `langue_id`, `vignette`, `partenairetype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Partenaire 1 Partenaire 1', NULL, NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NULL, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-08-16 06:51:46', '2025-09-09 13:26:06');

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
-- Déchargement des données de la table `participants`
--

INSERT INTO `participants` (`id`, `membre_id`, `formation_id`, `dateparticipant`, `participantstatut_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-08-11', 1, 0, 1, '2025-08-11 14:52:24', '2025-08-11 14:52:24'),
(2, 2, 1, '2025-08-22', 1, 0, 1, '2025-08-22 12:44:43', '2025-08-22 12:44:43'),
(3, 4, 3, '2025-09-10', 1, 0, 1, '2025-09-10 12:16:31', '2025-09-10 12:16:31');

--
-- Déchargement des données de la table `participantstatuts`
--

INSERT INTO `participantstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-08-11 14:36:26', '2025-08-22 10:30:16');

--
-- Déchargement des données de la table `payss`
--

INSERT INTO `payss` (`id`, `nom`, `code`, `indicatif`, `monnaie`, `etat`, `drapeau`, `created_at`, `updated_at`) VALUES
(2, 'Benin', 'BE', '229', 'XOF', 1, 'storage/drapeaux/2025/06/27/685eb9e2661d0_f775cd9e-d47d-4079-97cb-9aaee9413d29.png', '2025-06-27 13:24:29', '2025-06-28 09:24:46'),
(4, 'Togo', 'TG', '228', 'XOF', 1, 'storage/drapeaux/2025/06/28/685fd1f663091_Image1.png', '2025-06-28 09:28:54', '2025-06-28 09:28:54');

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

--
-- Déchargement des données de la table `piecetypes`
--

INSERT INTO `piecetypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Carte d\'opérateur économique', 1, '2025-08-22 10:24:02', '2025-08-22 10:24:02'),
(2, 'Carte OTR', 1, '2025-08-22 10:24:19', '2025-08-22 10:24:58'),
(3, 'Récépissé', 1, '2025-08-22 10:24:40', '2025-08-22 10:24:40');

--
-- Déchargement des données de la table `plans`
--

INSERT INTO `plans` (`id`, `objectif`, `actionprioritaire`, `dateplan`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Développement de l’entreprise', 'Comment définir un plan stratégique efficace ?\r\n\r\nIdentifier les besoins financiers et humains pour mon projet\r\n\r\nChoisir entre accompagnement individuel ou collectif', '2025-07-09', 1, 0, 1, '2025-07-09 11:08:50', '2025-08-22 11:24:17'),
(2, 'Augmenter ma confiance en moi', 'Suivre des séances', '2025-09-11', 3, 0, 1, '2025-09-10 07:35:54', '2025-09-10 07:35:54');

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `body`, `author`, `created_at`, `updated_at`) VALUES
(2, 'test post 1', 'fg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbn', '<p>fg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbnfg hjklmlkhjhb vg khj glkhkjibljb jb  kbn</p>', 1, '2025-06-18 16:54:38', '2025-06-18 16:54:38'),
(3, 'test post  23', 'test post  2test post  2test post  2test post  2', '<p>test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2test post  2</p>', 1, '2025-06-20 11:05:40', '2025-06-20 11:06:05');

--
-- Déchargement des données de la table `prefectures`
--

INSERT INTO `prefectures` (`id`, `nom`, `cheflieu`, `region_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Golfe', 'Lomé', 1, 1, '2025-06-28 13:58:29', '2025-06-28 13:58:29');

--
-- Déchargement des données de la table `prestationrealisees`
--

INSERT INTO `prestationrealisees` (`id`, `note`, `feedback`, `prestation_id`, `accompagnement_id`, `daterealisation`, `prestationrealiseestatut_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, '50', 'gdfg wdfg ddf', 1, 1, '2025-07-08', 1, 0, 1, '2025-07-08 19:40:21', '2025-07-08 19:40:21');

--
-- Déchargement des données de la table `prestationrealiseestatuts`
--

INSERT INTO `prestationrealiseestatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-06-18 13:29:50', '2025-06-18 13:29:53');

--
-- Déchargement des données de la table `prestations`
--

INSERT INTO `prestations` (`id`, `titre`, `prix`, `duree`, `description`, `entreprise_id`, `prestationtype_id`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'Prestations en développement web et mobile : comment se démarquer ?', '50000', '2 mois', '<p>Prestations en développement web et mobile : comment se démarquer ? Prestations en développement web et mobile : comment se démarquer ? Prestations en développement web et mobile : comment se démarquer ?</p>', 1, 2, '8409335f-e085-4597-9cae-359a60a816c6', 0, 1, '2025-08-11 11:18:04', '2025-08-22 10:42:53'),
(3, 'Etat financier', '250000', '1H', 'Votre état financier en 1H', 3, 1, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-09-10 12:06:56', '2025-09-10 12:06:56');

--
-- Déchargement des données de la table `prestationtypes`
--

INSERT INTO `prestationtypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Comptabilité', 1, '2025-08-05 14:45:06', '2025-08-22 10:25:14'),
(2, 'Secrétariat', 1, '2025-08-22 10:25:28', '2025-08-22 10:25:28');

--
-- Déchargement des données de la table `quartiers`
--

INSERT INTO `quartiers` (`id`, `nom`, `commune_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Sagbado', 1, 1, '2025-06-28 14:45:12', '2025-06-28 14:45:12');

--
-- Déchargement des données de la table `recommandationorigines`
--

INSERT INTO `recommandationorigines` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'IA', 1, '2025-06-19 13:20:48', '2025-06-19 13:20:48'),
(2, 'Manuel', 1, '2025-06-19 13:21:01', '2025-06-19 13:21:01');

--
-- Déchargement des données de la table `regions`
--

INSERT INTO `regions` (`id`, `nom`, `code`, `pays_id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Maritime', 'RM', '8409335f-e085-4597-9cae-359a60a816c6', 1, '2025-06-28 13:13:19', '2025-06-28 13:13:46'),
(3, 'Plateaux', 'RP', '11f6b6d5-f968-4b3a-9f99-531830286a09', 1, '2025-07-15 09:14:18', '2025-07-25 15:08:22');

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `observation`, `reservationstatut_id`, `espace_id`, `datedebut`, `datefin`, `montant`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(2, 'toutes les journées du 18 et 19', 1, 2, '2025-09-18', '2025-09-19', 0, 4, 0, 1, '2025-09-10 07:44:24', '2025-09-10 07:44:24');

--
-- Déchargement des données de la table `reservationstatuts`
--

INSERT INTO `reservationstatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'En attente', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45'),
(2, 'Validé', 1, '2025-07-31 08:07:45', '2025-07-31 08:07:45');

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'administrateur', 'Administrateur', '{\"platform.systems.attachment\":\"1\",\"platform.systems.roles\":\"1\",\"platform.systems.users\":\"1\",\"platform.index\":\"1\"}', '2025-06-19 16:28:13', '2025-06-19 16:28:13');

--
-- Déchargement des données de la table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(6, 1);

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Technologies et innovation', 1, '2025-08-22 10:50:55', '2025-08-22 10:50:55'),
(2, 'Incubateur de startups', 1, '2025-08-22 10:51:05', '2025-08-22 10:51:05');

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

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('An7zpUsB9u3myWCWVi0XLuKRFqojiNG4flpVBo0K', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY2xlaHA4SGpCMUJtTXN5eER6bFhLajJKWVJlUXNmckNPSzJtTk9QMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3QvY2lqZXQvcHVibGljL2FkbWluL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNToiaHR0cDovL2xvY2FsaG9zdC9jaWpldC9wdWJsaWMvYWRtaW4iO319', 1766057787),
('scOBzUwGzPTu33QsbcTMg7nvLrmOeQIbBWkIHgXz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY1ZrYkF3Tmo3YVo1REFMbU5CZHhEeFhuc1Jkb2JzZklWeFcxQk5ZZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766057934),
('tJeTaWj98BSyuWy58UtrIVwyXmtzGluUEOwFOzwH', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV2ZmY015RmtjY1VSRVRmYUZxNEdVQ3RkZm1oOUVLdzNadGxGVUVkVSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1766058070);

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `titre`, `resume`, `description`, `langue_id`, `vignette`, `slidertype_id`, `lienurl`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Incubons l’avenir ensemble', 'Accédez à un accompagnement structuré, intelligent et sans barrières.', NULL, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/sliders/2025/07/21/687e9730bc2bd_groupe-d-afro-americains-travaillant-ensemble (3).jpg', 1, NULL, '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-21 17:38:24', '2025-09-09 13:26:23');

--
-- Déchargement des données de la table `slidertypes`
--

INSERT INTO `slidertypes` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Image', 1, '2025-07-02 20:54:26', '2025-07-02 20:54:26'),
(2, 'Vidéo', 1, '2025-07-02 20:54:34', '2025-07-02 20:54:34');

--
-- Déchargement des données de la table `suivis`
--

INSERT INTO `suivis` (`id`, `observation`, `suivistatut_id`, `suivitype_id`, `datesuivi`, `accompagnement_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'dg srdsrt grsgtr tr', 1, NULL, '2025-07-09', 1, 0, 1, '2025-07-08 19:05:33', '2025-07-08 19:05:33');

--
-- Déchargement des données de la table `suivistatuts`
--

INSERT INTO `suivistatuts` (`id`, `titre`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Actif', 1, '2025-06-18 13:37:15', '2025-06-18 16:41:02');

--
-- Déchargement des données de la table `sujets`
--

INSERT INTO `sujets` (`id`, `titre`, `resume`, `description`, `vignette`, `forum_id`, `membre_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'Comment valider son idée de startup avant de lancer ?', 'Comment valider son idée de startup avant de lancer ?', '<p><br></p>', 'storage/sujets/2025/07/10/686fa23377344_Image1.png', 1, 1, 0, 1, '2025-07-10 09:21:23', '2025-08-22 10:40:48');

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(3, 'Admin à faire 3', 1, '2025-06-02 20:54:27', '2025-06-02 20:54:27');

--
-- Déchargement des données de la table `temoignages`
--

INSERT INTO `temoignages` (`id`, `nom`, `profil`, `commentaire`, `langue_id`, `vignette`, `pays_id`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'LOOKY Yokamly', 'Informaticien', 'Grâce au CIJES, j\'ai pu structurer mon entreprise et accéder à des financements qui m\'étaient inaccessibles auparavant. L\'accompagnement des experts a été déterminant.', 'f9a16e49-d975-4d63-b201-5aee5888ac44', 'storage/temoignages/2025/07/21/687ea405b875f_6388000.png', '3c4fbe39-dfa8-43c0-b7fd-bb946236543d', 0, 1, '2025-07-02 22:53:22', '2025-09-09 11:29:13');

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permissions`) VALUES
(1, 'ruben', 'yokamly@gmail.com', NULL, '$2y$12$zAnRDVer7dh20kI04UfmZu8WHOL4SqQ5DIWK1HzU6LMDT8Uk2Rshm', '6q4nbXFDbvPsjTHiJwbjtPfjIFFmJlpL5s2z8c8UWorYBraUpdpPTUfxM0OI', '2025-06-02 19:57:26', '2025-06-02 19:57:26', '{\"platform.systems.roles\":true,\"platform.systems.users\":true,\"platform.systems.attachment\":true,\"platform.index\":true}'),
(2, 'John Doe', 'johndoe@gmail.com', NULL, '$2y$12$bcR3Wh.w9dEjnEJekjC0wOEAuB7vUNuzHm33ShwwLmt3JwyvE3x3C', NULL, '2025-08-22 10:03:46', '2025-08-22 10:03:46', NULL),
(3, 'Japhet', 'ptchabao@gmail.com', NULL, '$2y$12$py84LZKsnhNW65ljQztnBuStcxHaFGveVMmdVeVWVz3jQ4SmZNw5i', NULL, '2025-08-23 07:30:52', '2025-08-23 07:30:52', NULL),
(4, 'Joel', 'greatmiraclethebest@gmail.com', NULL, '$2y$12$leigKwENbezLOW9M52Vly.yJu56dd1eq0SYxHB8bbKVZ.DJnKz9Se', NULL, '2025-09-10 06:48:33', '2025-09-10 06:48:33', NULL),
(5, 'Assion TOMETY', 'assvictorien@gmail.com', NULL, '$2y$12$8YymD5lNowTP0udILZOeRuOjDotHqFVaX2aXYX/ZZoYTAMG77vnSG', NULL, '2025-09-10 06:54:33', '2025-09-11 22:50:36', '{\"platform.systems.attachment\":\"0\",\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"0\",\"platform.index\":\"0\"}'),
(6, 'Admin', 'admin@gmail.com', NULL, '$2y$12$H/HaNspVr1vY10DWjLqfOewyxknRuYmwgJd4cw/WPj53FSYbD2QEO', NULL, '2025-09-11 08:19:10', '2025-09-11 08:19:10', '{\"platform.systems.attachment\":\"0\",\"platform.systems.roles\":\"0\",\"platform.systems.users\":\"0\",\"platform.index\":\"0\"}');
COMMIT;
