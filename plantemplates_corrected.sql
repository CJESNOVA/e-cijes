-- Génération CORRIGÉE des plans d'action pour plantemplates
-- Basé sur l'analyse des triplets Module → Question → Réponse → Score
-- Chaque plan couvre TOUTES les étapes jusqu'au score maximum

INSERT INTO `plantemplates` (`id`, `diagnosticmodule_id`, `diagnosticquestion_id`, `niveau`, `objectif`, `actionprioritaire`, `priorite`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES

-- MODULES DE TYPE 1 (diagnosticmoduletype_id = 1) - Niveaux 1, 2, 3, 4
-- Module 115: Fonction 1 - Posture stratégique du dirigeant

-- Question 850: Projection stratégique
-- Réponse score 1: "Je parle surtout de mes activités actuelles ou de mes problèmes du moment."
-- Plan pour passer du score 1 au score 4 (maximum) - 3 étapes
(1, 115, 850, '1', 'Atteindre l\'excellence stratégique', '1. Formaliser une vision claire à 3-5 ans<br>2. Documenter le modèle économique complet<br>3. Définir les indicateurs de succès clés', 1, 0, 1, NOW(), NOW()),

-- Réponse score 2: "J\'ai une ambition en tête, mais elle évolue selon les opportunités."
-- Plan pour passer du score 2 au score 4 (maximum) - 2 étapes
(2, 115, 850, '2', 'Atteindre l\'excellence stratégique', '1. Structurer la vision stratégique formelle<br>2. Définir les indicateurs de succès clés', 2, 0, 1, NOW(), NOW()),

-- Réponse score 3: "Je décris une direction claire (marché, taille, positionnement), même si tout n\'est pas formalisé."
-- Plan pour passer du score 3 au score 4 (maximum) - 1 étape
(3, 115, 850, '3', 'Atteindre l\'excellence stratégique', '1. Documenter le business model complet', 3, 0, 1, NOW(), NOW()),

-- Réponse score 4: "Je formule un cap précis, chiffré et cohérent, avec une trajectoire définie."
-- Félicitations - déjà au maximum
(4, 115, 850, '4', 'Excellence stratégique atteinte', 'Félicitations ! Vous avez une vision stratégique précise, chiffrée et cohérente.', 4, 0, 1, NOW(), NOW()),

-- Question 851: Capacité à renoncer
-- Réponse score 1: "J\'accepte. L\'argent passe avant le reste."
-- Plan pour passer du score 1 au score 4 (maximum) - 3 étapes
(5, 115, 851, '1', 'Atteindre la maîtrise stratégique', '1. Apprendre à dire non poliment mais fermement<br>2. Créer des critères de sélection clairs<br>3. Identifier les opportunités non alignées', 1, 0, 1, NOW(), NOW()),

-- Réponse score 2: "J\'hésite, mais si cela aide la trésorerie, je prends quand même."
-- Plan pour passer du score 2 au score 4 (maximum) - 2 étapes
(6, 115, 851, '2', 'Atteindre la maîtrise stratégique', '1. Développer la discipline stratégique<br>2. Créer des critères de sélection clairs', 2, 0, 1, NOW(), NOW()),

-- Réponse score 3: "Je réfléchis à l\'impact sur mon organisation et sur la direction que je veux donner à mon entreprise."
-- Plan pour passer du score 3 au score 4 (maximum) - 1 étape
(7, 115, 851, '3', 'Atteindre la maîtrise stratégique', '1. Optimiser l\'allocation des ressources', 3, 0, 1, NOW(), NOW()),

-- Réponse score 4: "Je refuse si cela m\'éloigne de ma vision, même si l\'argent est intéressant."
-- Félicitations - déjà au maximum
(8, 115, 851, '4', 'Maîtrise stratégique atteinte', 'Félicitations ! Vous maîtrisez parfaitement l\'art de renoncer stratégiquement.', 4, 0, 1, NOW(), NOW()),

-- Question 853: Rapport au marché
-- Réponse score 1: "Je m\'en rends compte seulement quand mes ventes ou mes marges baissent."
-- Plan pour passer du score 1 au score 4 (maximum) - 3 étapes
(13, 115, 853, '1', 'Atteindre l\'anticipation marché', '1. Mettre en place un suivi mensuel des ventes et marges<br>2. Créer un tableau de bord des indicateurs clés<br>3. Identifier les signaux faibles du marché', 1, 0, 1, NOW(), NOW()),

-- Réponse score 2: "Je réagis quand l\'impact devient vraiment visible sur mon activité."
-- Plan pour passer du score 2 au score 4 (maximum) - 2 étapes
(14, 115, 853, '2', 'Atteindre l\'anticipation marché', '1. Mettre en place une veille concurrentielle active<br>2. Créer un système d\'alerte sur les changements', 2, 0, 1, NOW(), NOW()),

-- Réponse score 3: "Je reste attentif aux signaux (clients, prix, concurrents, réglementation) et j\'ajuste progressivement."
-- Plan pour passer du score 3 au score 4 (maximum) - 1 étape
(15, 115, 853, '3', 'Atteindre l\'anticipation marché', '1. Développer une analyse prospective des tendances', 3, 0, 1, NOW(), NOW()),

-- Réponse score 4: "J\'observe les tendances à l\'avance et j\'adapte mon offre ou mon organisation avant d\'être sous pression."
-- Félicitations - déjà au maximum
(16, 115, 853, '4', 'Excellence en anticipation marché', 'Félicitations ! Vous anticipez parfaitement les évolutions du marché.', 4, 0, 1, NOW(), NOW()),

-- Question 855: Transmission du cap
-- Réponse score 1: "Il décrirait surtout ce qu\'on fait au quotidien."
-- Plan pour passer du score 1 au score 4 (maximum) - 3 étapes
(21, 115, 855, '1', 'Atteindre la transmission efficace', '1. Formaliser la vision stratégique par écrit<br>2. Organiser une réunion de présentation de la vision<br>3. Créer des supports visuels de la vision', 1, 0, 1, NOW(), NOW()),

-- Réponse score 2: "Il parlerait d\'objectifs à court terme (ventes, production, livraisons)."
-- Plan pour passer du score 2 au score 4 (maximum) - 2 étapes
(22, 115, 855, '2', 'Atteindre la transmission efficace', '1. Lier les objectifs court terme à la vision long terme<br>2. Former les équipes à communiquer la vision', 2, 0, 1, NOW(), NOW()),

-- Réponse score 3: "Il expliquerait la direction générale et les objectifs de l\'année."
-- Plan pour passer du score 3 au score 4 (maximum) - 1 étape
(23, 115, 855, '3', 'Atteindre la transmission efficace', '1. Développer l\'articulation entre vision et contribution individuelle', 3, 0, 1, NOW(), NOW()),

-- Réponse score 4: "Il saurait expliquer la vision à moyen terme et dire en quoi son travail y contribue."
-- Félicitations - déjà au maximum
(24, 115, 855, '4', 'Excellence en transmission du cap', 'Félicitations ! Votre vision est parfaitement partagée et comprise par vos équipes.', 4, 0, 1, NOW(), NOW()),

-- Question 857: Capacité d\'ajustement stratégique
-- Réponse score 1: "Je continue en espérant que la situation va s\'améliorer."
-- Plan pour passer du score 1 au score 4 (maximum) - 3 étapes
(29, 115, 857, '1', 'Atteindre l\'ajustement proactif', '1. Mettre en place un suivi mensuel des performances<br>2. Analyser les causes des baisses de résultats<br>3. Créer un plan d\'action correctif simple', 1, 0, 1, NOW(), NOW()),

-- Réponse score 2: "Je change quand je n\'ai plus vraiment le choix."
-- Plan pour passer du score 2 au score 4 (maximum) - 2 étapes
(30, 115, 857, '2', 'Atteindre l\'ajustement proactif', '1. Développer une analyse des causes profondes<br>2. Mettre en place des ajustements progressifs', 2, 0, 1, NOW(), NOW()),

-- Réponse score 3: "J\'analyse les causes et j\'ajuste progressivement."
-- Plan pour passer du score 3 au score 4 (maximum) - 1 étape
(31, 115, 857, '3', 'Atteindre l\'ajustement proactif', '1. Identifier et utiliser les signaux faibles pour anticiper', 3, 0, 1, NOW(), NOW()),

-- Réponse score 4: "J\'utilise les signaux faibles pour ajuster avant que la situation ne devienne critique."
-- Félicitations - déjà au maximum
(32, 115, 857, '4', 'Excellence en ajustement stratégique', 'Félicitations ! Vous ajustez votre stratégie de manière proactive et anticipée.', 4, 0, 1, NOW(), NOW()),

-- Question 859: Solidité du système
-- Réponse score 1: "L\'activité devient instable ou s\'arrête."
-- Plan pour passer du score 1 au score 4 (maximum) - 3 étapes
(37, 115, 859, '1', 'Atteindre l\'autonomie du système', '1. Documenter tous les processus clés de l\'entreprise<br>2. Former au moins 2 personnes sur chaque fonction critique<br>3. Mettre en place des procédures de délégation', 1, 0, 1, NOW(), NOW()),

-- Réponse score 2: "L\'activité continue, mais aucune décision importante n\'est prise."
-- Plan pour passer du score 2 au score 4 (maximum) - 2 étapes
(38, 115, 859, '2', 'Atteindre l\'autonomie du système', '1. Définir les niveaux de décision et leurs limites<br>2. Mettre en place des comités de décision opérationnels', 2, 0, 1, NOW(), NOW()),

-- Réponse score 3: "L\'activité fonctionne, mais la progression ralentit."
-- Plan pour passer du score 3 au score 4 (maximum) - 1 étape
(39, 115, 859, '3', 'Atteindre l\'autonomie du système', '1. Développer l\'autonomie stratégique des équipes', 3, 0, 1, NOW(), NOW()),

-- Réponse score 4: "L\'entreprise continue d\'avancer selon un cap clair que l\'équipe connaît."
-- Félicitations - déjà au maximum
(40, 115, 859, '4', 'Excellence en autonomie du système', 'Félicitations ! Votre entreprise fonctionne parfaitement en votre absence.', 4, 0, 1, NOW(), NOW()),

-- Module 116: Fonction 2 - Influence relationnelle

(41, 116, 860, '1', 'Atteindre l\'excellence communicationnelle', '1. Préparer les consignes par écrit à l\'avance<br>2. Expliquer le contexte et les objectifs<br>3. Mettre en place des points de contrôle réguliers', 1, 0, 1, NOW(), NOW()),

(42, 116, 860, '2', 'Atteindre l\'excellence communicationnelle', '1. Demander systématiquement la reformulation<br>2. Vérifier la compréhension avant l\'exécution<br>3. Créer des supports de formation', 2, 0, 1, NOW(), NOW()),

(43, 116, 860, '3', 'Atteindre l\'excellence communicationnelle', '1. Adapter le style de communication à chaque interlocuteur<br>2. Définir précisément les résultats attendus', 3, 0, 1, NOW(), NOW()),

(44, 116, 860, '4', 'Excellence communicationnelle atteinte', 'Félicitations ! Vous communiquez avec une clarté et une efficacité remarquables.', 4, 0, 1, NOW(), NOW()),

(45, 116, 861, '1', 'Atteindre la maîtrise relationnelle', '1. Pratiquer l\'écoute active sans interrompre<br>2. Poser des questions pour comprendre les arguments<br>3. Prendre du recul avant de décider', 1, 0, 1, NOW(), NOW()),

(46, 116, 861, '2', 'Atteindre la maîtrise relationnelle', '1. Développer l\'empathie réelle<br>2. Analyser objectivement les arguments contradictoires<br>3. Créer un espace de dialogue constructif', 2, 0, 1, NOW(), NOW()),

(47, 116, 861, '3', 'Atteindre la maîtrise relationnelle', '1. Transformer les désaccords en opportunités d\'amélioration<br>2. Co-construire des solutions supérieures', 3, 0, 1, NOW(), NOW()),

(48, 116, 861, '4', 'Maîtrise relationnelle atteinte', 'Félicitations ! Vous transformez les désaccords en décisions collectives améliorées.', 4, 0, 1, NOW(), NOW()),

(49, 116, 862, '1', 'Atteindre l\'excellence en négociation', '1. Préparer un dossier argumenté avec chiffres<br>2. Définir les objectifs et limites claires<br>3. Anticiper les objections et préparer des réponses', 1, 0, 1, NOW(), NOW()),

(50, 116, 862, '2', 'Atteindre l\'excellence en négociation', '1. Développer une stratégie de négociation complète<br>2. Analyser les enjeux de l\'interlocuteur<br>3. Préparer plusieurs scénarios de compromis', 2, 0, 1, NOW(), NOW()),

(51, 116, 862, '3', 'Atteindre l\'excellence en négociation', '1. Maîtriser les techniques d\'influence avancées<br>2. Créer des relations gagnant-gagnant durables', 3, 0, 1, NOW(), NOW()),

(52, 116, 862, '4', 'Excellence en négociation atteinte', 'Félicitations ! Vous négociez avec stratégie et créez des relations durables.', 4, 0, 1, NOW(), NOW()),

(53, 116, 863, '1', 'Atteindre l\'excellence en communication de changement', '1. Préparer un plan de communication du changement<br>2. Expliquer les raisons et bénéfices attendus<br>3. Mettre en place des points d\'écoute réguliers', 1, 0, 1, NOW(), NOW()),

(54, 116, 863, '2', 'Atteindre l\'excellence en communication de changement', '1. Gérer activement les réactions et résistances<br>2. Impliquer les équipes dans la mise en œuvre<br>3. Célébrer les succès intermédiaires', 2, 0, 1, NOW(), NOW()),

(55, 116, 863, '3', 'Atteindre l\'excellence en communication de changement', '1. Co-construire la vision du changement<br>2. Développer l\'autonomie des équipes dans la transition', 3, 0, 1, NOW(), NOW()),

(56, 116, 863, '4', 'Excellence en communication de changement atteinte', 'Félicitations ! Vous communiquez les changements avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(57, 116, 864, '1', 'Atteindre l\'excellence en communication interne', '1. Mettre en place des canaux de communication formels<br>2. Créer un calendrier de communication régulier<br>3. Partager les informations stratégiques importantes', 1, 0, 1, NOW(), NOW()),

(58, 116, 864, '2', 'Atteindre l\'excellence en communication interne', '1. Structurer les flux d\'information par priorité<br>2. Mettre en place des réunions d\'information efficaces<br>3. Créer des supports de communication adaptés', 2, 0, 1, NOW(), NOW()),

(59, 116, 864, '3', 'Atteindre l\'excellence en communication interne', '1. Développer une culture de transparence<br>2. Optimiser les outils de communication collaborative', 3, 0, 1, NOW(), NOW()),

(60, 116, 864, '4', 'Excellence en communication interne atteinte', 'Félicitations ! Votre communication interne est fluide et efficace.', 4, 0, 1, NOW(), NOW()),

(61, 116, 865, '1', 'Atteindre l\'excellence en réseautage', '1. Identifier les contacts clés pour votre activité<br>2. Préparer un agenda de relations stratégiques<br>3. Développer une approche proactive de contact', 1, 0, 1, NOW(), NOW()),

(62, 116, 865, '2', 'Atteindre l\'excellence en réseautage', '1. Mettre en place un système de suivi des relations<br>2. Créer de la valeur pour votre réseau<br>3. Développer des relations mutuellement bénéfiques', 2, 0, 1, NOW(), NOW()),

(63, 116, 865, '3', 'Atteindre l\'excellence en réseautage', '1. Bâtir des alliances stratégiques durables<br>2. Cultiver activement les relations importantes', 3, 0, 1, NOW(), NOW()),

(64, 116, 865, '4', 'Excellence en réseautage atteinte', 'Félicitations ! Vous avez développé un réseau stratégique puissant et durable.', 4, 0, 1, NOW(), NOW()),

(65, 116, 866, '1', 'Atteindre l\'excellence en mobilisation', '1. Partager la vision stratégique avec l\'équipe<br>2. Montrer l\'impact du travail de chacun<br>3. Mettre en place des objectifs motivants', 1, 0, 1, NOW(), NOW()),

(66, 116, 866, '2', 'Atteindre l\'excellence en mobilisation', '1. Développer un environnement de confiance<br>2. Créer des liens entre travail et sens<br>3. Reconnaître et valoriser les contributions', 2, 0, 1, NOW(), NOW()),

(67, 116, 866, '3', 'Atteindre l\'excellence en mobilisation', '1. Cultiver l\'autonomie et l\'engagement proactif<br>2. Développer une culture de performance positive', 3, 0, 1, NOW(), NOW()),

(68, 116, 866, '4', 'Excellence en mobilisation atteinte', 'Félicitations ! Votre équipe est profondément engagée et autonome.', 4, 0, 1, NOW(), NOW()),

(69, 116, 867, '1', 'Atteindre l\'excellence en gestion des tensions', '1. Mettre en place des règles de communication respectueuse<br>2. Apprendre à identifier les signaux de tension<br>3. Développer des techniques de médiation simple', 1, 0, 1, NOW(), NOW()),

(70, 116, 867, '2', 'Atteindre l\'excellence en gestion des tensions', '1. Intervenir précocement dans les conflits<br>2. Faciliter le dialogue entre les parties<br>3. Rechercher des solutions constructives', 2, 0, 1, NOW(), NOW()),

(71, 116, 867, '3', 'Atteindre l\'excellence en gestion des tensions', '1. Transformer les tensions en opportunités d\'amélioration<br>2. Développer l\'intelligence collective', 3, 0, 1, NOW(), NOW()),

(72, 116, 867, '4', 'Excellence en gestion des tensions atteinte', 'Félicitations ! Vous transformez les tensions en améliorations collectives.', 4, 0, 1, NOW(), NOW()),

(73, 116, 868, '1', 'Atteindre l\'excellence en influence', '1. Préparer une argumentation structurée<br>2. Comprendre les enjeux de l\'interlocuteur<br>3. Développer une stratégie d\'influence claire', 1, 0, 1, NOW(), NOW()),

(74, 116, 868, '2', 'Atteindre l\'excellence en influence', '1. Adapter l\'approche selon l\'interlocuteur<br>2. Utiliser des preuves et exemples concrets<br>3. Créer une relation de confiance', 2, 0, 1, NOW(), NOW()),

(75, 116, 868, '3', 'Atteindre l\'excellence en influence', '1. Maîtriser l\'influence éthique et durable<br>2. Co-construire des solutions bénéfiques', 3, 0, 1, NOW(), NOW()),

(76, 116, 868, '4', 'Excellence en influence atteinte', 'Félicitations ! Vous influencez avec éthique et efficacité.', 4, 0, 1, NOW(), NOW()),

(77, 116, 869, '1', 'Atteindre l\'excellence en prise parole publique', '1. Structurer vos interventions avec un plan clair<br>2. Utiliser des exemples concrets et percutants<br>3. Développer une conclusion mémorable', 1, 0, 1, NOW(), NOW()),

(78, 116, 869, '2', 'Atteindre l\'excellence en prise parole publique', '1. Créer un appel à l\'action engageant<br>2. Développer votre présence et charisme<br>3. Adapter le message à votre audience', 2, 0, 1, NOW(), NOW()),

(79, 116, 869, '3', 'Atteindre l\'excellence en prise parole publique', '1. Maîtriser les techniques de storytelling<br>2. Générer une émotion positive et mobilisatrice', 3, 0, 1, NOW(), NOW()),

(80, 116, 869, '4', 'Excellence en prise parole publique atteinte', 'Félicitations ! Vos interventions inspirent et mobilisent votre audience.', 4, 0, 1, NOW(), NOW()),

-- Module 117: Fonction 3 - Leadership d\'équipe

(81, 117, 900, '1', 'Atteindre l\'excellence en délégation', '1. Préciser clairement les résultats attendus<br>2. Définir les délais et priorités<br>3. Mettre en place des points de suivi', 1, 0, 1, NOW(), NOW()),

(82, 117, 900, '2', 'Atteindre l\'excellence en délégation', '1. Expliquer l\'impact sur l\'activité globale<br>2. Définir les critères de réussite<br>3. Mettre en place des jalons intermédiaires', 2, 0, 1, NOW(), NOW()),

(83, 117, 900, '3', 'Atteindre l\'excellence en délégation', '1. Relier la mission au cap stratégique<br>2. Définir la marge de décision<br>3. Vérifier la compréhension des enjeux', 3, 0, 1, NOW(), NOW()),

(84, 117, 900, '4', 'Excellence en délégation atteinte', 'Félicitations ! Vous déléguez avec une maîtrise stratégique exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(85, 117, 901, '1', 'Atteindre l\'excellence en organisation', '1. Définir les missions principales de chaque membre<br>2. Créer une matrice des responsabilités<br>3. Mettre en place des plannings de travail', 1, 0, 1, NOW(), NOW()),

(86, 117, 901, '2', 'Atteindre l\'excellence en organisation', '1. Clarifier les limites et interfaces entre rôles<br>2. Documenter les processus de collaboration<br>3. Mettre en place des réunions de coordination', 2, 0, 1, NOW(), NOW()),

(87, 117, 901, '3', 'Atteindre l\'excellence en organisation', '1. Définir les périmètres de décision<br>2. Optimiser les flux de travail<br>3. Développer l\'autonomie des équipes', 3, 0, 1, NOW(), NOW()),

(88, 117, 901, '4', 'Excellence en organisation atteinte', 'Félicitations ! Votre organisation est claire, efficace et autonome.', 4, 0, 1, NOW(), NOW()),

(89, 117, 902, '1', 'Atteindre l\'excellence en décision', '1. Mettre en place des consultations régulières<br>2. Partager les informations clés avant décision<br>3. Documenter les décisions importantes', 1, 0, 1, NOW(), NOW()),

(90, 117, 902, '2', 'Atteindre l\'excellence en décision', '1. Écouter activement les avis divergents<br>2. Analyser objectivement les options<br>3. Impliquer l\'équipe dans la décision finale', 2, 0, 1, NOW(), NOW()),

(91, 117, 902, '3', 'Atteindre l\'excellence en décision', '1. Développer la prise de décision collective<br>2. Mettre en place des comités de décision<br>3. Former les équipes à la décision stratégique', 3, 0, 1, NOW(), NOW()),

(92, 117, 902, '4', 'Excellence en décision atteinte', 'Félicitations ! Vous prenez des décisions collectives éclairées et efficaces.', 4, 0, 1, NOW(), NOW()),

(93, 117, 903, '1', 'Atteindre l\'excellence en développement', '1. Mettre en place des reconnaissances régulières<br>2. Identifier les potentiels de progression<br>3. Créer des opportunités d\'apprentissage', 1, 0, 1, NOW(), NOW()),

(94, 117, 903, '2', 'Atteindre l\'excellence en développement', '1. Développer un système de feedback constructif<br>2. Donner des responsabilités progressives<br>3. Mettre en place des formations ciblées', 2, 0, 1, NOW(), NOW()),

(95, 117, 903, '3', 'Atteindre l\'excellence en développement', '1. Créer des parcours de développement personnalisés<br>2. Mettre en place du mentorat interne<br>3. Développer l\'autonomie professionnelle', 3, 0, 1, NOW(), NOW()),

(96, 117, 903, '4', 'Excellence en développement atteinte', 'Félicitations ! Vous développez activement les talents de votre équipe.', 4, 0, 1, NOW(), NOW()),

(97, 117, 904, '1', 'Atteindre l\'autonomie d\'équipe', '1. Définir les niveaux de décision clairs<br>2. Mettre en place des protocoles d\'urgence<br>3. Former les équipes à la prise d\'initiative', 1, 0, 1, NOW(), NOW()),

(98, 117, 904, '2', 'Atteindre l\'autonomie d\'équipe', '1. Déléguer les décisions opérationnelles<br>2. Créer des comités de décision rapide<br>3. Développer la confiance collective', 2, 0, 1, NOW(), NOW()),

(99, 117, 904, '3', 'Atteindre l\'autonomie d\'équipe', '1. Mettre en place l\'autonomie stratégique<br>2. Développer l\'intelligence collective<br>3. Optimiser les processus décisionnels', 3, 0, 1, NOW(), NOW()),

(100, 117, 904, '4', 'Autonomie d\'équipe atteinte', 'Félicitations ! Votre équipe est autonome et performante.', 4, 0, 1, NOW(), NOW()),

(101, 117, 905, '1', 'Atteindre l\'excellence en collaboration', '1. Mettre en place des réunions d\'équipe régulières<br>2. Créer des projets collaboratifs<br>3. Développer la communication interne', 1, 0, 1, NOW(), NOW()),

(102, 117, 905, '2', 'Atteindre l\'excellence en collaboration', '1. Mettre en place des outils de collaboration<br>2. Définir des objectifs communs<br>3. Créer des moments d\'échange informels', 2, 0, 1, NOW(), NOW()),

(103, 117, 905, '3', 'Atteindre l\'excellence en collaboration', '1. Développer l\'entraide spontanée<br>2. Mettre en place du partage de compétences<br>3. Optimiser les synergies d\'équipe', 3, 0, 1, NOW(), NOW()),

(104, 117, 905, '4', 'Excellence en collaboration atteinte', 'Félicitations ! Votre équipe collabore avec une efficacité remarquable.', 4, 0, 1, NOW(), NOW()),

(105, 117, 906, '1', 'Atteindre l\'excellence en motivation', '1. Créer un environnement sans peur de l\'erreur<br>2. Mettre en place des feedbacks constructifs<br>3. Célébrer les succès et apprentissages', 1, 0, 1, NOW(), NOW()),

(106, 117, 906, '2', 'Atteindre l\'excellence en motivation', '1. Développer un sentiment de sécurité<br>2. Mettre en place des reconnaissances régulières<br>3. Créer des perspectives d\'évolution', 2, 0, 1, NOW(), NOW()),

(107, 117, 906, '3', 'Atteindre l\'excellence en motivation', '1. Développer la reconnaissance et le respect<br>2. Mettre en place une culture de performance<br>3. Optimiser l\'engagement individuel', 3, 0, 1, NOW(), NOW()),

(108, 117, 906, '4', 'Excellence en motivation atteinte', 'Félicitations ! Votre équipe est profondément engagée et motivée.', 4, 0, 1, NOW(), NOW()),

(109, 117, 907, '1', 'Atteindre l\'excellence en gestion des conflits', '1. Mettre en place des règles de communication respectueuse<br>2. Apprendre à écouter sans juger<br>3. Développer des techniques de médiation simple', 1, 0, 1, NOW(), NOW()),

(110, 117, 907, '2', 'Atteindre l\'excellence en gestion des conflits', '1. Analyser objectivement les points de vue<br>2. Faciliter le dialogue constructif<br>3. Rechercher des solutions gagnant-gagnant', 2, 0, 1, NOW(), NOW()),

(111, 117, 907, '3', 'Atteindre l\'excellence en gestion des conflits', '1. Aider les parties à comprendre les mécanismes<br>2. Développer la collaboration post-conflit<br>3. Prévenir les tensions futures', 3, 0, 1, NOW(), NOW()),

(112, 117, 907, '4', 'Excellence en gestion des conflits atteinte', 'Félicitations ! Vous transformez les conflits en opportunités de croissance.', 4, 0, 1, NOW(), NOW()),

(113, 117, 908, '1', 'Atteindre l\'excellence en reconnaissance', '1. Mettre en place des reconnaissances publiques<br>2. Citer précisément les contributions individuelles<br>3. Célébrer les succès collectifs', 1, 0, 1, NOW(), NOW()),

(114, 117, 908, '2', 'Atteindre l\'excellence en reconnaissance', '1. Développer une culture de gratitude<br>2. Personnaliser les reconnaissances<br>3. Mettre en place des récompenses symboliques', 2, 0, 1, NOW(), NOW()),

(115, 117, 908, '3', 'Atteindre l\'excellence en reconnaissance', '1. Valoriser les compétences et talents<br>2. Développer la reconnaissance par les pairs<br>3. Créer un écosystème de valorisation', 3, 0, 1, NOW(), NOW()),

(116, 117, 908, '4', 'Excellence en reconnaissance atteinte', 'Félicitations ! Vous valorisez les contributions avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(117, 117, 909, '1', 'Atteindre l\'excellence en posture de leader', '1. Apprendre à faire confiance aux compétences de l\'équipe<br>2. Développer des techniques de coaching simple<br>3. Mettre en place des délégations progressives', 1, 0, 1, NOW(), NOW()),

(118, 117, 909, '2', 'Atteindre l\'excellence en posture de leader', '1. Passer du contrôle au coaching actif<br>2. Développer l\'autonomie des collaborateurs<br>3. Mettre en place des feedbacks constructifs', 2, 0, 1, NOW(), NOW()),

(119, 117, 909, '3', 'Atteindre l\'excellence en posture de leader', '1. Devenir un formateur et mentor<br>2. Structurer l\'organisation pour l\'autonomie<br>3. Développer les leaders internes', 3, 0, 1, NOW(), NOW()),

(120, 117, 909, '4', 'Excellence en posture de leader atteinte', 'Félicitations ! Vous avez développé une équipe capable d\'avancer sans vous.', 4, 0, 1, NOW(), NOW()),

-- Module 118: Fonction 4 - Maîtrise émotionnelle

(121, 118, 910, '1', 'Atteindre la maîtrise émotionnelle', '1. Apprendre à identifier ses déclencheurs émotionnels<br>2. Mettre en place des techniques de respiration<br>3. Prendre du recul avant de réagir', 1, 0, 1, NOW(), NOW()),

(122, 118, 910, '2', 'Atteindre la maîtrise émotionnelle', '1. Développer la régulation émotionnelle<br>2. Mettre en place des stratégies de gestion du stress<br>3. Communiquer calmement sous pression', 2, 0, 1, NOW(), NOW()),

(123, 118, 910, '3', 'Atteindre la maîtrise émotionnelle', '1. Rassurer et stabiliser l\'entourage<br>2. Transformer l\'émotion en action constructive<br>3. Développer la résilience collective', 3, 0, 1, NOW(), NOW()),

(124, 118, 910, '4', 'Maîtrise émotionnelle atteinte', 'Félicitations ! Vous gérez les émotions avec une maturité remarquable.', 4, 0, 1, NOW(), NOW()),

(125, 118, 911, '1', 'Atteindre l\'excellence en gestion des contradictions', '1. Apprendre à écouter sans réagir immédiatement<br>2. Poser des questions pour comprendre<br>3. Séparer l\'émotion de l\'analyse', 1, 0, 1, NOW(), NOW()),

(126, 118, 911, '2', 'Atteindre l\'excellence en gestion des contradictions', '1. Développer l\'ouverture aux points de vue différents<br>2. Analyser objectivement les arguments<br>3. Mettre en place un temps de réflexion', 2, 0, 1, NOW(), NOW()),

(127, 118, 911, '3', 'Atteindre l\'excellence en gestion des contradictions', '1. Demander des arguments précis et factuels<br>2. Co-construire des solutions améliorées<br>3. Transformer la contradiction en opportunité', 3, 0, 1, NOW(), NOW()),

(128, 118, 911, '4', 'Excellence en gestion des contradictions atteinte', 'Félicitations ! Vous transformez les contradictions en décisions améliorées.', 4, 0, 1, NOW(), NOW()),

(129, 118, 912, '1', 'Atteindre la résilience face aux échecs', '1. Mettre en place des techniques d\'ancrage émotionnel<br>2. Analyser objectivement les causes de l\'échec<br>3. Développer des stratégies de récupération rapide', 1, 0, 1, NOW(), NOW()),

(130, 118, 912, '2', 'Atteindre la résilience face aux échecs', '1. Prendre du recul analytique<br>2. Extraire les apprentissages de l\'échec<br>3. Mettre en place des plans d\'action correctifs', 2, 0, 1, NOW(), NOW()),

(131, 118, 912, '3', 'Atteindre la résilience face aux échecs', '1. Transformer l\'échec en opportunité d\'apprentissage<br>2. Développer l\'intelligence collective<br>3. Optimiser les processus post-échec', 3, 0, 1, NOW(), NOW()),

(132, 118, 912, '4', 'Résilience face aux échecs atteinte', 'Félicitations ! Vous transformez les échecs en opportunités de croissance.', 4, 0, 1, NOW(), NOW()),

(133, 118, 913, '1', 'Atteindre la stabilité sous pression', '1. Développer des techniques d\'ancrage émotionnel<br>2. Mettre en place des rituels de recentrage<br>3. Apprendre à prioriser sous pression', 1, 0, 1, NOW(), NOW()),

(134, 118, 913, '2', 'Atteindre la stabilité sous pression', '1. Gérer le stress visible<br>2. Maintenir le cap stratégique<br>3. Communiquer calmement avec l\'équipe', 2, 0, 1, NOW(), NOW()),

(135, 118, 913, '3', 'Atteindre la stabilité sous pression', '1. Stabiliser les émotions collectives<br>2. Clarifier les priorités rapidement<br>3. Transformer l\'incertitude en action', 3, 0, 1, NOW(), NOW()),

(136, 118, 913, '4', 'Stabilité sous pression atteinte', 'Félicitations ! Vous êtes un pilier de stabilité dans l\'incertitude.', 4, 0, 1, NOW(), NOW()),

(137, 118, 914, '1', 'Atteindre l\'excellence en image sous pression', '1. Apprendre à reconnaître ses signaux de stress<br>2. Mettre en place des techniques de régulation<br>3. Développer une communication apaisée', 1, 0, 1, NOW(), NOW()),

(138, 118, 914, '2', 'Atteindre l\'excellence en image sous pression', '1. Gérer la tension visible<br>2. Développer une posture cohérente<br>3. Maintenir le calme apparent', 2, 0, 1, NOW(), NOW()),

(139, 118, 914, '3', 'Atteindre l\'excellence en image sous pression', '1. Rayonner le calme et la cohérence<br>2. Inspirer confiance par la stabilité<br>3. Développer une présence rassurante', 3, 0, 1, NOW(), NOW()),

(140, 118, 914, '4', 'Excellence en image sous pression atteinte', 'Félicitations ! Vous rayonnez calme et stabilité sous pression.', 4, 0, 1, NOW(), NOW()),

(141, 118, 915, '1', 'Atteindre la maîtrise en gestion de crise', '1. Apprendre à ne pas réagir sur la défensive<br>2. Développer des techniques de désamorçage<br>3. Prendre du recul avant d\'intervenir', 1, 0, 1, NOW(), NOW()),

(142, 118, 915, '2', 'Atteindre la maîtrise en gestion de crise', '1. Gérer les conflits sans les éviter<br>2. Mettre en place des médiations simples<br>3. Protéger les relations professionnelles', 2, 0, 1, NOW(), NOW()),

(143, 118, 915, '3', 'Atteindre la maîtrise en gestion de crise', '1. Résoudre les conflits de manière constructive<br>2. Protéger l\'image de l\'entreprise<br>3. Transformer les incidents en opportunités', 3, 0, 1, NOW(), NOW()),

(144, 118, 915, '4', 'Maîtrise en gestion de crise atteinte', 'Félicitations ! Vous transformez les crises en opportunités de confiance.', 4, 0, 1, NOW(), NOW()),

(145, 118, 916, '1', 'Atteindre l\'excellence en médiation', '1. Mettre en place des protocoles de gestion des tensions<br>2. Apprendre à intervenir de manière neutre<br>3. Développer des techniques d\'écoute active', 1, 0, 1, NOW(), NOW()),

(146, 118, 916, '2', 'Atteindre l\'excellence en médiation', '1. Prendre le temps d\'analyser les situations<br>2. Faciliter le dialogue entre les parties<br>3. Rechercher des solutions équilibrées', 2, 0, 1, NOW(), NOW()),

(147, 118, 916, '3', 'Atteindre l\'excellence en médiation', '1. Développer des compétences de médiation avancées<br>2. Co-construire des solutions durables<br>3. Prévenir les tensions futures', 3, 0, 1, NOW(), NOW()),

(148, 118, 916, '4', 'Excellence en médiation atteinte', 'Félicitations ! Vous êtes un médiateur exceptionnel.', 4, 0, 1, NOW(), NOW()),

(149, 118, 917, '1', 'Atteindre l\'excellence en leadership sous tension', '1. Apprendre à gérer son stress visible<br>2. Mettre en place des techniques de régulation<br>3. Protéger l\'équipe de son propre stress', 1, 0, 1, NOW(), NOW()),

(150, 118, 917, '2', 'Atteindre l\'excellence en leadership sous tension', '1. Maintenir la fermeté sans créer de tension<br>2. Communiquer calmement sous pression<br>3. Préserver l\'ambiance de travail', 2, 0, 1, NOW(), NOW()),

(151, 118, 917, '3', 'Atteindre l\'excellence en leadership sous tension', '1. Donner des priorités claires et rassurantes<br>2. Mobiliser l\'équipe vers l\'objectif<br>3. Maintenir la cohésion sous pression', 3, 0, 1, NOW(), NOW()),

(152, 118, 917, '4', 'Excellence en leadership sous tension atteinte', 'Félicitations ! Vous maintenez la sérénité tout en mobilisant efficacement.', 4, 0, 1, NOW(), NOW()),

(153, 118, 918, '1', 'Atteindre l\'excellence en communication émotionnelle', '1. Mettre en place des espaces d\'expression sécurisés<br>2. Apprendre à exprimer ses émotions constructivement<br>3. Développer une culture de feedback', 1, 0, 1, NOW(), NOW()),

(154, 118, 918, '2', 'Atteindre l\'excellence en communication émotionnelle', '1. Anticiper et traiter les tensions<br>2. Mettre en place des rituels de communication<br>3. Développer l\'expression ouverte et respectueuse', 2, 0, 1, NOW(), NOW()),

(155, 118, 918, '3', 'Atteindre l\'excellence en communication émotionnelle', '1. Optimiser la gestion des désaccords<br>2. Développer la communication émotionnelle mature<br>3. Prévenir les tensions par la communication', 3, 0, 1, NOW(), NOW()),

(156, 118, 918, '4', 'Excellence en communication émotionnelle atteinte', 'Félicitations ! Vous avez une communication émotionnelle exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(157, 118, 919, '1', 'Atteindre l\'excellence en image de leader', '1. Développer une prévisibilité émotionnelle<br>2. Mettre en place des rituels de recentrage<br>3. Communiquer ses états émotionnels', 1, 0, 1, NOW(), NOW()),

(158, 118, 919, '2', 'Atteindre l\'excellence en image de leader', '1. Gérer le stress visible par l\'équipe<br>2. Maintenir la cohérence sous pression<br>3. Développer une communication rassurante', 2, 0, 1, NOW(), NOW()),

(159, 118, 919, '3', 'Atteindre l\'excellence en image de leader', '1. Rayonner le calme et la clarté<br>2. Donner des consignes précises sous pression<br>3. Inspirer confiance par la stabilité', 3, 0, 1, NOW(), NOW()),

(160, 118, 919, '4', 'Excellence en image de leader atteinte', 'Félicitations ! Vous êtes un leader calme et inspirant sous pression.', 4, 0, 1, NOW(), NOW()),

-- Module 119: Fonction 5 - Décision & Discernement

(161, 119, 920, '1', 'Atteindre l\'excellence décisionnelle', '1. Mettre en place un processus de décision structuré<br>2. Développer des critères d\'analyse objectifs<br>3. Prendre du recul avant toute décision importante', 1, 0, 1, NOW(), NOW()),

(162, 119, 920, '2', 'Atteindre l\'excellence décisionnelle', '1. Compléter l\'intuition par des données factuelles<br>2. Mettre en place des consultations ciblées<br>3. Développer un équilibre intuition-analyse', 2, 0, 1, NOW(), NOW()),

(163, 119, 920, '3', 'Atteindre l\'excellence décisionnelle', '1. Optimiser le temps de réflexion décisionnel<br>2. Développer des matrices de décision<br>3. Mettre en place des points de validation', 3, 0, 1, NOW(), NOW()),

(164, 119, 920, '4', 'Excellence décisionnelle atteinte', 'Félicitations ! Vous prenez des décisions éclairées et stratégiques.', 4, 0, 1, NOW(), NOW()),

(165, 119, 921, '1', 'Atteindre l\'excellence en gestion de l\'incertitude', '1. Mettre en place des techniques de gestion du doute<br>2. Développer des méthodes de collecte d\'informations<br>3. Apprendre à décider avec des données incomplètes', 1, 0, 1, NOW(), NOW()),

(166, 119, 921, '2', 'Atteindre l\'excellence en gestion de l\'incertitude', '1. Optimiser la rapidité de décision<br>2. Développer des critères de décision rapide<br>3. Mettre en place des systèmes de validation', 2, 0, 1, NOW(), NOW()),

(167, 119, 921, '3', 'Atteindre l\'excellence en gestion de l\'incertitude', '1. Gérer les risques mesurés<br>2. Développer l\'analyse probabiliste<br>3. Mettre en place des plans de contingence', 3, 0, 1, NOW(), NOW()),

(168, 119, 921, '4', 'Excellence en gestion de l\'incertitude atteinte', 'Félicitations ! Vous gérez l\'incertitude avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(169, 119, 922, '1', 'Atteindre l\'excellence en gestion des erreurs', '1. Apprendre à reconnaître ses erreurs<br>2. Mettre en place une analyse objective<br>3. Développer une culture de responsabilité', 1, 0, 1, NOW(), NOW()),

(170, 119, 922, '2', 'Atteindre l\'excellence en gestion des erreurs', '1. Analyser les causes profondes des erreurs<br>2. Mettre en place des apprentissages systématiques<br>3. Développer l\'humilité décisionnelle', 2, 0, 1, NOW(), NOW()),

(171, 119, 922, '3', 'Atteindre l\'excellence en gestion des erreurs', '1. Optimiser les processus de décision<br>2. Mettre en place des systèmes d\'alerte<br>3. Développer l\'intelligence décisionnelle', 3, 0, 1, NOW(), NOW()),

(172, 119, 922, '4', 'Excellence en gestion des erreurs atteinte', 'Félicitations ! Vous transformez les erreurs en apprentissages précieux.', 4, 0, 1, NOW(), NOW()),

(173, 119, 923, '1', 'Atteindre l\'excellence en prise de décision collective', '1. Mettre en place des consultations régulières<br>2. Développer l\'écoute active des avis divergents<br>3. Communiquer clairement les décisions', 1, 0, 1, NOW(), NOW()),

(174, 119, 923, '2', 'Atteindre l\'excellence en prise de décision collective', '1. Équilibrer l\'écoute et la décision finale<br>2. Poser des questions pour approfondir les avis<br>3. Mettre en place des débats structurés', 2, 0, 1, NOW(), NOW()),

(175, 119, 923, '3', 'Atteindre l\'excellence en prise de décision collective', '1. Analyser objectivement les arguments<br>2. Évaluer les conséquences à long terme<br>3. Prendre des décisions éclairées et expliquées', 3, 0, 1, NOW(), NOW()),

(176, 119, 923, '4', 'Excellence en prise de décision collective atteinte', 'Félicitations ! Vous prenez des décisions collectives éclairées.', 4, 0, 1, NOW(), NOW()),

(177, 119, 924, '1', 'Atteindre l\'excellence en gestion des risques', '1. Mettre en place une analyse systématique des risques<br>2. Développer une culture de prudence<br>3. Mettre en place des plans de mitigation', 1, 0, 1, NOW(), NOW()),

(178, 119, 924, '2', 'Atteindre l\'excellence en gestion des risques', '1. Optimiser l\'analyse des conséquences<br>2. Mettre en place une matrice de risques<br>3. Développer des stratégies de prévention', 2, 0, 1, NOW(), NOW()),

(179, 119, 924, '3', 'Atteindre l\'excellence en gestion des risques', '1. Identifier et évaluer tous les types de risques<br>2. Mettre en place des plans d\'action<br>3. Développer une culture de sécurité', 3, 0, 1, NOW(), NOW()),

(180, 119, 924, '4', 'Excellence en gestion des risques atteinte', 'Félicitations ! Vous gérez les risques avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(181, 119, 925, '1', 'Atteindre l\'excellence en suivi des décisions', '1. Mettre en place des indicateurs de suivi<br>2. Développer une culture de mesure<br>3. Mettre en place des revues régulières', 1, 0, 1, NOW(), NOW()),

(182, 119, 925, '2', 'Atteindre l\'excellence en suivi des décisions', '1. Optimiser le suivi des résultats<br>2. Mettre en place des tableaux de bord<br>3. Développer une culture d\'amélioration continue', 2, 0, 1, NOW(), NOW()),

(183, 119, 925, '3', 'Atteindre l\'excellence en suivi des décisions', '1. Mesurer les écarts par rapport aux objectifs<br>2. Analyser les performances et les apprentissages<br>3. Optimiser les processus décisionnels', 3, 0, 1, NOW(), NOW()),

(184, 119, 925, '4', 'Excellence en suivi des décisions atteinte', 'Félicitations ! Vous suivez et améliorez vos décisions systématiquement.', 4, 0, 1, NOW(), NOW()),

(185, 119, 926, '1', 'Atteindre l\'excellence en rapidité décisionnelle', '1. Mettre en place des délais de décision clairs<br>2. Développer des techniques de rapidité<br>3. Mettre en place des systèmes d\'urgence', 1, 0, 1, NOW(), NOW()),

(186, 119, 926, '2', 'Atteindre l\'excellence en rapidité décisionnelle', '1. Optimiser la rapidité sans sacrifier la qualité<br>2. Développer des processus de décision rapide<br>3. Mettre en place des validations accélérées', 2, 0, 1, NOW(), NOW()),

(187, 119, 926, '3', 'Atteindre l\'excellence en rapidité décisionnelle', '1. Structurer les décisions rapides<br>2. Développer l\'assumption des décisions<br>3. Mettre en place des systèmes de feedback', 3, 0, 1, NOW(), NOW()),

(188, 119, 926, '4', 'Excellence en rapidité décisionnelle atteinte', 'Félicitations ! vous prenez des décisions rapides et structurées.', 4, 0, 1, NOW(), NOW()),

(189, 119, 927, '1', 'Atteindre l\'excellence en arbitrage', '1. Mettre en place des critères d\'évaluation<br>2. Développer une analyse multicritères<br>3. Mettre en place des matrices de décision', 1, 0, 1, NOW(), NOW()),

(190, 119, 927, '2', 'Atteindre l\'excellence en arbitrage', '1. Optimiser l\'analyse des risques<br>2. Développer une vision à long terme<br>3. Mettre en place des pondérations équilibrées', 2, 0, 1, NOW(), NOW()),

(191, 119, 927, '3', 'Atteindre l\'excellence en arbitrage', '1. Comparer systématiquement les options<br>2. Analyser tous les impacts<br>3. Développer une décision équilibrée', 3, 0, 1, NOW(), NOW()),

(192, 119, 927, '4', 'Excellence en arbitrage atteinte', 'Félicitations ! Vous arbitrez avec une analyse complète et équilibrée.', 4, 0, 1, NOW(), NOW()),

(193, 119, 928, '1', 'Atteindre l\'excellence en responsabilité décisionnelle', '1. Prendre la responsabilité de ses décisions<br>2. Mettre en place une communication transparente<br>3. Développer l\'accountability', 1, 0, 1, NOW(), NOW()),

(194, 119, 928, '2', 'Atteindre l\'excellence en responsabilité décisionnelle', '1. Justifier rationnellement ses décisions<br>2. Communiquer clairement les raisons<br>3. Mettre en place des justifications documentées', 2, 0, 1, NOW(), NOW()),

(195, 119, 928, '3', 'Atteindre l\'excellence en responsabilité décisionnelle', '1. Assumer fermement les conséquences<br>2. Mettre en place une culture de responsabilité<br>3. Développer la confiance décisionnelle', 3, 0, 1, NOW(), NOW()),

(196, 119, 928, '4', 'Excellence en responsabilité décisionnelle atteinte', 'Félicitations ! Vous assumez vos décisions avec une maturité remarquable.', 4, 0, 1, NOW(), NOW()),

(197, 119, 929, '1', 'Atteindre l\'excellence en posture décisionnelle', '1. Mettre en place des techniques de gestion de la pression<br>2. Développer une analyse émotionnelle<br>3. Prendre du recul avant de décider', 1, 0, 1, NOW(), NOW()),

(198, 119, 929, '2', 'Atteindre l\'excellence en posture décisionnelle', '1. Gérer l\'influence externe<br>2. Développer une résistance à la pression<br>3. Maintenir l\'objectivité décisionnelle', 2, 0, 1, NOW(), NOW()),

(199, 119, 929, '3', 'Atteindre l\'excellence en posture décisionnelle', '1. Optimiser l\'analyse comparative<br>2. Développer une évaluation rigoureuse<br>3. Mesurer les conséquences avant de décider', 3, 0, 1, NOW(), NOW()),

(200, 119, 929, '4', 'Excellence en posture décisionnelle atteinte', 'Félicitations ! Vous avez une posture décisionnelle mature et stratégique.', 4, 0, 1, NOW(), NOW()),

-- Module 120: Fonction 6 - Agilité & Adaptation

(201, 120, 930, '1', 'Atteindre l\'agilité environnementale', '1. Mettre en place une veille active<br>2. Développer des indicateurs de suivi<br>3. Mettre en place des alertes de changement', 1, 0, 1, NOW(), NOW()),

(202, 120, 930, '2', 'Atteindre l\'agilité environnementale', '1. Optimiser la détection des signaux faibles<br>2. Mettre en place des analyses d\'impact<br>3. Développer une réactivité proactive', 2, 0, 1, NOW(), NOW()),

(203, 120, 930, '3', 'Atteindre l\'agilité environnementale', '1. Mettre en place une surveillance régulière<br>2. Développer des ajustements progressifs<br>3. Optimiser l\'analyse concurrentielle', 3, 0, 1, NOW(), NOW()),

(204, 120, 930, '4', 'Agilité environnementale atteinte', 'Félicitations ! Vous anticipez et adaptez votre organisation avec excellence.', 4, 0, 1, NOW(), NOW()),

(205, 120, 931, '1', 'Atteindre l\'agilité opérationnelle', '1. Mettre en place des indicateurs de performance<br>2. Développer une analyse des causes<br>3. Mettre en place des plans d\'action correctifs', 1, 0, 1, NOW(), NOW()),

(206, 120, 931, '2', 'Atteindre l\'agilité opérationnelle', '1. Optimiser les ajustements rapides<br>2. Mettre en place des tests d\'hypothèses<br>3. Développer une culture d\'expérimentation', 2, 0, 1, NOW(), NOW()),

(207, 120, 931, '3', 'Atteindre l\'agilité opérationnelle', '1. Analyser systématiquement les blocages<br>2. Mettre en place des modifications ciblées<br>3. Développer l\'amélioration continue', 3, 0, 1, NOW(), NOW()),

(208, 120, 931, '4', 'Agilité opérationnelle atteinte', 'Félicitations ! Vous ajustez vos opérations avec méthode et efficacité.', 4, 0, 1, NOW(), NOW()),

(209, 120, 932, '1', 'Atteindre l\'excellence en conduite du changement', '1. Mettre en place des rituels de changement<br>2. Développer une communication claire<br>3. Mettre en place des formations d\'adaptation', 1, 0, 1, NOW(), NOW()),

(210, 120, 932, '2', 'Atteindre l\'excellence en conduite du changement', '1. Optimiser l\'annonce des changements<br>2. Mettre en place un accompagnement progressif<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(211, 120, 932, '3', 'Atteindre l\'excellence en conduite du changement', '1. Expliquer les raisons du changement<br>2. Accompagner les premières étapes<br>3. Mettre en place des supports de transition', 3, 0, 1, NOW(), NOW()),

(212, 120, 932, '4', 'Excellence en conduite du changement atteinte', 'Félicitations ! Vous conduisez le changement avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(213, 120, 933, '1', 'Atteindre l\'excellence en gestion des résistances', '1. Mettre en place des techniques de dialogue<br>2. Développer l\'écoute empathique<br>3. Mettre en place des espaces d\'expression', 1, 0, 1, NOW(), NOW()),

(214, 120, 933, '2', 'Atteindre l\'excellence en gestion des résistances', '1. Traiter les objections de manière constructive<br>2. Mettre en place des réponses préparées<br>3. Développer la communication persuasive', 2, 0, 1, NOW(), NOW()),

(215, 120, 933, '3', 'Atteindre l\'excellence en gestion des résistances', '1. Écouter activement les freins<br>2. Expliquer le sens du changement<br>3. Mettre en place des ajustements', 3, 0, 1, NOW(), NOW()),

(216, 120, 933, '4', 'Excellence en gestion des résistances atteinte', 'Félicitations ! Vous transformez les résistances en adhésion.', 4, 0, 1, NOW(), NOW()),

(217, 120, 934, '1', 'Atteindre l\'agilité stratégique', '1. Mettre en place des indicateurs d\'alerte<br>2. Développer une culture de réactivité<br>3. Mettre en place des plans d\'urgence', 1, 0, 1, NOW(), NOW()),

(218, 120, 934, '2', 'Atteindre l\'agilité stratégique', '1. Optimiser les ajustements ciblés<br>2. Mettre en place une analyse d\'impact<br>3. Développer une vision systémique', 2, 0, 1, NOW(), NOW()),

(219, 120, 934, '3', 'Atteindre l\'agilité stratégique', '1. Redéfinir les priorités rapidement<br>2. Ajuster les actions principales<br>3. Mettre en place une stratégie agile', 3, 0, 1, NOW(), NOW()),

(220, 120, 934, '4', 'Agilité stratégique atteinte', 'Félicitations ! Vous ajustez votre stratégie avec une agilité remarquable.', 4, 0, 1, NOW(), NOW()),

(221, 120, 935, '1', 'Atteindre l\'excellence en suivi des changements', '1. Mettre en place des indicateurs de suivi<br>2. Développer une culture de mesure<br>3. Mettre en place des revues régulières', 1, 0, 1, NOW(), NOW()),

(222, 120, 935, '2', 'Atteindre l\'excellence en suivi des changements', '1. Optimiser le suivi qualitatif<br>2. Mettre en place des indicateurs visibles<br>3. Développer une culture d\'amélioration', 2, 0, 1, NOW(), NOW()),

(223, 120, 935, '3', 'Atteindre l\'excellence en suivi des changements', '1. Vérifier systématiquement les résultats<br>2. Mettre en place des comparaisons objectifs<br>3. Développer une culture de performance', 3, 0, 1, NOW(), NOW()),

(224, 120, 935, '4', 'Excellence en suivi des changements atteinte', 'Félicitations ! Vous suivez et optimisez les changements avec excellence.', 4, 0, 1, NOW(), NOW()),

(225, 120, 936, '1', 'Atteindre l\'agilité émotionnelle', '1. Mettre en place des techniques d\'ancrage<br>2. Développer la résilience émotionnelle<br>3. Mettre en place des rituels de recentrage', 1, 0, 1, NOW(), NOW()),

(226, 120, 936, '2', 'Atteindre l\'agilité émotionnelle', '1. Optimiser l\'adaptation en urgence<br>2. Mettre en place des plans de contingence<br>3. Développer la stabilité sous pression', 2, 0, 1, NOW(), NOW()),

(227, 120, 936, '3', 'Atteindre l\'agilité émotionnelle', '1. Analyser l\'impact réel des changements<br>2. Ajuster progressivement l\'organisation<br>3. Développer l\'intelligence émotionnelle', 3, 0, 1, NOW(), NOW()),

(228, 120, 936, '4', 'Agilité émotionnelle atteinte', 'Félicitations ! Vous gérez les changements avec une stabilité remarquable.', 4, 0, 1, NOW(), NOW()),

(229, 120, 937, '1', 'Atteindre l\'excellence en communication du changement', '1. Mettre en place des rituels de communication<br>2. Développer une communication structurée<br>3. Mettre en place des supports d\'accompagnement', 1, 0, 1, NOW(), NOW()),

(230, 120, 937, '2', 'Atteindre l\'excellence en communication du changement', '1. Optimiser l\'explication des décisions<br>2. Mettre en place une gestion des réactions<br>3. Développer l\'écoute empathique', 2, 0, 1, NOW(), NOW()),

(231, 120, 937, '3', 'Atteindre l\'excellence en communication du changement', '1. Expliquer le pourquoi et les impacts<br>2. Définir clairement les actions<br>3. Mettre en place des instructions précises', 3, 0, 1, NOW(), NOW()),

(232, 120, 937, '4', 'Excellence en communication du changement atteinte', 'Félicitations ! Vous communiquez les changements avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(233, 120, 938, '1', 'Atteindre l\'excellence en mise en œuvre', '1. Mettre en place des instructions claires<br>2. Développer une interprétation unifiée<br>3. Mettre en place des points de clarification', 1, 0, 1, NOW(), NOW()),

(234, 120, 938, '2', 'Atteindre l\'excellence en mise en œuvre', '1. Maintenir la motivation sur le long terme<br>2. Mettre en place un suivi structuré<br>3. Développer des rituels de progression', 2, 0, 1, NOW(), NOW()),

(235, 120, 938, '3', 'Atteindre l\'excellence en mise en œuvre', '1. Définir des étapes claires et responsables<br>2. Mettre en place un suivi régulier<br>3. Développer une culture d\'exécution', 3, 0, 1, NOW(), NOW()),

(236, 120, 938, '4', 'Excellence en mise en œuvre atteinte', 'Félicitations ! Vous mettez en œuvre les changements avec une efficacité remarquable.', 4, 0, 1, NOW(), NOW()),

(237, 120, 939, '1', 'Atteindre l\'excellence en posture agile', '1. Mettre en place des techniques de résilience<br>2. Développer une culture d\'adaptation<br>3. Mettre en place des plans de mitigation', 1, 0, 1, NOW(), NOW()),

(238, 120, 939, '2', 'Atteindre l\'excellence en posture agile', '1. Optimiser l\'adaptation sous pression<br>2. Mettre en place des stratégies de réaction<br>3. Développer la flexibilité opérationnelle', 2, 0, 1, NOW(), NOW()),

(239, 120, 939, '3', 'Atteindre l\'excellence en posture agile', '1. Développer des ajustements méthodiques<br>2. Mettre en place une stabilité agile<br>3. Optimiser la gestion du changement', 3, 0, 1, NOW(), NOW()),

(240, 120, 939, '4', 'Excellence en posture agile atteinte', 'Félicitations ! Vous pilotez le changement avec une agilité stratégique.', 4, 0, 1, NOW(), NOW()),

-- Module 121: Fonction 7 - Orientation Client

(241, 121, 940, '1', 'Atteindre l\'excellence en orientation client', '1. Mettre en place une analyse de la valeur perçue<br>2. Développer une différenciation par le prix<br>3. Mettre en place une stratégie de proximité', 1, 0, 1, NOW(), NOW()),

(242, 121, 940, '2', 'Atteindre l\'excellence en orientation client', '1. Optimiser la relation client<br>2. Développer une fidélisation par la confiance<br>3. Mettre en place une stratégie relationnelle', 2, 0, 1, NOW(), NOW()),

(243, 121, 940, '3', 'Atteindre l\'excellence en orientation client', '1. Développer une offre centrée sur les besoins<br>2. Mettre en place une écoute client active<br>3. Optimiser la réponse aux attentes', 3, 0, 1, NOW(), NOW()),

(244, 121, 940, '4', 'Excellence en orientation client atteinte', 'Félicitations ! Vous avez une orientation client exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(245, 121, 941, '1', 'Atteindre l\'excellence en écoute client', '1. Mettre en place des enquêtes de satisfaction<br>2. Développer une écoute proactive<br>3. Mettre en place des points de contact réguliers', 1, 0, 1, NOW(), NOW()),

(246, 121, 941, '2', 'Atteindre l\'excellence en écoute client', '1. Optimiser la gestion des plaintes<br>2. Mettre en place une écoute réactive<br>3. Développer une culture de résolution', 2, 0, 1, NOW(), NOW()),

(247, 121, 941, '3', 'Atteindre l\'excellence en écoute client', '1. Mettre en place des questionnaires réguliers<br>2. Développer une écoute attentive<br>3. Mettre en place des analyses d\'attentes', 3, 0, 1, NOW(), NOW()),

(248, 121, 941, '4', 'Excellence en écoute client atteinte', 'Félicitations ! Vous anticipez les besoins de vos clients.', 4, 0, 1, NOW(), NOW()),

(249, 121, 942, '1', 'Atteindre l\'excellence en rétention client', '1. Mettre en place une analyse des départs<br>2. Développer une stratégie de prix compétitive<br>3. Mettre en place des programmes de fidélité', 1, 0, 1, NOW(), NOW()),

(250, 121, 942, '2', 'Atteindre l\'excellence en rétention client', '1. Mettre en place un suivi des départs<br>2. Développer une analyse des causes<br>3. Mettre en place des actions correctives', 2, 0, 1, NOW(), NOW()),

(251, 121, 942, '3', 'Atteindre l\'excellence en rétention client', '1. Mettre en place des entretiens de départ<br>2. Développer une analyse approfondie<br>3. Mettre en place des plans d\'action', 3, 0, 1, NOW(), NOW()),

(252, 121, 942, '4', 'Excellence en rétention client atteinte', 'Félicitations ! Vous maîtrisez parfaitement la rétention client.', 4, 0, 1, NOW(), NOW()),

(253, 121, 943, '1', 'Atteindre l\'excellence en stratégie prix', '1. Mettre en place une analyse concurrentielle<br>2. Développer une stratégie de différenciation<br>3. Mettre en place une analyse de valeur', 1, 0, 1, NOW(), NOW()),

(254, 121, 943, '2', 'Atteindre l\'excellence en stratégie prix', '1. Optimiser la stratégie de volume<br>2. Développer une analyse de marge<br>3. Mettre en place une tarification dynamique', 2, 0, 1, NOW(), NOW()),

(255, 121, 943, '3', 'Atteindre l\'excellence en stratégie prix', '1. Mettre en place un calcul de coûts précis<br>2. Développer une analyse de rentabilité<br>3. Mettre en place une marge cohérente', 3, 0, 1, NOW(), NOW()),

(256, 121, 943, '4', 'Excellence en stratégie prix atteinte', 'Félicitations ! Vous avez une stratégie prix basée sur la valeur.', 4, 0, 1, NOW(), NOW()),

(257, 121, 944, '1', 'Atteindre l\'excellence en différenciation', '1. Mettre en place une analyse concurrentielle<br>2. Développer une proposition unique<br>3. Mettre en place une innovation continue', 1, 0, 1, NOW(), NOW()),

(258, 121, 944, '2', 'Atteindre l\'excellence en différenciation', '1. Optimiser les améliorations incrémentales<br>2. Développer une stratégie de qualité<br>3. Mettre en place une culture d\'excellence', 2, 0, 1, NOW(), NOW()),

(259, 121, 944, '3', 'Atteindre l\'excellence en différenciation', '1. Mettre en place un avantage concurrentiel clair<br>2. Développer une spécialisation reconnue<br>3. Mettre en place une expertise différenciante', 3, 0, 1, NOW(), NOW()),

(260, 121, 944, '4', 'Excellence en différenciation atteinte', 'Félicitations ! Vous avez une différenciation claire et reconnue.', 4, 0, 1, NOW(), NOW()),

(261, 121, 945, '1', 'Atteindre l\'excellence en suivi client', '1. Mettre en place un système de suivi<br>2. Développer une culture de prospection<br>3. Mettre en place des relances systématiques', 1, 0, 1, NOW(), NOW()),

(262, 121, 945, '2', 'Atteindre l\'excellence en suivi client', '1. Optimiser la réactivité client<br>2. Mettre en place un suivi réactif<br>3. Développer une culture de service', 2, 0, 1, NOW(), NOW()),

(263, 121, 945, '3', 'Atteindre l\'excellence en suivi client', '1. Mettre en place un suivi proactif<br>2. Développer une écoute attentive<br>3. Mettre en place des vérifications de satisfaction', 3, 0, 1, NOW(), NOW()),

(264, 121, 945, '4', 'Excellence en suivi client atteinte', 'Félicitations ! Vous avez un suivi client méthodique et efficace.', 4, 0, 1, NOW(), NOW()),

(265, 121, 946, '1', 'Atteindre l\'excellence en gestion des réclamations', '1. Mettre en place des techniques de désamorçage<br>2. Développer une communication défensive<br>3. Mettre en place des procédures de résolution', 1, 0, 1, NOW(), NOW()),

(266, 121, 946, '2', 'Atteindre l\'excellence en gestion des réclamations', '1. Optimiser la résolution rapide<br>2. Mettre en place une analyse des causes<br>3. Développer une culture d\'amélioration', 2, 0, 1, NOW(), NOW()),

(267, 121, 946, '3', 'Atteindre l\'excellence en gestion des réclamations', '1. Mettre en place une écoute attentive<br>2. Développer une analyse approfondie<br>3. Mettre en place des solutions durables', 3, 0, 1, NOW(), NOW()),

(268, 121, 946, '4', 'Excellence en gestion des réclamations atteinte', 'Félicitations ! Vous transformez les réclamations en opportunités.', 4, 0, 1, NOW(), NOW()),

(269, 121, 947, '1', 'Atteindre l\'excellence en positionnement concurrentiel', '1. Mettre en place une analyse de la concurrence<br>2. Développer une stratégie de différenciation<br>3. Mettre en place une défense de la marge', 1, 0, 1, NOW(), NOW()),

(270, 121, 947, '2', 'Atteindre l\'excellence en positionnement concurrentiel', '1. Optimiser les stratégies promotionnelles<br>2. Développer une analyse de la valeur<br>3. Mettre en place une tarification flexible', 2, 0, 1, NOW(), NOW()),

(271, 121, 947, '3', 'Atteindre l\'excellence en positionnement concurrentiel', '1. Renforcer les avantages compétitifs<br>2. Mettre en place une stratégie de qualité<br>3. Développer une culture d\'excellence', 3, 0, 1, NOW(), NOW()),

(272, 121, 947, '4', 'Excellence en positionnement concurrentiel atteinte', 'Félicitations ! Vous protégez votre positionnement avec excellence.', 4, 0, 1, NOW(), NOW()),

(273, 121, 948, '1', 'Atteindre l\'excellence en veille concurrentielle', '1. Mettre en place un suivi des ventes<br>2. Développer une analyse du marché<br>3. Mettre en place des indicateurs de performance', 1, 0, 1, NOW(), NOW()),

(274, 121, 948, '2', 'Atteindre l\'excellence en veille concurrentielle', '1. Mettre en place une veille concurrentielle<br>2. Développer une analyse comparative<br>3. Mettre en place des alertes concurrentielles', 2, 0, 1, NOW(), NOW()),

(275, 121, 948, '3', 'Atteindre l\'excellence en veille concurrentielle', '1. Mettre en place une surveillance client<br>2. Développer une analyse des tendances<br>3. Mettre en place une intelligence concurrentielle', 3, 0, 1, NOW(), NOW()),

(276, 121, 948, '4', 'Excellence en veille concurrentielle atteinte', 'Félicitations ! Vous avez une veille concurrentielle exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(277, 121, 949, '1', 'Atteindre l\'excellence en développement d\'offre', '1. Mettre en place une analyse de marché<br>2. Développer une stratégie de vente<br>3. Mettre en place une prospection ciblée', 1, 0, 1, NOW(), NOW()),

(278, 121, 949, '2', 'Atteindre l\'excellence en développement d\'offre', '1. Optimiser l\'adaptation de l\'offre<br>2. Développer une écoute du marché<br>3. Mettre en place une flexibilité produit', 2, 0, 1, NOW(), NOW()),

(279, 121, 949, '3', 'Atteindre l\'excellence en développement d\'offre', '1. Mettre en place une adaptation continue<br>2. Développer une analyse des besoins<br>3. Mettre en place une innovation client', 3, 0, 1, NOW(), NOW()),

(280, 121, 949, '4', 'Excellence en développement d\'offre atteinte', 'Félicitations ! Vous développez des offres parfaitement alignées.', 4, 0, 1, NOW(), NOW()),

-- Module 122: Fonction 8 - Résolution & Action

(281, 122, 950, '1', 'Atteindre l\'excellence en résolution de problèmes', '1. Mettre en place une détection précoce<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des alertes de suivi', 1, 0, 1, NOW(), NOW()),

(282, 122, 950, '2', 'Atteindre l\'excellence en résolution de problèmes', '1. Optimiser l\'intervention tardive<br>2. Mettre en place des plans d\'urgence<br>3. Développer une réactivité critique', 2, 0, 1, NOW(), NOW()),

(283, 122, 950, '3', 'Atteindre l\'excellence en résolution de problèmes', '1. Mettre en place une action rapide<br>2. Développer des corrections efficaces<br>3. Mettre en place une culture d\'action', 3, 0, 1, NOW(), NOW()),

(284, 122, 950, '4', 'Excellence en résolution de problèmes atteinte', 'Félicitations ! Vous résolvez les problèmes avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(285, 122, 951, '1', 'Atteindre l\'excellence en amélioration continue', '1. Mettre en place des audits réguliers<br>2. Développer une culture d\'optimisation<br>3. Mettre en place des plans d\'amélioration', 1, 0, 1, NOW(), NOW()),

(286, 122, 951, '2', 'Atteindre l\'excellence en amélioration continue', '1. Optimiser les processus existants<br>2. Mettre en place une maintenance préventive<br>3. Développer une culture de qualité', 2, 0, 1, NOW(), NOW()),

(287, 122, 951, '3', 'Atteindre l\'excellence en amélioration continue', '1. Mettre en place des actions correctives ciblées<br>2. Développer une culture d\'amélioration<br>3. Mettre en place des suivis d\'efficacité', 3, 0, 1, NOW(), NOW()),

(288, 122, 951, '4', 'Excellence en amélioration continue atteinte', 'Félicitations ! Vous avez une culture d\'amélioration exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(289, 122, 952, '1', 'Atteindre l\'excellence en prise d\'opportunités', '1. Mettre en place une veille opportunité<br>2. Développer une culture d\'ouverture<br>3. Mettre en place des évaluations de risque', 1, 0, 1, NOW(), NOW()),

(290, 122, 952, '2', 'Atteindre l\'excellence en prise d\'opportunités', '1. Optimiser l\'analyse d\'impact<br>2. Mettre en place une évaluation organisationnelle<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(291, 122, 952, '3', 'Atteindre l\'excellence en prise d\'opportunités', '1. Mettre en place une évaluation rapide<br>2. Développer une analyse de faisabilité<br>3. Mettre en place une décision éclairée', 3, 0, 1, NOW(), NOW()),

(292, 122, 952, '4', 'Excellence en prise d\'opportunités atteinte', 'Félicitations ! Vous saisissez les opportunités avec une maîtrise remarquable.', 4, 0, 1, NOW(), NOW()),

(293, 122, 953, '1', 'Atteindre l\'excellence en responsabilité', '1. Mettre en place une analyse des causes externes<br>2. Développer une culture de justification<br>3. Mettre en place des stratégies de défense', 1, 0, 1, NOW(), NOW()),

(294, 122, 953, '2', 'Atteindre l\'excellence en responsabilité', '1. Optimiser la reconnaissance des responsabilités<br>2. Mettre en place des justifications structurées<br>3. Développer une culture d\'analyse', 2, 0, 1, NOW(), NOW()),

(295, 122, 953, '3', 'Atteindre l\'excellence en responsabilité', '1. Mettre en place une assumption totale<br>2. Développer une analyse précise<br>3. Mettre en place des corrections ciblées', 3, 0, 1, NOW(), NOW()),

(296, 122, 953, '4', 'Excellence en responsabilité atteinte', 'Félicitations ! Vous assumez les responsabilités avec une maturité exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(297, 122, 954, '1', 'Atteindre l\'excellence en planification stratégique', '1. Mettre en place une gestion des urgences<br>2. Développer une culture de réactivité<br>3. Mettre en place des priorités claires', 1, 0, 1, NOW(), NOW()),

(298, 122, 954, '2', 'Atteindre l\'excellence en planification stratégique', '1. Optimiser la planification<br>2. Mettre en place une gestion des imprévus<br>3. Développer une culture d\'anticipation', 2, 0, 1, NOW(), NOW()),

(299, 122, 954, '3', 'Atteindre l\'excellence en planification stratégique', '1. Mettre en place des créneaux protégés<br>2. Développer une discipline de planification<br>3. Mettre en place une gestion des priorités', 3, 0, 1, NOW(), NOW()),

(300, 122, 954, '4', 'Excellence en planification stratégique atteinte', 'Félicitations ! Vous planifiez avec une discipline exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(301, 122, 955, '1', 'Atteindre l\'excellence en exécution stratégique', '1. Mettre en place des plans de projet<br>2. Développer une culture de livraison<br>3. Mettre en place des suivis d\'avancement', 1, 0, 1, NOW(), NOW()),

(302, 122, 955, '2', 'Atteindre l\'excellence en exécution stratégique', '1. Optimiser la gestion des priorités<br>2. Mettre en place une résistance à la pression<br>3. Développer une culture de persévérance', 2, 0, 1, NOW(), NOW()),

(303, 122, 955, '3', 'Atteindre l\'excellence en exécution stratégique', '1. Mettre en place des échéances claires<br>2. Développer une organisation efficace<br>3. Mettre en place une culture de résultat', 3, 0, 1, NOW(), NOW()),

(304, 122, 955, '4', 'Excellence en exécution stratégique atteinte', 'Félicitations ! Vous exécutez les stratégies avec une efficacité remarquable.', 4, 0, 1, NOW(), NOW()),

(305, 122, 956, '1', 'Atteindre l\'excellence en auto-analyse', '1. Mettre en place une analyse externe<br>2. Développer une culture de justification<br>3. Mettre en place des stratégies de protection', 1, 0, 1, NOW(), NOW()),

(306, 122, 956, '2', 'Atteindre l\'excellence en auto-analyse', '1. Optimiser la reconnaissance des responsabilités<br>2. Mettre en place des explications structurées<br>3. Développer une culture d\'analyse', 2, 0, 1, NOW(), NOW()),

(307, 122, 956, '3', 'Atteindre l\'excellence en auto-analyse', '1. Mettre en place une analyse objective<br>2. Développer une évaluation des décisions<br>3. Mettre en place une optimisation continue', 3, 0, 1, NOW(), NOW()),

(308, 122, 956, '4', 'Excellence en auto-analyse atteinte', 'Félicitations ! Vous analysez vos décisions avec une objectivité remarquable.', 4, 0, 1, NOW(), NOW()),

(309, 122, 957, '1', 'Atteindre l\'excellence en gestion des crises', '1. Mettre en place une résilience émotionnelle<br>2. Développer une culture d\'attente<br>3. Mettre en place des stratégies de stabilisation', 1, 0, 1, NOW(), NOW()),

(310, 122, 957, '2', 'Atteindre l\'excellence en gestion des crises', '1. Optimiser la réactivité immédiate<br>2. Mettre en place des solutions d\'urgence<br>3. Développer une culture de limitation', 2, 0, 1, NOW(), NOW()),

(311, 122, 957, '3', 'Atteindre l\'excellence en gestion des crises', '1. Mettre en place une analyse de situation<br>2. Développer une adaptation organisationnelle<br>3. Mettre en place des ajustements rapides', 3, 0, 1, NOW(), NOW()),

(312, 122, 957, '4', 'Excellence en gestion des crises atteinte', 'Félicitations ! Vous transformez les crises en opportunités stratégiques.', 4, 0, 1, NOW(), NOW()),

(313, 122, 958, '1', 'Atteindre l\'excellence en anticipation', '1. Mettre en place des indicateurs de suivi<br>2. Développer une culture de réactivité<br>3. Mettre en place des alertes de crise', 1, 0, 1, NOW(), NOW()),

(314, 122, 958, '2', 'Atteindre l\'excellence en anticipation', '1. Optimiser la réactivité financière<br>2. Mettre en place une analyse d\'impact<br>3. Développer une culture d\'intervention', 2, 0, 1, NOW(), NOW()),

(315, 122, 958, '3', 'Atteindre l\'excellence en anticipation', '1. Mettre en place une veille active<br>2. Développer une détection précoce<br>3. Mettre en place des mesures préventives', 3, 0, 1, NOW(), NOW()),

(316, 122, 958, '4', 'Excellence en anticipation atteinte', 'Félicitations ! Vous anticipez les crises avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(317, 122, 959, '1', 'Atteindre l\'excellence en résilience', '1. Mettre en place des stratégies de survie<br>2. Développer une culture de limitation<br>3. Mettre en place des plans de continuité', 1, 0, 1, NOW(), NOW()),

(318, 122, 959, '2', 'Atteindre l\'excellence en résilience', '1. Optimiser l\'adaptation aux contraintes<br>2. Mettre en place des stratégies de stabilisation<br>3. Développer une culture de rebond', 2, 0, 1, NOW(), NOW()),

(319, 122, 959, '3', 'Atteindre l\'excellence en résilience', '1. Mettre en place des décisions de stabilisation<br>2. Développer une culture de rebond<br>3. Mettre en place des plans de croissance', 3, 0, 1, NOW(), NOW()),

(320, 122, 959, '4', 'Excellence en résilience atteinte', 'Félicitations ! Vous transformez les contraintes en opportunités stratégiques.', 4, 0, 1, NOW(), NOW()),

-- Module 123: Fonction 9 - Amélioration & Optimisation

(321, 123, 960, '1', 'Atteindre l\'excellence en résolution systémique', '1. Mettre en place une analyse des causes<br>2. Développer une culture de résolution<br>3. Mettre en place des corrections ciblées', 1, 0, 1, NOW(), NOW()),

(322, 123, 960, '2', 'Atteindre l\'excellence en résolution systémique', '1. Optimiser les rappels et corrections<br>2. Mettre en place une analyse de récurrence<br>3. Développer une culture d\'amélioration', 2, 0, 1, NOW(), NOW()),

(323, 123, 960, '3', 'Atteindre l\'excellence en résolution systémique', '1. Mettre en place des modifications structurelles<br>2. Développer une culture d\'optimisation<br>3. Mettre en place des outils de prévention', 3, 0, 1, NOW(), NOW()),

(324, 123, 960, '4', 'Excellence en résolution systémique atteinte', 'Félicitations ! Vous résolvez les problèmes de manière systémique.', 4, 0, 1, NOW(), NOW()),

(325, 123, 961, '1', 'Atteindre l\'excellence en adaptation contextuelle', '1. Mettre en place une analyse du contexte<br>2. Développer une culture de flexibilité<br>3. Mettre en place des stratégies d\'adaptation', 1, 0, 1, NOW(), NOW()),

(326, 123, 961, '2', 'Atteindre l\'excellence en adaptation contextuelle', '1. Optimiser les stratégies de survie<br>2. Mettre en place une analyse concurrentielle<br>3. Développer une culture de compétitivité', 2, 0, 1, NOW(), NOW()),

(327, 123, 961, '3', 'Atteindre l\'excellence en adaptation contextuelle', '1. Mettre en place une adaptation d\'offre<br>2. Développer une culture d\'innovation<br>3. Mettre en place des ajustements ciblés', 3, 0, 1, NOW(), NOW()),

(328, 123, 961, '4', 'Excellence en adaptation contextuelle atteinte', 'Félicitations ! Vous concevez des solutions innovantes adaptées au contexte.', 4, 0, 1, NOW(), NOW()),

(329, 123, 962, '1', 'Atteindre l\'excellence en innovation', '1. Mettre en place une culture d\'expérimentation<br>2. Développer des tests rapides<br>3. Mettre en place des validations continues', 1, 0, 1, NOW(), NOW()),

(330, 123, 962, '2', 'Atteindre l\'excellence en innovation', '1. Optimiser les tests sans critères<br>2. Mettre en place une évaluation qualitative<br>3. Développer une culture d\'amélioration', 2, 0, 1, NOW(), NOW()),

(331, 123, 962, '3', 'Atteindre l\'excellence en innovation', '1. Mettre en place des tests ciblés<br>2. Développer une expansion progressive<br>3. Mettre en place une culture d\'expérimentation', 3, 0, 1, NOW(), NOW()),

(332, 123, 962, '4', 'Excellence en innovation atteinte', 'Félicitations ! Vous innovez avec une méthodologie exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(333, 123, 963, '1', 'Atteindre l\'excellence en persévérance', '1. Mettre en place une culture de résilience<br>2. Développer des stratégies d\'adaptation<br>3. Mettre en place des plans de relance', 1, 0, 1, NOW(), NOW()),

(334, 123, 963, '2', 'Atteindre l\'excellence en persévérance', '1. Optimiser l\'attente stratégique<br>2. Mettre en place une analyse d\'opportunité<br>3. Développer une culture de patience', 2, 0, 1, NOW(), NOW()),

(335, 123, 963, '3', 'Atteindre l\'excellence en persévérance', '1. Mettre en place des démarrages progressifs<br>2. Développer une culture d\'initiative<br>3. Mettre en place des ajustements rapides', 3, 0, 1, NOW(), NOW()),

(336, 123, 963, '4', 'Excellence en persévérance atteinte', 'Félicitations ! Vous changez de méthode pour atteindre vos objectifs.', 4, 0, 1, NOW(), NOW()),

(337, 123, 964, '1', 'Atteindre l\'excellence en amélioration continue', '1. Mettre en place une culture de stabilité<br>2. Développer une analyse proactive<br>3. Mettre en place des améliorations préventives', 1, 0, 1, NOW(), NOW()),

(338, 123, 964, '2', 'Atteindre l\'excellence en amélioration continue', '1. Optimiser la réactivité client<br>2. Mettre en place une écoute active<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(339, 123, 964, '3', 'Atteindre l\'excellence en amélioration continue', '1. Mettre en place une recherche active<br>2. Développer une culture d\'optimisation<br>3. Mettre en place des améliorations continues', 3, 0, 1, NOW(), NOW()),

(340, 123, 964, '4', 'Excellence en amélioration continue atteinte', 'Félicitations ! Vous avez une culture d\'amélioration continue exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(341, 123, 965, '1', 'Atteindre l\'excellence en optimisation des méthodes', '1. Mettre en place une analyse des habitudes<br>2. Développer une culture de remise en question<br>3. Mettre en place des évaluations régulières', 1, 0, 1, NOW(), NOW()),

(342, 123, 965, '2', 'Atteindre l\'excellence en optimisation des méthodes', '1. Optimiser la réactivité aux problèmes<br>2. Mettre en place une analyse d\'efficacité<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(343, 123, 965, '3', 'Atteindre l\'excellence en optimisation des méthodes', '1. Mettre en place des arrêts réflexifs<br>2. Développer une culture d\'optimisation<br>3. Mettre en place des améliorations ciblées', 3, 0, 1, NOW(), NOW()),

(344, 123, 965, '4', 'Excellence en optimisation des méthodes atteinte', 'Félicitations ! Vous optimisez vos méthodes avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(345, 123, 966, '1', 'Atteindre l\'excellence en gestion des contraintes', '1. Mettre en place une analyse des moyens<br>2. Développer une culture de réalisme<br>3. Mettre en place des stratégies d\'arrêt', 1, 0, 1, NOW(), NOW()),

(346, 123, 966, '2', 'Atteindre l\'excellence en gestion des contraintes', '1. Optimiser les stratégies de survie<br>2. Mettre en place une analyse de coût<br>3. Développer une culture de résilience', 2, 0, 1, NOW(), NOW()),

(347, 123, 966, '3', 'Atteindre l\'excellence en gestion des contraintes', '1. Mettre en place des plans B<br>2. Développer une culture d\'adaptation<br>3. Mettre en place des stratégies de continuité', 3, 0, 1, NOW(), NOW()),

(348, 123, 966, '4', 'Excellence en gestion des contraintes atteinte', 'Félicitations ! Vous gérez les contraintes avec une créativité remarquable.', 4, 0, 1, NOW(), NOW()),

(349, 123, 967, '1', 'Atteindre l\'excellence en simplification', '1. Mettre en place une analyse des règles<br>2. Développer une culture de confiance<br>3. Mettre en place des simplifications progressives', 1, 0, 1, NOW(), NOW()),

(350, 123, 967, '2', 'Atteindre l\'excellence en simplification', '1. Optimiser l\'ajout de solutions<br>2. Mettre en place une analyse d\'efficacité<br>3. Développer une culture d\'optimisation', 2, 0, 1, NOW(), NOW()),

(351, 123, 967, '3', 'Atteindre l\'excellence en simplification', '1. Mettre en place un tri régulier<br>2. Développer une culture de suppression<br>3. Mettre en place des éliminations ciblées', 3, 0, 1, NOW(), NOW()),

(352, 123, 967, '4', 'Excellence en simplification atteinte', 'Félicitations ! Vous reconstruisez des méthodes simples et efficaces.', 4, 0, 1, NOW(), NOW()),

(353, 123, 968, '1', 'Atteindre l\'excellence en analyse d\'échec', '1. Mettre en place une analyse des réactions<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des stratégies d\'arrêt', 1, 0, 1, NOW(), NOW()),

(354, 123, 968, '2', 'Atteindre l\'excellence en analyse d\'échec', '1. Optimiser la réactivité aux échecs<br>2. Mettre en place une analyse rapide<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(355, 123, 968, '3', 'Atteindre l\'excellence en analyse d\'échec', '1. Mettre en place une écoute client<br>2. Développer une analyse des causes<br>3. Mettre en place des compréhensions profondes', 3, 0, 1, NOW(), NOW()),

(356, 123, 968, '4', 'Excellence en analyse d\'échec atteinte', 'Félicitations ! Vous analysez les échecs avec une intelligence exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(357, 123, 969, '1', 'Atteindre l\'excellence en proactivité', '1. Mettre en place une culture de veille<br>2. Développer une recherche de problèmes<br>3. Mettre en place des analyses préventives', 1, 0, 1, NOW(), NOW()),

(358, 123, 969, '2', 'Atteindre l\'excellence en proactivité', '1. Optimiser l\'observation concurrentielle<br>2. Mettre en place une analyse d\'adaptation<br>3. Développer une culture de réactivité', 2, 0, 1, NOW(), NOW()),

(359, 123, 969, '3', 'Atteindre l\'excellence en proactivité', '1. Mettre en place une recherche d\'optimisation<br>2. Développer une culture de réglage<br>3. Mettre en place des améliorations continues', 3, 0, 1, NOW(), NOW()),

(360, 123, 969, '4', 'Excellence en proactivité atteinte', 'Félicitations ! Vous cherchez constamment à simplifier pour accélérer.', 4, 0, 1, NOW(), NOW()),

-- Module 124: Fonction 10 - Maîtrise Financière

(361, 124, 970, '1', 'Atteindre l\'excellence en gestion financière', '1. Mettre en place une séparation claire<br>2. Développer une culture de formalisation<br>3. Mettre en place des règles financières', 1, 0, 1, NOW(), NOW()),

(362, 124, 970, '2', 'Atteindre l\'excellence en gestion financière', '1. Optimiser la régularisation<br>2. Mettre en place une planification financière<br>3. Développer une culture d\'organisation', 2, 0, 1, NOW(), NOW()),

(363, 124, 970, '3', 'Atteindre l\'excellence en gestion financière', '1. Mettre en place une rémunération encadrée<br>2. Développer une culture de transparence<br>3. Mettre en place des avances enregistrées', 3, 0, 1, NOW(), NOW()),

(364, 124, 970, '4', 'Excellence en gestion financière atteinte', 'Félicitations ! Vous gérez les flux financiers avec une rigueur exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(365, 124, 971, '1', 'Atteindre l\'excellence en respect des engagements', '1. Mettre en place une gestion des délais<br>2. Développer une culture de communication<br>3. Mettre en place des alertes de retard', 1, 0, 1, NOW(), NOW()),

(366, 124, 971, '2', 'Atteindre l\'excellence en respect des engagements', '1. Optimiser la gestion des risques<br>2. Mettre en place une analyse d\'anticipation<br>3. Développer une culture de prévention', 2, 0, 1, NOW(), NOW()),

(367, 124, 971, '3', 'Atteindre l\'excellence en respect des engagements', '1. Mettre en place une communication proactive<br>2. Développer une culture de solution<br>3. Mettre en place des plans de mitigation', 3, 0, 1, NOW(), NOW()),

(368, 124, 971, '4', 'Excellence en respect des engagements atteinte', 'Félicitations ! Vous sécurisez vos engagements avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(369, 124, 972, '1', 'Atteindre l\'excellence en conformité', '1. Mettre en place une analyse des sanctions<br>2. Développer une culture de régularisation<br>3. Mettre en place des plans de conformité', 1, 0, 1, NOW(), NOW()),

(370, 124, 972, '2', 'Atteindre l\'excellence en conformité', '1. Optimiser le respect conditionnel<br>2. Mettre en place une analyse de complexité<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(371, 124, 972, '3', 'Atteindre l\'excellence en conformité', '1. Mettre en place une culture de respect<br>2. Développer une autonomie de conformité<br>3. Mettre en place des obligations systématiques', 3, 0, 1, NOW(), NOW()),

(372, 124, 972, '4', 'Excellence en conformité atteinte', 'Félicitations ! Vous respectez vos obligations avec une intégrité remarquable.', 4, 0, 1, NOW(), NOW()),

(373, 124, 973, '1', 'Atteindre l\'excellence en cohérence personnelle', '1. Mettre en place une analyse des retards<br>2. Développer une culture de fiabilité<br>3. Mettre en place des règles personnelles', 1, 0, 1, NOW(), NOW()),

(374, 124, 973, '2', 'Atteindre l\'excellence en cohérence personnelle', '1. Optimiser la gestion des efforts<br>2. Mettre en place une analyse d\'exigence<br>3. Développer une culture de constance', 2, 0, 1, NOW(), NOW()),

(375, 124, 973, '3', 'Atteindre l\'excellence en cohérence personnelle', '1. Mettre en place une auto-discipline<br>2. Développer une culture d\'exigence<br>3. Mettre en place des standards élevés', 3, 0, 1, NOW(), NOW()),

(376, 124, 973, '4', 'Excellence en cohérence personnelle atteinte', 'Félicitations ! Vous donnez l\'exemple avec une discipline remarquable.', 4, 0, 1, NOW(), NOW()),

(377, 124, 974, '1', 'Atteindre l\'excellence en gestion des priorités', '1. Mettre en place une analyse des urgences<br>2. Développer une culture de planification<br>3. Mettre en place des objectifs personnels', 1, 0, 1, NOW(), NOW()),

(378, 124, 974, '2', 'Atteindre l\'excellence en gestion des priorités', '1. Optimiser la gestion des imprévus<br>2. Mettre en place une analyse de repriorisation<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(379, 124, 974, '3', 'Atteindre l\'excellence en gestion des priorités', '1. Mettre en place une réalisation ciblée<br>2. Développer une culture d\'exécution<br>3. Mettre en place des suivis d\'avancement', 3, 0, 1, NOW(), NOW()),

(380, 124, 974, '4', 'Excellence en gestion des priorités atteinte', 'Félicitations ! Vous réalisez vos actions importantes avec une maîtrise exceptionnelle.', 4, 0, 1, NOW(), NOW()),

(381, 124, 975, '1', 'Atteindre l\'excellence en transparence', '1. Mettre en place une culture d\'ouverture<br>2. Développer une communication honnête<br>3. Mettre en place des partages d\'information', 1, 0, 1, NOW(), NOW()),

(382, 124, 975, '2', 'Atteindre l\'excellence en transparence', '1. Optimiser le partage partiel<br>2. Mettre en place une communication équilibrée<br>3. Développer une culture de confiance', 2, 0, 1, NOW(), NOW()),

(383, 124, 975, '3', 'Atteindre l\'excellence en transparence', '1. Mettre en place une explication claire<br>2. Développer une culture de compréhension<br>3. Mettre en place des contextes partagés', 3, 0, 1, NOW(), NOW()),

(384, 124, 975, '4', 'Excellence en transparence atteinte', 'Félicitations ! Vous partagez les enjeux pour mobiliser votre équipe.', 4, 0, 1, NOW(), NOW()),

(385, 124, 976, '1', 'Atteindre l\'excellence en gestion des erreurs', '1. Mettre en place une culture de responsabilité<br>2. Développer une analyse personnelle<br>3. Mettre en place des reconnaissances d\'erreur', 1, 0, 1, NOW(), NOW()),

(386, 124, 976, '2', 'Atteindre l\'excellence en gestion des erreurs', '1. Optimiser la reconnaissance rapide<br>2. Mettre en place une analyse d\'impact<br>3. Développer une culture d\'action', 2, 0, 1, NOW(), NOW()),

(387, 124, 976, '3', 'Atteindre l\'excellence en gestion des erreurs', '1. Mettre en place une responsabilité claire<br>2. Développer une culture de correction<br>3. Mettre en place des résolutions immédiates', 3, 0, 1, NOW(), NOW()),

(388, 124, 976, '4', 'Excellence en gestion des erreurs atteinte', 'Félicitations ! Vous assumez publiquement et modifiez durablement votre fonctionnement.', 4, 0, 1, NOW(), NOW()),

(389, 124, 977, '1', 'Atteindre l\'excellence en réputation', '1. Mettre en place une analyse des retours<br>2. Développer une culture de fiabilité<br>3. Mettre en place des engagements respectés', 1, 0, 1, NOW(), NOW()),

(390, 124, 977, '2', 'Atteindre l\'excellence en réputation', '1. Optimiser la sérierité<br>2. Mettre en place une prévisibilité<br>3. Développer une culture de confiance', 2, 0, 1, NOW(), NOW()),

(391, 124, 977, '3', 'Atteindre l\'excellence en réputation', '1. Mettre en place un respect des engagements<br>2. Développer une culture de ténacité<br>3. Mettre en place des promesses tenues', 3, 0, 1, NOW(), NOW()),

(392, 124, 977, '4', 'Excellence en réputation atteinte', 'Félicitations ! Vos clients travaillent sereinement avec vous.', 4, 0, 1, NOW(), NOW()),

(393, 124, 978, '1', 'Atteindre l\'excellence en parole donnée', '1. Mettre en place une analyse des engagements<br>2. Développer une culture de réalisme<br>3. Mettre en place des promesses réalistes', 1, 0, 1, NOW(), NOW()),

(394, 124, 978, '2', 'Atteindre l\'excellence en parole donnée', '1. Optimiser l\'optimisme<br>2. Mettre en place une analyse des capacités<br>3. Développer une culture de prudence', 2, 0, 1, NOW(), NOW()),

(395, 124, 978, '3', 'Atteindre l\'excellence en parole donnée', '1. Mettre en place une vérification préalable<br>2. Développer une culture de rigueur<br>3. Mettre en place des engagements confirmés', 3, 0, 1, NOW(), NOW()),

(396, 124, 978, '4', 'Excellence en parole donnée atteinte', 'Félicitations ! Vous sécurisez vos capacités avant de promettre.', 4, 0, 1, NOW(), NOW()),

(397, 124, 979, '1', 'Atteindre l\'excellence en gestion du capital', '1. Mettre en place une analyse des besoins<br>2. Développer une culture de planification<br>3. Mettre en place des règles d\'utilisation', 1, 0, 1, NOW(), NOW()),

(398, 124, 979, '2', 'Atteindre l\'excellence en gestion du capital', '1. Optimiser la gestion des urgences<br>2. Mettre en place une analyse des priorités<br>3. Développer une culture d\'organisation', 2, 0, 1, NOW(), NOW()),

(399, 124, 979, '3', 'Atteindre l\'excellence en gestion du capital', '1. Mettre en place une distinction fonctionnelle<br>2. Développer une culture de séparation<br>3. Mettre en place des fonds dédiés', 3, 0, 1, NOW(), NOW()),

(400, 124, 979, '4', 'Excellence en gestion du capital atteinte', 'Félicitations ! Vous protégez systématiquement le capital de votre entreprise.', 4, 0, 1, NOW(), NOW()),

-- Module 125: Fonction 1 - STRATÉGIE

(401, 125, 980, '1', 'Atteindre l\'excellence en modèle économique', '1. Mettre en place une analyse de rentabilité<br>2. Développer une culture de vision<br>3. Mettre en place un modèle structuré', 1, 0, 1, NOW(), NOW()),

(402, 125, 980, '2', 'Atteindre l\'excellence en modèle économique', '1. Optimiser la formalisation<br>2. Mettre en place un partage d\'équipe<br>3. Développer une culture de documentation', 2, 0, 1, NOW(), NOW()),

(403, 125, 980, '3', 'Atteindre l\'excellence en modèle économique', '1. Mettre en place une structuration formelle<br>2. Développer une culture d\'analyse<br>3. Mettre en place des évaluations régulières', 3, 0, 1, NOW(), NOW()),

(404, 125, 980, '4', 'Excellence en modèle économique atteinte', 'Félicitations ! Votre modèle est visuel, évolutif et partagé.', 4, 0, 1, NOW(), NOW()),

(405, 125, 981, '1', 'Atteindre l\'excellence en vision stratégique', '1. Mettre en place une analyse de survie<br>2. Développer une culture de vision<br>3. Mettre en place des objectifs à long terme', 1, 0, 1, NOW(), NOW()),

(406, 125, 981, '2', 'Atteindre l\'excellence en vision stratégique', '1. Optimiser les objectifs court terme<br>2. Mettre en place une vision inspirante<br>3. Développer une culture d\'anticipation', 2, 0, 1, NOW(), NOW()),

(407, 125, 981, '3', 'Atteindre l\'excellence en vision stratégique', '1. Mettre en place une vision écrite<br>2. Développer une culture de décision<br>3. Mettre en place des arbitrages stratégiques', 3, 0, 1, NOW(), NOW()),

(408, 125, 981, '4', 'Excellence en vision stratégique atteinte', 'Félicitations ! Votre mission et vision servent de socle à chaque décision.', 4, 0, 1, NOW(), NOW()),

(409, 125, 982, '1', 'Atteindre l\'excellence en priorisation', '1. Mettre en place une analyse d\'arrivée<br>2. Développer une culture d\'urgence<br>3. Mettre en place des traitements séquentiels', 1, 0, 1, NOW(), NOW()),

(410, 125, 982, '2', 'Atteindre l\'excellence en priorisation', '1. Optimiser la distinction urgence/importance<br>2. Mettre en place une analyse de valeurs<br>3. Développer une culture de discernement', 2, 0, 1, NOW(), NOW()),

(411, 125, 982, '3', 'Atteindre l\'excellence en priorisation', '1. Mettre en place une discipline du non<br>2. Développer une culture de valeur ajoutée<br>3. Mettre en place des filtres stratégiques', 3, 0, 1, NOW(), NOW()),

(412, 125, 982, '4', 'Excellence en priorisation atteinte', 'Félicitations ! Vous concentrez votre énergie sur l\'essentiel.', 4, 0, 1, NOW(), NOW()),

(413, 125, 983, '1', 'Atteindre l\'excellence en planification', '1. Mettre en place une analyse des idées<br>2. Développer une culture de formalisation<br>3. Mettre en place des liens équipe', 1, 0, 1, NOW(), NOW()),

(414, 125, 983, '2', 'Atteindre l\'excellence en planification', '1. Optimiser les ordres ponctuels<br>2. Mettre en place une vision globale<br>3. Développer une culture de planification', 2, 0, 1, NOW(), NOW()),

(415, 125, 983, '3', 'Atteindre l\'excellence en planification', '1. Mettre en place un plan annuel<br>2. Développer une culture d\'adaptation<br>3. Mettre en place des ajustements réguliers', 3, 0, 1, NOW(), NOW()),

(416, 125, 983, '4', 'Excellence en planification atteinte', 'Félicitations ! Votre vision est traduite en objectifs SMART.', 4, 0, 1, NOW(), NOW()),

(417, 125, 984, '1', 'Atteindre l\'excellence en allocation des ressources', '1. Mettre en place une analyse des crises<br>2. Développer une culture de demande<br>3. Mettre en place des allocations réactives', 1, 0, 1, NOW(), NOW()),

(418, 125, 984, '2', 'Atteindre l\'excellence en allocation des ressources', '1. Optimiser le contrôle tactique<br>2. Mettre en place une analyse de confiance<br>3. Développer une culture de lâcher-prise', 2, 0, 1, NOW(), NOW()),

(419, 125, 984, '3', 'Atteindre l\'excellence en allocation des ressources', '1. Mettre en place des allocations ciblées<br>2. Développer une culture de rentabilité<br>3. Mettre en place des critères d\'impact', 3, 0, 1, NOW(), NOW()),

(420, 125, 984, '4', 'Excellence en allocation des ressources atteinte', 'Félicitations ! Vous allouez les ressources selon les priorités stratégiques.', 4, 0, 1, NOW(), NOW()),

(421, 125, 985, '1', 'Atteindre l\'excellence en pilotage par indicateurs', '1. Mettre en place une analyse formelle<br>2. Développer une culture de mesure<br>3. Mettre en place des indicateurs structurés', 1, 0, 1, NOW(), NOW()),

(422, 125, 985, '2', 'Atteindre l\'excellence en pilotage par indicateurs', '1. Optimiser le suivi financier<br>2. Mettre en place une analyse mensuelle<br>3. Développer une culture de pilotage', 2, 0, 1, NOW(), NOW()),

(423, 125, 985, '3', 'Atteindre l\'excellence en pilotage par indicateurs', '1. Mettre en place des indicateurs de production<br>2. Développer une culture de suivi<br>3. Mettre en place des mesures mensuelles', 3, 0, 1, NOW(), NOW()),

(424, 125, 985, '4', 'Excellence en pilotage par indicateurs atteinte', 'Félicitations ! Vous pilotez avec un tableau de bord équilibré.', 4, 0, 1, NOW(), NOW()),

(425, 125, 986, '1', 'Atteindre l\'excellence en suivi stratégique', '1. Mettre en place une analyse opérationnelle<br>2. Développer une culture de suivi<br>3. Mettre en place des réunions stratégiques', 1, 0, 1, NOW(), NOW()),

(426, 125, 986, '2', 'Atteindre l\'excellence en suivi stratégique', '1. Optimiser le suivi par problème<br>2. Mettre en place une analyse réactive<br>3. Développer une culture d\'anticipation', 2, 0, 1, NOW(), NOW()),

(427, 125, 986, '3', 'Atteindre l\'excellence en suivi stratégique', '1. Mettre en place des réunions mensuelles<br>2. Développer une culture de focalisation<br>3. Mettre en place des suivis stratégiques', 3, 0, 1, NOW(), NOW()),

(428, 125, 986, '4', 'Excellence en suivi stratégique atteinte', 'Félicitations ! Vos réunions restent focalisées sur les objectifs.', 4, 0, 1, NOW(), NOW()),

(429, 125, 987, '1', 'Atteindre l\'excellence en alignement stratégique', '1. Mettre en place une analyse des objectifs<br>2. Développer une culture de vision<br>3. Mettre en place des communications stratégiques', 1, 0, 1, NOW(), NOW()),

(430, 125, 987, '2', 'Atteindre l\'excellence en alignement stratégique', '1. Optimiser les explications annuelles<br>2. Mettre en place une stratégie partagée<br>3. Développer une culture d\'information', 2, 0, 1, NOW(), NOW()),

(431, 125, 987, '3', 'Atteindre l\'excellence en alignement stratégique', '1. Mettre en place une connaissance des cadres<br>2. Développer une culture de contribution<br>3. Mettre en place des liens employés', 3, 0, 1, NOW(), NOW()),

(432, 125, 987, '4', 'Excellence en alignement stratégique atteinte', 'Félicitations ! Chaque membre comprend sa contribution à la vision.', 4, 0, 1, NOW(), NOW()),

(433, 125, 988, '1', 'Atteindre l\'excellence en agilité stratégique', '1. Mettre en place une analyse des changements<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des veilles concurrentielles', 1, 0, 1, NOW(), NOW()),

(434, 125, 988, '2', 'Atteindre l\'excellence en agilité stratégique', '1. Optimiser la réactivité concurrentielle<br>2. Mettre en place une analyse d\'impact<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(435, 125, 988, '3', 'Atteindre l\'excellence en agilité stratégique', '1. Mettre en place des diagnostics SWOT<br>2. Développer une culture d\'analyse<br>3. Mettre en place des ajustements réguliers', 3, 0, 1, NOW(), NOW()),

(436, 125, 988, '4', 'Excellence en agilité stratégique atteinte', 'Félicitations ! Vous ajustez votre stratégie en continu.', 4, 0, 1, NOW(), NOW()),

(437, 125, 989, '1', 'Atteindre l\'excellence en posture de dirigeant', '1. Mettre en place une analyse du temps<br>2. Développer une culture de réflexion<br>3. Mettre en place des temps stratégiques', 1, 0, 1, NOW(), NOW()),

(438, 125, 989, '2', 'Atteindre l\'excellence en posture de dirigeant', '1. Optimiser la supervision technique<br>2. Mettre en place une analyse de valeur<br>3. Développer une culture de délégation', 2, 0, 1, NOW(), NOW()),

(439, 125, 989, '3', 'Atteindre l\'excellence en posture de dirigeant', '1. Mettre en place une délégation opérationnelle<br>2. Développer une culture de pilotage<br>3. Mettre en place des temps de réflexion', 3, 0, 1, NOW(), NOW()),

(440, 125, 989, '4', 'Excellence en posture de dirigeant atteinte', 'Félicitations ! Votre valeur est en dehors du système : vous donnez la direction.', 4, 0, 1, NOW(), NOW()),

-- Module 126: Fonction 2 - FINANCE

(441, 126, 990, '1', 'Atteindre l\'excellence en maîtrise financière', '1. Mettre en place une analyse annuelle<br>2. Développer une culture de compréhension<br>3. Mettre en place des outils de décryptage', 1, 0, 1, NOW(), NOW()),

(442, 126, 990, '2', 'Atteindre l\'excellence en maîtrise financière', '1. Optimiser l\'analyse de résultat<br>2. Mettre en place une analyse d\'équilibre<br>3. Développer une culture de compréhension', 2, 0, 1, NOW(), NOW()),

(443, 126, 990, '3', 'Atteindre l\'excellence en maîtrise financière', '1. Mettre en place une vérification régulière<br>2. Développer une culture de rentabilité<br>3. Mettre en place un suivi des fonds propres', 3, 0, 1, NOW(), NOW()),

(444, 126, 990, '4', 'Excellence en maîtrise financière atteinte', 'Félicitations ! Les documents financiers sont vos outils de pilotage.', 4, 0, 1, NOW(), NOW()),

(445, 126, 991, '1', 'Atteindre l\'excellence en rentabilité', '1. Mettre en place une analyse du travail<br>2. Développer une culture de rentabilité<br>3. Mettre en place des calculs de bénéfice', 1, 0, 1, NOW(), NOW()),

(446, 126, 991, '2', 'Atteindre l\'excellence en rentabilité', '1. Optimiser la connaissance du CA<br>2. Mettre en place une analyse des charges<br>3. Développer une culture d\'impact', 2, 0, 1, NOW(), NOW()),

(447, 126, 991, '3', 'Atteindre l\'excellence en rentabilité', '1. Mettre en place un seuil de rentabilité<br>2. Développer une culture d\'atteinte<br>3. Mettre en place des suivis annuels', 3, 0, 1, NOW(), NOW()),

(448, 126, 991, '4', 'Excellence en rentabilité atteinte', 'Félicitations ! Vous pilotez votre marge brute et optimisez vos coûts.', 4, 0, 1, NOW(), NOW()),

(449, 126, 992, '1', 'Atteindre l\'excellence en trésorerie', '1. Mettre en place une analyse bancaire<br>2. Développer une culture de paiement<br>3. Mettre en place des vérifications de salaires', 1, 0, 1, NOW(), NOW()),

(450, 126, 992, '2', 'Atteindre l\'excellence en trésorerie', '1. Optimiser la réactivité aux impasses<br>2. Mettre en place une analyse d\'urgence<br>3. Développer une culture d\'anticipation', 2, 0, 1, NOW(), NOW()),

(451, 126, 992, '3', 'Atteindre l\'excellence en trésorerie', '1. Mettre en place un plan de trésorerie<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des suivis mensuels', 3, 0, 1, NOW(), NOW()),

(452, 126, 992, '4', 'Excellence en trésorerie atteinte', 'Félicitations ! Vous anticipez les trous de trésorerie sur 6 mois.', 4, 0, 1, NOW(), NOW()),

(453, 126, 993, '1', 'Atteindre l\'excellence en BFR', '1. Mettre en place une analyse du BFR<br>2. Développer une culture de calcul<br>3. Mettre en place des stratégies de réduction', 1, 0, 1, NOW(), NOW()),

(454, 126, 993, '2', 'Atteindre l\'excellence en BFR', '1. Optimiser la stratégie de paiement<br>2. Mettre en place une analyse des délais<br>3. Développer une culture de réduction', 2, 0, 1, NOW(), NOW()),

(455, 126, 993, '3', 'Atteindre l\'excellence en BFR', '1. Mettre en place une mesure du BFR<br>2. Développer une culture de stabilisation<br>3. Mettre en place des suivis réguliers', 3, 0, 1, NOW(), NOW()),

(456, 126, 993, '4', 'Excellence en BFR atteinte', 'Félicitations ! Vous optimisez votre BFR avec acomptes et stocks réduits.', 4, 0, 1, NOW(), NOW()),

(457, 126, 994, '1', 'Atteindre l\'excellence en CAF', '1. Mettre en place une analyse bénéfice/banque<br>2. Développer une culture de distinction<br>3. Mettre en place des calculs de CAF', 1, 0, 1, NOW(), NOW()),

(458, 126, 994, '2', 'Atteindre l\'excellence en CAF', '1. Optimiser le calcul de la CAF<br>2. Mettre en place une analyse d\'utilisation<br>3. Développer une culture de remboursement', 2, 0, 1, NOW(), NOW()),

(459, 126, 994, '3', 'Atteindre l\'excellence en CAF', '1. Mettre en place une connaissance de la CAF<br>2. Développer une culture de sécurité<br>3. Mettre en place des remboursements sécurisés', 3, 0, 1, NOW(), NOW()),

(460, 126, 994, '4', 'Excellence en CAF atteinte', 'Félicitations ! Vous utilisez votre CAF pour investir sans danger.', 4, 0, 1, NOW(), NOW()),

(461, 126, 995, '1', 'Atteindre l\'excellence en endettement', '1. Mettre en place une analyse des garanties<br>2. Développer une culture de demande<br>3. Mettre en place des stratégies bancaires', 1, 0, 1, NOW(), NOW()),

(462, 126, 995, '2', 'Atteindre l\'excellence en endettement', '1. Optimiser les emprunts de nécessité<br>2. Mettre en place une analyse de position<br>3. Développer une culture de négociation', 2, 0, 1, NOW(), NOW()),

(463, 126, 995, '3', 'Atteindre l\'excellence en endettement', '1. Mettre en place un crédit d\'investissement<br>2. Développer une culture de règle 70%<br>3. Mettre en place des investissements durables', 3, 0, 1, NOW(), NOW()),

(464, 126, 995, '4', 'Excellence en endettement atteinte', 'Félicitations ! Vous pratiquez l\'endettement stratégique avec un rendement supérieur.', 4, 0, 1, NOW(), NOW()),

(465, 126, 996, '1', 'Atteindre l\'excellence en utilisation des liquidités', '1. Mettre en place une analyse des dépenses<br>2. Développer une culture de séparation<br>3. Mettre en place des achats raisonnés', 1, 0, 1, NOW(), NOW()),

(466, 126, 996, '2', 'Atteindre l\'excellence en utilisation des liquidités', '1. Optimiser l\'argent dormant<br>2. Mettre en place une analyse d\'investissement<br>3. Développer une culture d\'épargne', 2, 0, 1, NOW(), NOW()),

(467, 126, 996, '3', 'Atteindre l\'excellence en utilisation des liquidités', '1. Mettre en place un réinvestissement partiel<br>2. Développer une culture de maintenance<br>3. Mettre en place des outils de production', 3, 0, 1, NOW(), NOW()),

(468, 126, 996, '4', 'Excellence en utilisation des liquidités atteinte', 'Félicitations ! Vous optimisez vos liquidités avec une vision patrimoniale.', 4, 0, 1, NOW(), NOW()),

(469, 126, 997, '1', 'Atteindre l\'excellence en pilotage par indicateurs', '1. Mettre en place une analyse intuitive<br>2. Développer une culture de terrain<br>3. Mettre en place des décisions basées sur le ressenti', 1, 0, 1, NOW(), NOW()),

(470, 126, 997, '2', 'Atteindre l\'excellence en pilotage par indicateurs', '1. Optimiser les chiffres isolés<br>2. Mettre en place une vision globale<br>3. Développer une culture d\'indicateurs', 2, 0, 1, NOW(), NOW()),

(471, 126, 997, '3', 'Atteindre l\'excellence en pilotage par indicateurs', '1. Mettre en place un tableau de bord<br>2. Développer une culture de suivi mensuel<br>3. Mettre en place des indicateurs clés', 3, 0, 1, NOW(), NOW()),

(472, 126, 997, '4', 'Excellence en pilotage par indicateurs atteinte', 'Félicitations ! Vous ne décidez rien sans chiffres fiables.', 4, 0, 1, NOW(), NOW()),

(473, 126, 998, '1', 'Atteindre l\'excellence en planification financière', '1. Mettre en place une analyse mensuelle<br>2. Développer une culture de planification<br>3. Mettre en place des visions court terme', 1, 0, 1, NOW(), NOW()),

(474, 126, 998, '2', 'Atteindre l\'excellence en planification financière', '1. Optimiser le plan initial<br>2. Mettre en place une mise à jour régulière<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(475, 126, 998, '3', 'Atteindre l\'excellence en planification financière', '1. Mettre en place une vision 3 ans<br>2. Développer une culture de besoins<br>3. Mettre en place des ressources planifiées', 3, 0, 1, NOW(), NOW()),

(476, 126, 998, '4', 'Excellence en planification financière atteinte', 'Félicitations ! Vous avez une vision claire de vos besoins et ressources.', 4, 0, 1, NOW(), NOW()),

(477, 126, 999, '1', 'Atteindre l\'excellence en posture de dirigeant', '1. Mettre en place une analyse administrative<br>2. Développer une culture de suivi<br>3. Mettre en place des factures personnelles', 1, 0, 1, NOW(), NOW()),

(478, 126, 999, '2', 'Atteindre l\'excellence en posture de dirigeant', '1. Optimiser la supervision comptable<br>2. Mettre en place une analyse des résultats<br>3. Développer une culture d\'analyse', 2, 0, 1, NOW(), NOW()),

(479, 126, 999, '3', 'Atteindre l\'excellence en posture de dirigeant', '1. Mettre en place une délégation d\'exécution<br>2. Développer une culture d\'analyse<br>3. Mettre en place des analyses de marges', 3, 0, 1, NOW(), NOW()),

(480, 126, 999, '4', 'Excellence en posture de dirigeant atteinte', 'Félicitations ! Vous êtes un pilote stratégique avec un système financier autonome.', 4, 0, 1, NOW(), NOW()),

-- Module 127: Fonction 3 - JURIDIQUE

(481, 127, 1000, '1', 'Atteindre l\'excellence en gestion contractuelle', '1. Mettre en place une analyse des accords oraux<br>2. Développer une culture de formalisation<br>3. Mettre en place des documents écrits', 1, 0, 1, NOW(), NOW()),

(482, 127, 1000, '2', 'Atteindre l\'excellence en gestion contractuelle', '1. Optimiser les devis simples<br>2. Mettre en place des CGV formalisées<br>3. Développer une culture d\'achat', 2, 0, 1, NOW(), NOW()),

(483, 127, 1000, '3', 'Atteindre l\'excellence en gestion contractuelle', '1. Mettre en place des contrats signés<br>2. Développer une culture de bons de commande<br>3. Mettre en place des affaires importantes', 3, 0, 1, NOW(), NOW()),

(484, 127, 1000, '4', 'Excellence en gestion contractuelle atteinte', 'Félicitations ! Vos contrats incluent clauses de paiement et résolution de litiges.', 4, 0, 1, NOW(), NOW()),

(485, 127, 1001, '1', 'Atteindre l\'excellence en conformité fiscale et sociale', '1. Mettre en place une analyse des amendes<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des veilles réglementaires', 1, 0, 1, NOW(), NOW()),

(486, 127, 1001, '2', 'Atteindre l\'excellence en conformité fiscale et sociale', '1. Optimiser la délégation comptable<br>2. Mettre en place une analyse des échéances<br>3. Développer une culture de compréhension', 2, 0, 1, NOW(), NOW()),

(487, 127, 1001, '3', 'Atteindre l\'excellence en conformité fiscale et sociale', '1. Mettre en place un respect de l\'agenda<br>2. Développer une culture de ponctualité<br>3. Mettre en place des déclarations en temps', 3, 0, 1, NOW(), NOW()),

(488, 127, 1001, '4', 'Excellence en conformité fiscale et sociale atteinte', 'Félicitations ! Vous pratiquez l\'audit de régularité avec contrôle interne strict.', 4, 0, 1, NOW(), NOW()),

(489, 127, 1002, '1', 'Atteindre l\'excellence en intégrité financière', '1. Mettre en place une analyse des mélanges<br>2. Développer une culture de séparation<br>3. Mettre en place des règles personnelles', 1, 0, 1, NOW(), NOW()),

(490, 127, 1002, '2', 'Atteindre l\'excellence en intégrité financière', '1. Optimiser la confusion des flux<br>2. Mettre en place une analyse des salaires<br>3. Développer une culture de distinction', 2, 0, 1, NOW(), NOW()),

(491, 127, 1002, '3', 'Atteindre l\'excellence en intégrité financière', '1. Mettre en place des règles écrites<br>2. Développer une culture de suivi<br>3. Mettre en place des sorties contrôlées', 3, 0, 1, NOW(), NOW()),

(492, 127, 1002, '4', 'Excellence en intégrité financière atteinte', 'Félicitations ! Vous avez une séparation stricte avec traçabilité complète.', 4, 0, 1, NOW(), NOW()),

(493, 127, 1003, '1', 'Atteindre l\'excellence en gestion des dépendances', '1. Mettre en place une analyse des dépendances<br>2. Développer une culture de diversification<br>3. Mettre en place des solutions de repli', 1, 0, 1, NOW(), NOW()),

(494, 127, 1003, '2', 'Atteindre l\'excellence en gestion des dépendances', '1. Optimiser l\'analyse des risques<br>2. Mettre en place une stratégie d\'arrêt<br>3. Développer une culture d\'anticipation', 2, 0, 1, NOW(), NOW()),

(495, 127, 1003, '3', 'Atteindre l\'excellence en gestion des dépendances', '1. Mettre en place une identification des partenaires<br>2. Développer une culture de recherche<br>3. Mettre en place des alternatives', 3, 0, 1, NOW(), NOW()),

(496, 127, 1003, '4', 'Excellence en gestion des dépendances atteinte', 'Félicitations ! Vous diversifiez vos sources avec solutions de repli identifiées.', 4, 0, 1, NOW(), NOW()),

(497, 127, 1004, '1', 'Atteindre l\'excellence en gestion du personnel', '1. Mettre en place une analyse des embauches<br>2. Développer une culture de formalisation<br>3. Mettre en place des contrats écrits', 1, 0, 1, NOW(), NOW()),

(498, 127, 1004, '2', 'Atteindre l\'excellence en gestion du personnel', '1. Optimiser les contrats types<br>2. Mettre en place une analyse légale<br>3. Développer une culture de conformité', 2, 0, 1, NOW(), NOW()),

(499, 127, 1004, '3', 'Atteindre l\'excellence en gestion du personnel', '1. Mettre en place des contrats clairs<br>2. Développer une culture de spécification<br>3. Mettre en place des missions et rémunérations', 3, 0, 1, NOW(), NOW()),

(500, 127, 1004, '4', 'Excellence en gestion du personnel atteinte', 'Félicitations ! Chaque salarié a un contrat clair avec missions spécifiées.', 4, 0, 1, NOW(), NOW()),

(501, 127, 1005, '1', 'Atteindre l\'excellence en protection de la propriété intellectuelle', '1. Mettre en place une analyse des dépôts<br>2. Développer une culture de protection<br>3. Mettre en place des marques déposées', 1, 0, 1, NOW(), NOW()),

(502, 127, 1005, '2', 'Atteindre l\'excellence en protection de la propriété intellectuelle', '1. Optimiser la vérification de l\'antériorité<br>2. Mettre en place une analyse des autorités<br>3. Développer une culture de conformité', 2, 0, 1, NOW(), NOW()),

(503, 127, 1005, '3', 'Atteindre l\'excellence en protection de la propriété intellectuelle', '1. Mettre en place des marques déposées<br>2. Développer une culture de confidentialité<br>3. Mettre en place des accords NDA', 3, 0, 1, NOW(), NOW()),

(504, 127, 1005, '4', 'Excellence en protection de la propriété intellectuelle atteinte', 'Félicitations ! La protection est une arme avec brevets et veille constante.', 4, 0, 1, NOW(), NOW()),

(505, 127, 1006, '1', 'Atteindre l\'excellence en gestion immobilière', '1. Mettre en place une analyse des baux<br>2. Développer une culture de formalisation<br>3. Mettre en place des contrats écrits', 1, 0, 1, NOW(), NOW()),

(506, 127, 1006, '2', 'Atteindre l\'excellence en gestion immobilière', '1. Optimiser les droits de renouvellement<br>2. Mettre en place une analyse de cession<br>3. Développer une culture de connaissance', 2, 0, 1, NOW(), NOW()),

(507, 127, 1006, '3', 'Atteindre l\'excellence en gestion immobilière', '1. Mettre en place une maîtrise des conditions<br>2. Développer une culture d\'entretien<br>3. Mettre en place des révisions de loyer', 3, 0, 1, NOW(), NOW()),

(508, 127, 1006, '4', 'Excellence en gestion immobilière atteinte', 'Félicitations ! Vous maîtrisez parfaitement votre bail commercial.', 4, 0, 1, NOW(), NOW()),

(509, 127, 1007, '1', 'Atteindre l\'excellence en gestion sociale', '1. Mettre en place une analyse de l\'ambiance<br>2. Développer une culture d\'écoute<br>3. Mettre en place des suivis de production', 1, 0, 1, NOW(), NOW()),

(510, 127, 1007, '2', 'Atteindre l\'excellence en gestion sociale', '1. Optimiser l\'ignorance des tensions<br>2. Mettre en place une analyse des rumeurs<br>3. Développer une culture d\'autonomie', 2, 0, 1, NOW(), NOW()),

(511, 127, 1007, '3', 'Atteindre l\'excellence en gestion sociale', '1. Mettre en place une conscience des risques<br>2. Développer une culture de prévention<br>3. Mettre en place des plans anti-stress', 3, 0, 1, NOW(), NOW()),

(512, 127, 1007, '4', 'Excellence en gestion sociale atteinte', 'Félicitations ! Vous avez une politique de tolérance zéro avec veille sur la santé mentale.', 4, 0, 1, NOW(), NOW()),

(513, 127, 1008, '1', 'Atteindre l\'excellence en gouvernance', '1. Mettre en place une analyse des décisions<br>2. Développer une culture de formalisme<br>3. Mettre en place des clarifications', 1, 0, 1, NOW(), NOW()),

(514, 127, 1008, '2', 'Atteindre l\'excellence en gouvernance', '1. Optimiser les traitements avec proches<br>2. Mettre en place une analyse de mise en concurrence<br>3. Développer une culture de règles', 2, 0, 1, NOW(), NOW()),

(515, 127, 1008, '3', 'Atteindre l\'excellence en gouvernance', '1. Mettre en place des décisions formalisées<br>2. Développer une culture de transparence<br>3. Mettre en place des comptes-rendus', 3, 0, 1, NOW(), NOW()),

(516, 127, 1008, '4', 'Excellence en gouvernance atteinte', 'Félicitations ! Vous avez une gouvernance structurée avec PV et mentors.', 4, 0, 1, NOW(), NOW()),

(517, 127, 1009, '1', 'Atteindre l\'excellence en formalisation des processus', '1. Mettre en place une analyse des règles mentales<br>2. Développer une culture d\'écriture<br>3. Mettre en place des procédures documentées', 1, 0, 1, NOW(), NOW()),

(518, 127, 1009, '2', 'Atteindre l\'excellence en formalisation des processus', '1. Optimiser l\'accessibilité des notes<br>2. Mettre en place une analyse collaborative<br>3. Développer une culture de partage', 2, 0, 1, NOW(), NOW()),

(519, 127, 1009, '3', 'Atteindre l\'excellence en formalisation des processus', '1. Mettre en place des procédures simples<br>2. Développer une culture de tâches critiques<br>3. Mettre en place des processus formalisés', 3, 0, 1, NOW(), NOW()),

(520, 127, 1009, '4', 'Excellence en formalisation des processus atteinte', 'Félicitations ! Vous avez un manuel de procédures clair et traçable.', 4, 0, 1, NOW(), NOW()),

-- Module 128: Fonction 4 - RESSOURCES HUMAINES

(521, 128, 1100, '1', 'Atteindre l\'excellence en gestion des besoins RH', '1. Mettre en place une analyse de l\'urgence<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des recrutements planifiés', 1, 0, 1, NOW(), NOW()),

(522, 128, 1100, '2', 'Atteindre l\'excellence en gestion des besoins RH', '1. Optimiser la définition des tâches<br>2. Mettre en place une analyse des annonces<br>3. Développer une culture de clarté', 2, 0, 1, NOW(), NOW()),

(523, 128, 1100, '3', 'Atteindre l\'excellence en gestion des besoins RH', '1. Mettre en place des fiches de poste<br>2. Développer une culture de missions<br>3. Mettre en place des compétences listées', 3, 0, 1, NOW(), NOW()),

(524, 128, 1100, '4', 'Excellence en gestion des besoins RH atteinte', 'Félicitations ! Votre stratégie RH est alignée sur votre business plan.', 4, 0, 1, NOW(), NOW()),

(525, 128, 1101, '1', 'Atteindre l\'excellence en processus de recrutement', '1. Mettre en place une analyse intuitive<br>2. Développer une culture de recommandation<br>3. Mettre en place des tests précis', 1, 0, 1, NOW(), NOW()),

(526, 128, 1101, '2', 'Atteindre l\'excellence en processus de recrutement', '1. Optimiser les entretiens classiques<br>2. Mettre en place une grille de questions<br>3. Développer une culture d\'objectivité', 2, 0, 1, NOW(), NOW()),

(527, 128, 1101, '3', 'Atteindre l\'excellence en processus de recrutement', '1. Mettre en place des entretiens structurés<br>2. Développer une culture de tests<br>3. Mettre en place des aptitudes techniques', 3, 0, 1, NOW(), NOW()),

(528, 128, 1101, '4', 'Excellence en processus de recrutement atteinte', 'Félicitations ! Votre processus complet valide l\'adéquation aux valeurs.', 4, 0, 1, NOW(), NOW()),

(529, 128, 1102, '1', 'Atteindre l\'excellence en intégration', '1. Mettre en place une analyse d\'immédiat<br>2. Développer une culture d\'apprentissage<br>3. Mettre en place des formations sur le tas', 1, 0, 1, NOW(), NOW()),

(530, 128, 1102, '2', 'Atteindre l\'excellence en intégration', '1. Optimiser les livrets d\'accueil<br>2. Mettre en place une présentation d\'équipe<br>3. Développer une culture d\'accueil', 2, 0, 1, NOW(), NOW()),

(531, 128, 1102, '3', 'Atteindre l\'excellence en intégration', '1. Mettre en place un parcours d\'intégration<br>2. Développer une culture de parrainage<br>3. Mettre en place des formations opérationnelles', 3, 0, 1, NOW(), NOW()),

(532, 128, 1102, '4', 'Excellence en intégration atteinte', 'Félicitations ! Vous avez un parcours d\'intégration complet avec suivi.', 4, 0, 1, NOW(), NOW()),

(533, 128, 1103, '1', 'Atteindre l\'excellence en organisation des rôles', '1. Mettre en place une analyse de la polyvalence<br>2. Développer une culture de clarté<br>3. Mettre en place des consignes écrites', 1, 0, 1, NOW(), NOW()),

(534, 128, 1103, '2', 'Atteindre l\'excellence en organisation des rôles', '1. Optimiser l\'organigramme<br>2. Mettre en place une mise à jour régulière<br>3. Développer une culture de responsabilités', 2, 0, 1, NOW(), NOW()),

(535, 128, 1103, '3', 'Atteindre l\'excellence en organisation des rôles', '1. Mettre en place des fiches de fonction<br>2. Développer une culture de missions<br>3. Mettre en place des rapports hiérarchiques', 3, 0, 1, NOW(), NOW()),

(536, 128, 1103, '4', 'Excellence en organisation des rôles atteinte', 'Félicitations ! Votre structure est organisée par fonctions clés.', 4, 0, 1, NOW(), NOW()),

(537, 128, 1104, '1', 'Atteindre l\'excellence en fixation d\'objectifs', '1. Mettre en place une analyse des priorités<br>2. Développer une culture de stabilité<br>3. Mettre en place des objectifs quotidiens', 1, 0, 1, NOW(), NOW()),

(538, 128, 1104, '2', 'Atteindre l\'excellence en fixation d\'objectifs', '1. Optimiser les consignes globales<br>2. Mettre en place une analyse de mesure<br>3. Développer une culture d\'excellence', 2, 0, 1, NOW(), NOW()),

(539, 128, 1104, '3', 'Atteindre l\'excellence en fixation d\'objectifs', '1. Mettre en place des objectifs SMART<br>2. Développer une culture d\'entretien<br>3. Mettre en place des performances annuelles', 3, 0, 1, NOW(), NOW()),

(540, 128, 1104, '4', 'Excellence en fixation d\'objectifs atteinte', 'Félicitations ! Vous fixez des objectifs SMART avec suivi régulier.', 4, 0, 1, NOW(), NOW()),

(541, 128, 1105, '1', 'Atteindre l\'excellence en système d\'évaluation', '1. Mettre en place une analyse des remarques<br>2. Développer une culture de réactivité<br>3. Mettre en place des systèmes formels', 1, 0, 1, NOW(), NOW()),

(542, 128, 1105, '2', 'Atteindre l\'excellence en système d\'évaluation', '1. Optimiser les entretiens annuels<br>2. Mettre en place une analyse de corvée<br>3. Développer une culture d\'échange', 2, 0, 1, NOW(), NOW()),

(543, 128, 1105, '3', 'Atteindre l\'excellence en système d\'évaluation', '1. Mettre en place des échanges sur succès<br>2. Développer une culture de compétences<br>3. Mettre en place des besoins identifiés', 3, 0, 1, NOW(), NOW()),

(544, 128, 1105, '4', 'Excellence en système d\'évaluation atteinte', 'Félicitations ! Vous pratiquez le feedback continu comme coach.', 4, 0, 1, NOW(), NOW()),

(545, 128, 1106, '1', 'Atteindre l\'excellence en délégation', '1. Mettre en place une analyse du micro-management<br>2. Développer une culture de confiance<br>3. Mettre en place des tâches partagées', 1, 0, 1, NOW(), NOW()),

(546, 128, 1106, '2', 'Atteindre l\'excellence en délégation', '1. Optimiser la délégation inverse<br>2. Mettre en place une analyse des problèmes<br>3. Développer une culture de reprise', 2, 0, 1, NOW(), NOW()),

(547, 128, 1106, '3', 'Atteindre l\'excellence en délégation', '1. Mettre en place des missions entières<br>2. Développer une culture de qualification<br>3. Mettre en place des contrôles réguliers', 3, 0, 1, NOW(), NOW()),

(548, 128, 1106, '4', 'Excellence en délégation atteinte', 'Félicitations ! Vous déléguez avec confiance et contrôle intelligent.', 4, 0, 1, NOW(), NOW()),

(549, 128, 1107, '1', 'Atteindre l\'excellence en développement des compétences', '1. Mettre en place une analyse des compétences figées<br>2. Développer une culture d\'apprentissage<br>3. Mettre en place des formations continues', 1, 0, 1, NOW(), NOW()),

(550, 128, 1107, '2', 'Atteindre l\'excellence en développement des compétences', '1. Optimiser les formations obligatoires<br>2. Mettre en place une analyse d\'outils<br>3. Développer une culture d\'adaptation', 2, 0, 1, NOW(), NOW()),

(551, 128, 1107, '3', 'Atteindre l\'excellence en développement des compétences', '1. Mettre en place un plan de formation<br>2. Développer une culture d\'évaluation<br>3. Mettre en place des lacunes identifiées', 3, 0, 1, NOW(), NOW()),

(552, 128, 1107, '4', 'Excellence en développement des compétences atteinte', 'Félicitations ! Vous favorisez une culture d\'apprentissage permanent.', 4, 0, 1, NOW(), NOW()),

(553, 128, 1108, '1', 'Atteindre l\'excellence en gestion des performances', '1. Mettre en place une analyse des conflits<br>2. Développer une culture de tolérance<br>3. Mettre en place des réactions méthodiques', 1, 0, 1, NOW(), NOW()),

(554, 128, 1108, '2', 'Atteindre l\'excellence en gestion des performances', '1. Optimiser les reproches informelles<br>2. Mettre en place une analyse d\'amélioration<br>3. Développer une culture de formalisation', 2, 0, 1, NOW(), NOW()),

(555, 128, 1108, '3', 'Atteindre l\'excellence en gestion des performances', '1. Mettre en place des entretiens de recadrage<br>2. Développer une culture de factuel<br>3. Mettre en place des délais de progression', 3, 0, 1, NOW(), NOW()),

(556, 128, 1108, '4', 'Excellence en gestion des performances atteinte', 'Félicitations ! Vous menez des entretiens factuels avec délais précis.', 4, 0, 1, NOW(), NOW()),

(557, 128, 1109, '1', 'Atteindre l\'excellence en organisation responsable', '1. Mettre en place une analyse pyramidale<br>2. Développer une culture d\'autonomie<br>3. Mettre en place des équipes passives', 1, 0, 1, NOW(), NOW()),

(558, 128, 1109, '2', 'Atteindre l\'excellence en organisation responsable', '1. Optimiser la motivation par pression<br>2. Mettre en place une analyse de primes<br>3. Développer une culture d\'incitation', 2, 0, 1, NOW(), NOW()),

(559, 128, 1109, '3', 'Atteindre l\'excellence en organisation responsable', '1. Mettre en place une prise d\'initiative<br>2. Développer une culture de reconnaissance<br>3. Mettre en place des réussites publiques', 3, 0, 1, NOW(), NOW()),

(560, 128, 1109, '4', 'Excellence en organisation responsable atteinte', 'Félicitations ! Vous avez bâti une équipe autonome et responsable.', 4, 0, 1, NOW(), NOW()),

-- Module 129: Fonction 5 - MARKETING

(561, 129, 1200, '1', 'Atteindre l\'excellence en connaissance du marché', '1. Mettre en place une analyse des commandes<br>2. Développer une culture d\'observation<br>3. Mettre en place une veille concurrentielle', 1, 0, 1, NOW(), NOW()),

(562, 129, 1200, '2', 'Atteindre l\'excellence en connaissance du marché', '1. Optimiser les discussions clients<br>2. Mettre en place une analyse des tendances<br>3. Développer une culture de données', 2, 0, 1, NOW(), NOW()),

(563, 129, 1200, '3', 'Atteindre l\'excellence en connaissance du marché', '1. Mettre en place des analyses régulières<br>2. Développer une culture d\'ajustement<br>3. Mettre en place des opportunités/menaces', 3, 0, 1, NOW(), NOW()),

(564, 129, 1200, '4', 'Excellence en connaissance du marché atteinte', 'Félicitations ! Vous pratiquez une veille constante pour anticiper les besoins.', 4, 0, 1, NOW(), NOW()),

(565, 129, 1201, '1', 'Atteindre l\'excellence en différenciation', '1. Mettre en place une analyse du hasard<br>2. Développer une culture d\'originalité<br>3. Mettre en place des stratégies prix', 1, 0, 1, NOW(), NOW()),

(566, 129, 1201, '2', 'Atteindre l\'excellence en différenciation', '1. Optimiser le contact sympathique<br>2. Mettre en place une analyse technique<br>3. Développer une culture de qualité', 2, 0, 1, NOW(), NOW()),

(567, 129, 1201, '3', 'Atteindre l\'excellence en différenciation', '1. Mettre en place une qualité supérieure<br>2. Développer une culture de robustesse<br>3. Mettre en place des produits améliorés', 3, 0, 1, NOW(), NOW()),

(568, 129, 1201, '4', 'Excellence en différenciation atteinte', 'Félicitations ! Votre positionnement est clair et tranché.', 4, 0, 1, NOW(), NOW()),

(569, 129, 1202, '1', 'Atteindre l\'excellence en segmentation', '1. Mettre en place une analyse de tous les clients<br>2. Développer une culture de distinction<br>3. Mettre en place des offres identiques', 1, 0, 1, NOW(), NOW()),

(570, 129, 1202, '2', 'Atteindre l\'excellence en segmentation', '1. Optimiser les types de clients<br>2. Mettre en place une analyse du discours<br>3. Développer une culture de spécificité', 2, 0, 1, NOW(), NOW()),

(571, 129, 1202, '3', 'Atteindre l\'excellence en segmentation', '1. Mettre en place des critères précis<br>2. Développer une culture de découpage<br>3. Mettre en place des segments géographiques', 3, 0, 1, NOW(), NOW()),

(572, 129, 1202, '4', 'Excellence en segmentation atteinte', 'Félicitations ! Vous segmentez avec critères précis et comportements.', 4, 0, 1, NOW(), NOW()),

(573, 129, 1203, '1', 'Atteindre l\'excellence en proposition de valeur', '1. Mettre en place une analyse du produit standard<br>2. Développer une culture de disponibilité<br>3. Mettre en place des offres personnalisées', 1, 0, 1, NOW(), NOW()),

(574, 129, 1203, '2', 'Atteindre l\'excellence en proposition de valeur', '1. Optimiser le bénéfice clair<br>2. Mettre en place une analyse concurrentielle<br>3. Développer une culture de différenciation', 2, 0, 1, NOW(), NOW()),

(575, 129, 1203, '3', 'Atteindre l\'excellence en proposition de valeur', '1. Mettre en place une valeur ajoutée claire<br>2. Développer une culture de bénéfices<br>3. Mettre en place des problèmes précis', 3, 0, 1, NOW(), NOW()),

(576, 129, 1203, '4', 'Excellence en proposition de valeur atteinte', 'Félicitations ! Vous avez un positionnement Océan Bleu innovant.', 4, 0, 1, NOW(), NOW()),

(577, 129, 1204, '1', 'Atteindre l\'excellence en stratégie de prix', '1. Mettre en place une analyse concurrentielle<br>2. Développer une culture d\'alignement<br>3. Mettre en place des marges rentables', 1, 0, 1, NOW(), NOW()),

(578, 129, 1204, '2', 'Atteindre l\'excellence en stratégie de prix', '1. Optimiser les prix par coûts<br>2. Mettre en place une analyse psychologique<br>3. Développer une culture de valeur', 2, 0, 1, NOW(), NOW()),

(579, 129, 1204, '3', 'Atteindre l\'excellence en stratégie de prix', '1. Mettre en place trois variables prix<br>2. Développer une culture de marché<br>3. Mettre en place une valeur perçue', 3, 0, 1, NOW(), NOW()),

(580, 129, 1204, '4', 'Excellence en stratégie de prix atteinte', 'Félicitations ! Vous optimisez vos prix avec analyse psychologique complète.', 4, 0, 1, NOW(), NOW()),

(581, 129, 1205, '1', 'Atteindre l\'excellence en communication marketing', '1. Mettre en place une analyse du discours technique<br>2. Développer une culture de simplicité<br>3. Mettre en place des messages clairs', 1, 0, 1, NOW(), NOW()),

(582, 129, 1205, '2', 'Atteindre l\'excellence en communication marketing', '1. Optimiser la présentation factuelle<br>2. Mettre en place une analyse d\'entreprise<br>3. Développer une culture d\'histoire', 2, 0, 1, NOW(), NOW()),

(583, 129, 1205, '3', 'Atteindre l\'excellence en communication marketing', '1. Mettre en place des messages clés<br>2. Développer une culture d\'impact<br>3. Mettre en place des phrases chocs', 3, 0, 1, NOW(), NOW()),

(584, 129, 1205, '4', 'Excellence en communication marketing atteinte', 'Félicitations ! Vous racontez des histoires qui captivent immédiatement.', 4, 0, 1, NOW(), NOW()),

(585, 129, 1206, '1', 'Atteindre l\'excellence en adaptation de l\'offre', '1. Mettre en place une analyse de l\'offre existante<br>2. Développer une culture d\'adaptation<br>3. Mettre en place des ajustements client', 1, 0, 1, NOW(), NOW()),

(586, 129, 1206, '2', 'Atteindre l\'excellence en adaptation de l\'offre', '1. Optimifier la perte de clients<br>2. Mettre en place une analyse d\'amélioration<br>3. Développer une culture de réactivité', 2, 0, 1, NOW(), NOW()),

(587, 129, 1206, '3', 'Atteindre l\'excellence en adaptation de l\'offre', '1. Mettre en place des avis réguliers<br>2. Développer une culture d\'amélioration<br>3. Mettre en place des services optimisés', 3, 0, 1, NOW(), NOW()),

(588, 129, 1206, '4', 'Excellence en adaptation de l\'offre atteinte', 'Félicitations ! Vous innovez en continu avec une veille active.', 4, 0, 1, NOW(), NOW()),

(589, 129, 1207, '1', 'Atteindre l\'excellence en acquisition client', '1. Mettre en place une analyse du bouche-à-oreille<br>2. Développer une culture de contrôle<br>3. Mettre en place des canaux directs', 1, 0, 1, NOW(), NOW()),

(590, 129, 1207, '2', 'Atteindre l\'excellence en acquisition client', '1. Optimiser les réseaux sociaux<br>2. Mettre en place une analyse de cohérence<br>3. Développer une culture d\'intégration', 2, 0, 1, NOW(), NOW()),

(591, 129, 1207, '3', 'Atteindre l\'excellence en acquisition client', '1. Mettre en place un message cohérent<br>2. Développer une culture d\'uniformité<br>3. Mettre en place des supports multiples', 3, 0, 1, NOW(), NOW()),

(592, 129, 1207, '4', 'Excellence en acquisition client atteinte', 'Félicitations ! Vous avez un canal d\'acquisition qui génère des prospects.', 4, 0, 1, NOW(), NOW()),

(593, 129, 1208, '1', 'Atteindre l\'excellence en image de marque', '1. Mettre en place une analyse des tâches<br>2. Développer une culture de projection<br>3. Mettre en place des images claires', 1, 0, 1, NOW(), NOW()),

(594, 129, 1208, '2', 'Atteindre l\'excellence en image de marque', '1. Optimiser le logo et slogan<br>2. Mettre en place une analyse des valeurs<br>3. Développer une culture de profondeur', 2, 0, 1, NOW(), NOW()),

(595, 129, 1208, '3', 'Atteindre l\'excellence en image de marque', '1. Mettre en place une compréhension client<br>2. Développer une culture de satisfaction<br>3. Mettre en place des rôles définis', 3, 0, 1, NOW(), NOW()),

(596, 129, 1208, '4', 'Excellence en image de marque atteinte', 'Félicitations ! Vos collaborateurs sont des ambassadeurs de la marque.', 4, 0, 1, NOW(), NOW()),

(597, 129, 1209, '1', 'Atteindre l\'excellence en pilotage marketing', '1. Mettre en place une analyse du bricolage<br>2. Développer une culture d\'économie<br>3. Mettre en place des publicités internes', 1, 0, 1, NOW(), NOW()),

(598, 129, 1209, '2', 'Atteindre l\'excellence en pilotage marketing', '1. Optimiser la validation des mots<br>2. Mettre en place une analyse stratégique<br>3. Développer une culture d\'ensemble', 2, 0, 1, NOW(), NOW()),

(599, 129, 1209, '3', 'Atteindre l\'excellence en pilotage marketing', '1. Mettre en place des objectifs SMART<br>2. Développer une culture de délégation<br>3. Mettre en place une création technique', 3, 0, 1, NOW(), NOW()),

(600, 129, 1209, '4', 'Excellence en pilotage marketing atteinte', 'Félicitations ! Vous avez bâti un système d\'attraction autonome.', 4, 0, 1, NOW(), NOW()),

-- Module 130: Fonction 6 - COMMUNICATION

(601, 130, 1210, '1', 'Atteindre l\'excellence en circulation de l\'information', '1. Mettre en place une analyse des rumeurs<br>2. Développer une culture de communication<br>3. Mettre en place des réponses proactives', 1, 0, 1, NOW(), NOW()),

(602, 130, 1210, '2', 'Atteindre l\'excellence en circulation de l\'information', '1. Optimiser les rencontres croisées<br>2. Mettre en place une analyse de distorsion<br>3. Développer une culture de clarté', 2, 0, 1, NOW(), NOW()),

(603, 130, 1210, '3', 'Atteindre l\'excellence en circulation de l\'information', '1. Mettre en place des réunions fixes<br>2. Développer une culture de formalisation<br>3. Mettre en place des objectifs partagés', 3, 0, 1, NOW(), NOW()),

(604, 130, 1210, '4', 'Excellence en circulation de l\'information atteinte', 'Félicitations ! Vos flux sont structurés pour une décision rapide.', 4, 0, 1, NOW(), NOW()),

(605, 130, 1211, '1', 'Atteindre l\'excellence en clarté des consignes', '1. Mettre en place une analyse des ordres vagues<br>2. Développer une culture de précision<br>3. Mettre en place des délais définis', 1, 0, 1, NOW(), NOW()),

(606, 130, 1211, '2', 'Atteindre l\'excellence en clarté des consignes', '1. Optimiser les consignes orales<br>2. Mettre en place une analyse du sens<br>3. Développer une culture d\'explication', 2, 0, 1, NOW(), NOW()),

(607, 130, 1211, '3', 'Atteindre l\'excellence en clarté des consignes', '1. Mettre en place des objectifs clairs<br>2. Développer une culture de méthode<br>3. Mettre en place des 5W1H', 3, 0, 1, NOW(), NOW()),

(608, 130, 1211, '4', 'Excellence en clarté des consignes atteinte', 'Félicitations ! Vos consignes sont SMART et reliées à la vision.', 4, 0, 1, NOW(), NOW()),

(609, 130, 1212, '1', 'Atteindre l\'excellence en boucles de contrôle', '1. Mettre en place une analyse des problèmes graves<br>2. Développer une culture de réactivité<br>3. Mettre en place des communications pompier', 1, 0, 1, NOW(), NOW()),

(610, 130, 1212, '2', 'Atteindre l\'excellence en boucles de contrôle', '1. Optimiser les nouvelles régulières<br>2. Mettre en place une analyse de suivi<br>3. Développer une culture de méthode', 2, 0, 1, NOW(), NOW()),

(611, 130, 1212, '3', 'Atteindre l\'excellence en boucles de contrôle', '1. Mettre en place des reportings réguliers<br>2. Développer une culture d\'avancement<br>3. Mettre en place des indicateurs suivis', 3, 0, 1, NOW(), NOW()),

(612, 130, 1212, '4', 'Excellence en boucles de contrôle atteinte', 'Félicitations ! Vous avez des boucles complètes avec feedback et ajustement.', 4, 0, 1, NOW(), NOW()),

(613, 130, 1213, '1', 'Atteindre l\'excellence en écoute et présence', '1. Mettre en place une analyse du bureau<br>2. Développer une culture d\'ouverture<br>3. Mettre en place des préoccupations réelles', 1, 0, 1, NOW(), NOW()),

(614, 130, 1213, '2', 'Atteindre l\'excellence en écoute et présence', '1. Optimiser la porte ouverte<br>2. Mettre en place une analyse d\'attente<br>3. Développer une culture d\'information', 2, 0, 1, NOW(), NOW()),

(615, 130, 1213, '3', 'Atteindre l\'excellence en écoute et présence', '1. Mettre en place une écoute empathique<br>2. Développer une culture de reformulation<br>3. Mettre en place des validations de compréhension', 3, 0, 1, NOW(), NOW()),

(616, 130, 1213, '4', 'Excellence en écoute et présence atteinte', 'Félicitations ! Vous circulez sur le terrain pour désamorcer les tensions.', 4, 0, 1, NOW(), NOW()),

(617, 130, 1214, '1', 'Atteindre l\'excellence en image de marque', '1. Mettre en place une analyse du bouche-à-oreille<br>2. Développer une culture de communication<br>3. Mettre en place des politiques actives', 1, 0, 1, NOW(), NOW()),

(618, 130, 1214, '2', 'Atteindre l\'excellence en image de marque', '1. Optimiser les produits/prix<br>2. Mettre en place une analyse d\'identité<br>3. Développer une culture de valeur', 2, 0, 1, NOW(), NOW()),

(619, 130, 1214, '3', 'Atteindre l\'excellence en image de marque', '1. Mettre en place une communication cohérente<br>2. Développer une culture de savoir-faire<br>3. Mettre en place des supports unifiés', 3, 0, 1, NOW(), NOW()),

(620, 130, 1214, '4', 'Excellence en image de marque atteinte', 'Félicitations ! Votre communication valorise votre différenciation.', 4, 0, 1, NOW(), NOW()),

(621, 130, 1215, '1', 'Atteindre l\'excellence en pitch d\'ambassadeur', '1. Mettre en place une analyse des détails techniques<br>2. Développer une culture de simplicité<br>3. Mettre en place des messages captivants', 1, 0, 1, NOW(), NOW()),

(622, 130, 1215, '2', 'Atteindre l\'excellence en pitch d\'ambassadeur', '1. Optimiser la présentation classique<br>2. Mettre en place une analyse d\'historique<br>3. Développer une culture de produits', 2, 0, 1, NOW(), NOW()),

(623, 130, 1215, '3', 'Atteindre l\'excellence en pitch d\'ambassadeur', '1. Mettre en place un elevator pitch<br>2. Développer une culture de bénéfice<br>3. Mettre en place des présentations courtes', 3, 0, 1, NOW(), NOW()),

(624, 130, 1215, '4', 'Excellence en pitch d\'ambassadeur atteinte', 'Félicitations ! Votre storytelling captive et donne envie de collaborer.', 4, 0, 1, NOW(), NOW()),

(625, 130, 1216, '1', 'Atteindre l\'excellence en communication de tension', '1. Mettre en place une analyse des émotions<br>2. Développer une culture de gestion<br>3. Mettre en place des postures calmes', 1, 0, 1, NOW(), NOW()),

(626, 130, 1216, '2', 'Atteindre l\'excellence en communication de tension', '1. Optimiser les excuses et rejets<br>2. Mettre en place une analyse de défense<br>3. Développer une culture de responsabilité', 2, 0, 1, NOW(), NOW()),

(627, 130, 1216, '3', 'Atteindre l\'excellence en communication de tension', '1. Mettre en place une prise de recul<br>2. Développer une culture de respiration<br>3. Mettre en place des désamorçages factuels', 3, 0, 1, NOW(), NOW()),

(628, 130, 1216, '4', 'Excellence en communication de tension atteinte', 'Félicitations ! Vous transformez les tensions en opportunités.', 4, 0, 1, NOW(), NOW()),

(629, 130, 1217, '1', 'Atteindre l\'excellence en présence numérique', '1. Mettre en place une analyse des sites obsolètes<br>2. Développer une culture d\'actualisation<br>3. Mettre en place des pages actives', 1, 0, 1, NOW(), NOW()),

(630, 130, 1217, '2', 'Atteindre l\'excellence en présence numérique', '1. Optimiser les sites existants<br>2. Mettre en place une analyse de contacts<br>3. Développer une culture de surveillance', 2, 0, 1, NOW(), NOW()),

(631, 130, 1217, '3', 'Atteindre l\'excellence en présence numérique', '1. Mettre en place un site professionnel<br>2. Développer une culture de communication<br>3. Mettre en place des réseaux adaptés', 3, 0, 1, NOW(), NOW()),

(632, 130, 1217, '4', 'Excellence en présence numérique atteinte', 'Félicitations ! Internet est un levier d\'acquisition automatisé.', 4, 0, 1, NOW(), NOW()),

(633, 130, 1218, '1', 'Atteindre l\'excellence en exemplarité', '1. Mettre en place une analyse des contradictions<br>2. Développer une culture de cohérence<br>3. Mettre en place des actes alignés', 1, 0, 1, NOW(), NOW()),

(634, 130, 1218, '2', 'Atteindre l\'excellence en exemplarité', '1. Optimiser l\'exemplarité conditionnelle<br>2. Mettre en place une analyse de pression<br>3. Développer une culture de solidité', 2, 0, 1, NOW(), NOW()),

(635, 130, 1218, '3', 'Atteindre l\'excellence en exemplarité', '1. Mettre en place des efforts d\'accord<br>2. Développer une culture de valeurs<br>3. Mettre en place des reconnaissances d\'erreurs', 3, 0, 1, NOW(), NOW()),

(636, 130, 1218, '4', 'Excellence en exemplarité atteinte', 'Félicitations ! Vos actes sont en parfaite cohérence avec vos valeurs.', 4, 0, 1, NOW(), NOW()),

(637, 130, 1219, '1', 'Atteindre l\'excellence en maintenance système', '1. Mettre en place une analyse de l\'information unique<br>2. Développer une culture de communication<br>3. Mettre en place des équipes aveugles', 1, 0, 1, NOW(), NOW()),

(638, 130, 1219, '2', 'Atteindre l\'excellence en maintenance système', '1. Optimiser la demande de communication<br>2. Mettre en place une analyse de validation<br>3. Développer une culture de règles', 2, 0, 1, NOW(), NOW()),

(639, 130, 1219, '3', 'Atteindre l\'excellence en maintenance système', '1. Mettre en place des règles internes claires<br>2. Développer une culture d\'information<br>3. Mettre en place des matrices RACI', 3, 0, 1, NOW(), NOW()),

(640, 130, 1219, '4', 'Excellence en maintenance système atteinte', 'Félicitations ! Vos collaborateurs sont des ambassadeurs formés.', 4, 0, 1, NOW(), NOW()),

-- Module 140: Fonction 7 - COMMERCIAL

(641, 140, 1220, '1', 'Atteindre l\'excellence en stratégie de conquête', '1. Mettre en place une analyse des ventes spontanées<br>2. Développer une culture de ciblage<br>3. Mettre en place des stratégies écrites', 1, 0, 1, NOW(), NOW()),

(642, 140, 1220, '2', 'Atteindre l\'excellence en stratégie de conquête', '1. Optimiser la connaissance concurrentielle<br>2. Mettre en place une analyse d\'offre<br>3. Développer une culture de différenciation', 2, 0, 1, NOW(), NOW()),

(643, 140, 1220, '3', 'Atteindre l\'excellence en stratégie de conquête', '1. Mettre en place des niches spécifiques<br>2. Développer une culture de service<br>3. Mettre en place des créneaux ciblés', 3, 0, 1, NOW(), NOW()),

(644, 140, 1220, '4', 'Excellence en stratégie de conquête atteinte', 'Félicitations ! Votre positionnement unique répond aux frustrations du client idéal.', 4, 0, 1, NOW(), NOW()),

(645, 140, 1221, '1', 'Atteindre l\'excellence en tunnel de vente', '1. Mettre en place une analyse des improvisations<br>2. Développer une culture de suivi<br>3. Mettre en place des prospects précis', 1, 0, 1, NOW(), NOW()),

(646, 140, 1221, '2', 'Atteindre l\'excellence en tunnel de vente', '1. Optimiser les proformas<br>2. Mettre en place une analyse de détection<br>3. Développer une culture de vision', 2, 0, 1, NOW(), NOW()),

(647, 140, 1221, '3', 'Atteindre l\'excellence en tunnel de vente', '1. Mettre en place un pipe commercial<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des prospects catégorisés', 3, 0, 1, NOW(), NOW()),

(648, 140, 1221, '4', 'Excellence en tunnel de vente atteinte', 'Félicitations ! Votre tunnel de vente génère du profit sans vous.', 4, 0, 1, NOW(), NOW()),

(649, 140, 1222, '1', 'Atteindre l\'excellence en pilotage client', '1. Mettre en place une analyse des réactifs<br>2. Développer une culture de proactivité<br>3. Mettre en place des contacts réguliers', 1, 0, 1, NOW(), NOW()),

(650, 140, 1222, '2', 'Atteindre l\'excellence en pilotage client', '1. Optimiser le fichier client<br>2. Mettre en place une analyse d\'offres<br>3. Développer une culture d\'utilisation', 2, 0, 1, NOW(), NOW()),

(651, 140, 1222, '3', 'Atteindre l\'excellence en pilotage client', '1. Mettre en place la loi de Pareto<br>2. Développer une culture de priorisation<br>3. Mettre en place des clients stratégiques', 3, 0, 1, NOW(), NOW()),

(652, 140, 1222, '4', 'Excellence en pilotage client atteinte', 'Félicitations ! Vous avez un système de rétention et développement client.', 4, 0, 1, NOW(), NOW()),

(653, 140, 1223, '1', 'Atteindre l\'excellence en objectifs commerciaux', '1. Mettre en place une analyse du maximum possible<br>2. Développer une culture de chiffrage<br>3. Mettre en place des objectifs précis', 1, 0, 1, NOW(), NOW()),

(654, 140, 1223, '2', 'Atteindre l\'excellence en objectifs commerciaux', '1. Optimiser l\'objectif CA global<br>2. Mettre en place une analyse annuelle<br>3. Développer une culture d\'ambition', 2, 0, 1, NOW(), NOW()),

(655, 140, 1223, '3', 'Atteindre l\'excellence en objectifs commerciaux', '1. Mettre en place des objectifs SMART<br>2. Développer une culture de mesure<br>3. Mettre en place des ambitions réalistes', 3, 0, 1, NOW(), NOW()),

(656, 140, 1223, '4', 'Excellence en objectifs commerciaux atteinte', 'Félicitations ! Vos objectifs sont déclinés et acceptés comme challenge.', 4, 0, 1, NOW(), NOW()),

(657, 140, 1224, '1', 'Atteindre l\'excellence en pilotage commercial', '1. Mettre en place une analyse bancaire<br>2. Développer une culture de suivi<br>3. Mettre en place des indicateurs mensuels', 1, 0, 1, NOW(), NOW()),

(658, 140, 1224, '2', 'Atteindre l\'excellence en pilotage commercial', '1. Optimiser les devis envoyés<br>2. Mettre en place une analyse de rendez-vous<br>3. Développer une culture de suivi', 2, 0, 1, NOW(), NOW()),

(659, 140, 1224, '3', 'Atteindre l\'excellence en pilotage commercial', '1. Mettre en place des chiffres clés<br>2. Développer une culture de pilotage<br>3. Mettre en place des taux de signature', 3, 0, 1, NOW(), NOW()),

(660, 140, 1224, '4', 'Excellence en pilotage commercial atteinte', 'Félicitations ! Vous avez un tableau de bord prédictif pour anticiper.', 4, 0, 1, NOW(), NOW()),

(661, 140, 1225, '1', 'Atteindre l\'excellence en négociation', '1. Mettre en place une analyse des cessions prix<br>2. Développer une culture de valeur<br>3. Mettre en place des stratégies de confiance', 1, 0, 1, NOW(), NOW()),

(662, 140, 1225, '2', 'Atteindre l\'excellence en négociation', '1. Optimiser le discours produit<br>2. Mettre en place une analyse d\'écoute<br>3. Développer une culture de besoins', 2, 0, 1, NOW(), NOW()),

(663, 140, 1225, '3', 'Atteindre l\'excellence en négociation', '1. Mettre en place des solutions gagnant-gagnant<br>2. Développer une culture de méthode<br>3. Mettre en place des objections traitées', 3, 0, 1, NOW(), NOW()),

(664, 140, 1225, '4', 'Excellence en négociation atteinte', 'Félicitations ! Vous maîtrisez votre solution de repli et vendez la valeur.', 4, 0, 1, NOW(), NOW()),

(665, 140, 1226, '1', 'Atteindre l\'excellence en image commerciale', '1. Mettre en place une analyse des ventes immédiates<br>2. Développer une culture d\'image<br>3. Mettre en place des clients satisfaits', 1, 0, 1, NOW(), NOW()),

(666, 140, 1226, '2', 'Atteindre l\'excellence en image commerciale', '1. Optimiser les documents corrects<br>2. Mettre en place une analyse d\'identité<br>3. Développer une culture de marque', 2, 0, 1, NOW(), NOW()),

(667, 140, 1226, '3', 'Atteindre l\'excellence en image commerciale', '1. Mettre en place une identité visuelle<br>2. Développer une culture d\'harmonisation<br>3. Mettre en place des supports unifiés', 3, 0, 1, NOW(), NOW()),

(668, 140, 1226, '4', 'Excellence en image commerciale atteinte', 'Félicitations ! Votre image est professionnelle et différenciante.', 4, 0, 1, NOW(), NOW()),

(669, 140, 1227, '1', 'Atteindre l\'excellence en gestion des impayés', '1. Mettre en place une analyse des trous de trésorerie<br>2. Développer une culture de prévention<br>3. Mettre en place des systèmes de détection', 1, 0, 1, NOW(), NOW()),

(670, 140, 1227, '2', 'Atteindre l\'excellence en gestion des impayés', '1. Optimiser les relances occasionnelles<br>2. Mettre en place une analyse de procédure<br>3. Développer une culture de régularité', 2, 0, 1, NOW(), NOW()),

(671, 140, 1227, '3', 'Atteindre l\'excellence en gestion des impayés', '1. Mettre en place des acomptes obligatoires<br>2. Développer une culture de relance<br>3. Mettre en place des systèmes avant échéance', 3, 0, 1, NOW(), NOW()),

(672, 140, 1227, '4', 'Excellence en gestion des impayés atteinte', 'Félicitations ! Vous vérifiez la solvabilité et appliquez des indemnités.', 4, 0, 1, NOW(), NOW()),

(673, 140, 1228, '1', 'Atteindre l\'excellence en équipe commerciale', '1. Mettre en place une analyse de la dépendance<br>2. Développer une culture d\'autonomie<br>3. Mettre en place des revenus multiples', 1, 0, 1, NOW(), NOW()),

(674, 140, 1228, '2', 'Atteindre l\'excellence en équipe commerciale', '1. Optimiser la validation systématique<br>2. Mettre en place une analyse de présence<br>3. Développer une culture de confiance', 2, 0, 1, NOW(), NOW()),

(675, 140, 1228, '3', 'Atteindre l\'excellence en équipe commerciale', '1. Mettre en place des méthodes écrites<br>2. Développer une culture de transmission<br>3. Mettre en place des argumentaires guides', 3, 0, 1, NOW(), NOW()),

(676, 140, 1228, '4', 'Excellence en équipe commerciale atteinte', 'Félicitations ! Vous avez une équipe autonome avec coaching continu.', 4, 0, 1, NOW(), NOW()),

(677, 140, 1229, '1', 'Atteindre l\'excellence en posture dirigeant', '1. Mettre en place une analyse du temps commercial<br>2. Développer une culture d\'organisation<br>3. Mettre en place des activités stratégiques', 1, 0, 1, NOW(), NOW()),

(678, 140, 1229, '2', 'Atteindre l\'excellence en posture dirigeant', '1. Optimiser le contrôle systématique<br>2. Mettre en place une analyse de confiance<br>3. Développer une culture de délégation', 2, 0, 1, NOW(), NOW()),

(679, 140, 1229, '3', 'Atteindre l\'excellence en posture dirigeant', '1. Mettre en place une organisation équipe<br>2. Développer une culture d\'analyse<br>3. Mettre en place des résultats suivis', 3, 0, 1, NOW(), NOW()),

(680, 140, 1229, '4', 'Excellence en posture dirigeant atteinte', 'Félicitations ! Votre valeur est en dehors du système : vous concevez la machine.', 4, 0, 1, NOW(), NOW()),

-- Module 141: Fonction 8 - OPÉRATIONS

(681, 141, 1230, '1', 'Atteindre l\'excellence en cartographie de la chaîne de valeur', '1. Mettre en place une analyse des tâches isolées<br>2. Développer une culture de vision<br>3. Mettre en place des connexions établies', 1, 0, 1, NOW(), NOW()),

(682, 141, 1230, '2', 'Atteindre l\'excellence en cartographie de la chaîne de valeur', '1. Optimiser les étapes connues<br>2. Mettre en place une analyse de navigation<br>3. Développer une culture de quotidien', 2, 0, 1, NOW(), NOW()),

(683, 141, 1230, '3', 'Atteindre l\'excellence en cartographie de la chaîne de valeur', '1. Mettre en place des activités clés<br>2. Développer une culture d\'interaction<br>3. Mettre en place des logistiques identifiées', 3, 0, 1, NOW(), NOW()),

(684, 141, 1230, '4', 'Excellence en cartographie de la chaîne de valeur atteinte', 'Félicitations ! Vous pilotez un réseau de composants intégrés programmé.', 4, 0, 1, NOW(), NOW()),

(685, 141, 1231, '1', 'Atteindre l\'excellence en optimisation des flux', '1. Mettre en place une analyse des validations personnelles<br>2. Développer une culture de délégation<br>3. Mettre en place des goulots réduits', 1, 0, 1, NOW(), NOW()),

(686, 141, 1231, '2', 'Atteindre l\'excellence en optimisation des flux', '1. Optimiser les solutions réactives<br>2. Mettre en place une analyse de pannes<br>3. Développer une culture de prévention', 2, 0, 1, NOW(), NOW()),

(687, 141, 1231, '3', 'Atteindre l\'excellence en optimisation des flux', '1. Mettre en place des outils Kanban<br>2. Développer une culture de visualisation<br>3. Mettre en place des délais réduits', 3, 0, 1, NOW(), NOW()),

(688, 141, 1231, '4', 'Excellence en optimisation des flux atteinte', 'Félicitations ! Vous traquez systématiquement les gaspillages pour maximiser l\'efficience.', 4, 0, 1, NOW(), NOW()),

(689, 141, 1232, '1', 'Atteindre l\'excellence en standardisation', '1. Mettre en place une analyse des connaissances mentales<br>2. Développer une culture de documentation<br>3. Mettre en place des capacités de reproduction', 1, 0, 1, NOW(), NOW()),

(690, 141, 1232, '2', 'Atteindre l\'excellence en standardisation', '1. Optimiser les transmissions orales<br>2. Mettre en place une analyse de dégradation<br>3. Développer une culture de conservation', 2, 0, 1, NOW(), NOW()),

(691, 141, 1232, '3', 'Atteindre l\'excellence en standardisation', '1. Mettre en place des procédures SOP<br>2. Développer une culture de précision<br>3. Mettre en place des travaux définis', 3, 0, 1, NOW(), NOW()),

(692, 141, 1232, '4', 'Excellence en standardisation atteinte', 'Félicitations ! Vos procédures sont améliorées en continu par l\'équipe.', 4, 0, 1, NOW(), NOW()),

(693, 141, 1233, '1', 'Atteindre l\'excellence en gestion fournisseurs', '1. Mettre en place une analyse des dépendances<br>2. Développer une culture de diversification<br>3. Mettre en place des contrats sécurisés', 1, 0, 1, NOW(), NOW()),

(694, 141, 1233, '2', 'Atteindre l\'excellence en gestion fournisseurs', '1. Optimiser les prix ponctuels<br>2. Mettre en place une analyse de partenariat<br>3. Développer une culture de vision', 2, 0, 1, NOW(), NOW()),

(695, 141, 1233, '3', 'Atteindre l\'excellence en gestion fournisseurs', '1. Mettre en place des fournisseurs sélectionnés<br>2. Développer une culture de soutien<br>3. Mettre en place des situations difficiles', 3, 0, 1, NOW(), NOW()),

(696, 141, 1233, '4', 'Excellence en gestion fournisseurs atteinte', 'Félicitations ! Vos relations fournisseurs sont des partenariats stratégiques intégrés.', 4, 0, 1, NOW(), NOW()),

(697, 141, 1234, '1', 'Atteindre l\'excellence en rentabilité opérationnelle', '1. Mettre en place une analyse annuelle<br>2. Développer une culture de rentabilité<br>3. Mettre en place des opérations spécifiques', 1, 0, 1, NOW(), NOW()),

(698, 141, 1234, '2', 'Atteindre l\'excellence en rentabilité opérationnelle', '1. Optimiser la marge brute moyenne<br>2. Mettre en place une analyse de produits<br>3. Développer une culture de précision', 2, 0, 1, NOW(), NOW()),

(699, 141, 1234, '3', 'Atteindre l\'excellence en rentabilité opérationnelle', '1. Mettre en place des unités de production<br>2. Développer une culture de charges fixes<br>3. Mettre en place des points morts', 3, 0, 1, NOW(), NOW()),

(700, 141, 1234, '4', 'Excellence en rentabilité opérationnelle atteinte', 'Félicitations ! Vous optimisez chaque unité pour maximiser la rentabilité.', 4, 0, 1, NOW(), NOW()),

(701, 141, 1235, '1', 'Atteindre l\'excellence en qualité', '1. Mettre en place une analyse des défauts<br>2. Développer une culture de prévention<br>3. Mettre en place des contrôles réactifs', 1, 0, 1, NOW(), NOW()),

(702, 141, 1235, '2', 'Atteindre l\'excellence en qualité', '1. Optimiser les inspections visuelles<br>2. Mettre en place une analyse de vérification<br>3. Développer une culture de contrôle', 2, 0, 1, NOW(), NOW()),

(703, 141, 1235, '3', 'Atteindre l\'excellence en qualité', '1. Mettre en place des vérifications intégrées<br>2. Développer une culture de prévention<br>3. Mettre en place des erreurs stoppées', 3, 0, 1, NOW(), NOW()),

(704, 141, 1235, '4', 'Excellence en qualité atteinte', 'Félicitations ! Vous utilisez le cycle PDCA pour éliminer les défauts durablement.', 4, 0, 1, NOW(), NOW()),

(705, 141, 1236, '1', 'Atteindre l\'excellence en autonomie opérationnelle', '1. Mettre en place une analyse de la dépendance<br>2. Développer une culture de présence<br>3. Mettre en place des arrêts instantanés', 1, 0, 1, NOW(), NOW()),

(706, 141, 1236, '2', 'Atteindre l\'excellence en autonomie opérationnelle', '1. Optimiser les tâches confiées<br>2. Mettre en place une analyse de questions<br>3. Développer une culture de disponibilité', 2, 0, 1, NOW(), NOW()),

(707, 141, 1236, '3', 'Atteindre l\'excellence en autonomie opérationnelle', '1. Mettre en place des décisions autonomes<br>2. Développer une culture de balises<br>3. Mettre en place des domaines respectifs', 3, 0, 1, NOW(), NOW()),

(708, 141, 1236, '4', 'Excellence en autonomie opérationnelle atteinte', 'Félicitations ! Votre système fonctionne sans vous grâce à des règles claires.', 4, 0, 1, NOW(), NOW()),

(709, 141, 1237, '1', 'Atteindre l\'excellence en maintenance', '1. Mettre en place une analyse des pannes<br>2. Développer une culture d\'intervention<br>3. Mettre en place des outils cassés', 1, 0, 1, NOW(), NOW()),

(710, 141, 1237, '2', 'Atteindre l\'excellence en maintenance', '1. Optimiser les entretiens occasionnels<br>2. Mettre en place une analyse de calendrier<br>3. Développer une culture d\'actif', 2, 0, 1, NOW(), NOW()),

(711, 141, 1237, '3', 'Atteindre l\'excellence en maintenance', '1. Mettre en place un planning régulier<br>2. Développer une culture de prévention<br>3. Mettre en place des arrêts évités', 3, 0, 1, NOW(), NOW()),

(712, 141, 1237, '4', 'Excellence en maintenance atteinte', 'Félicitations ! Votre patrimoine est un actif stratégique suivi par indicateurs.', 4, 0, 1, NOW(), NOW()),

(713, 141, 1238, '1', 'Atteindre l\'excellence en gestion des stocks', '1. Mettre en place une analyse des urgences<br>2. Développer une culture de vérification<br>3. Mettre en place des stocks oubliés', 1, 0, 1, NOW(), NOW()),

(714, 141, 1238, '2', 'Atteindre l\'excellence en gestion des stocks', '1. Optimiser les stocks importants<br>2. Mettre en place une analyse de trésorerie<br>3. Développer une culture d\'organisation', 2, 0, 1, NOW(), NOW()),

(715, 141, 1238, '3', 'Atteindre l\'excellence en gestion des stocks', '1. Mettre en place des besoins réels<br>2. Développer une culture de seuils<br>3. Mettre en place des commandes définies', 3, 0, 1, NOW(), NOW()),

(716, 141, 1238, '4', 'Excellence en gestion des stocks atteinte', 'Félicitations ! Vous avez un flux tendu avec optimisation continue.', 4, 0, 1, NOW(), NOW()),

(717, 141, 1239, '1', 'Atteindre l\'excellence en pilotage quotidien', '1. Mettre en place une analyse des plaintes<br>2. Développer une culture de réunion<br>3. Mettre en place des erreurs découvertes', 1, 0, 1, NOW(), NOW()),

(718, 141, 1239, '2', 'Atteindre l\'excellence en pilotage quotidien', '1. Optimiser les discussions volantes<br>2. Mettre en place une analyse de consignes<br>3. Développer une culture d\'oubli', 2, 0, 1, NOW(), NOW()),

(719, 141, 1239, '3', 'Atteindre l\'excellence en pilotage quotidien', '1. Mettre en place des réunions régulières<br>2. Développer une culture de production<br>3. Mettre en place des délais suivis', 3, 0, 1, NOW(), NOW()),

(720, 141, 1239, '4', 'Excellence en pilotage quotidien atteinte', 'Félicitations ! Vous pratiquez briefing/débriefing avec autocorrection d\'équipe.', 4, 0, 1, NOW(), NOW()),

-- Module 142: Fonction 9 - DIGITAL

(721, 142, 1240, '1', 'Atteindre l\'excellence en vision digitale', '1. Mettre en place une analyse des obligations<br>2. Développer une culture d\'utilisation<br>3. Mettre en place des outils de base', 1, 0, 1, NOW(), NOW()),

(722, 142, 1240, '2', 'Atteindre l\'excellence en vision digitale', '1. Optimiser les outils téléchargés<br>2. Mettre en place une analyse d\'utilité<br>3. Développer une culture de temps', 2, 0, 1, NOW(), NOW()),

(723, 142, 1240, '3', 'Atteindre l\'excellence en vision digitale', '1. Mettre en place des blocages identifiés<br>2. Développer une culture de gain de temps<br>3. Mettre en place des outils spécifiques', 3, 0, 1, NOW(), NOW()),

(724, 142, 1240, '4', 'Excellence en vision digitale atteinte', 'Félicitations ! Chaque outil est choisi stratégiquement pour l\'autonomie.', 4, 0, 1, NOW(), NOW()),

(725, 142, 1241, '1', 'Atteindre l\'excellence en messagerie client', '1. Mettre en place une analyse des messages mélangés<br>2. Développer une culture de séparation<br>3. Mettre en place des commandes organisées', 1, 0, 1, NOW(), NOW()),

(726, 142, 1241, '2', 'Atteindre l\'excellence en messagerie client', '1. Optimiser WhatsApp Business<br>2. Mettre en place une analyse de catalogue<br>3. Développer une culture de traitement manuel', 2, 0, 1, NOW(), NOW()),

(727, 142, 1241, '3', 'Atteindre l\'excellence en messagerie client', '1. Mettre en place des réponses automatiques<br>2. Développer une culture de classement<br>3. Mettre en place des prospects rigoureux', 3, 0, 1, NOW(), NOW()),

(728, 142, 1241, '4', 'Excellence en messagerie client atteinte', 'Félicitations ! Vos échanges sont reliés à un CRM avec historique client.', 4, 0, 1, NOW(), NOW()),

(729, 142, 1242, '1', 'Atteindre l\'excellence en mémoire entreprise', '1. Mettre en place une analyse des carnets<br>2. Développer une culture de sauvegarde<br>3. Mettre en place des arrêts instantanés', 1, 0, 1, NOW(), NOW()),

(730, 142, 1242, '2', 'Atteindre l\'excellence en mémoire entreprise', '1. Optimiser les dossiers dispersés<br>2. Mettre en place une analyse de recherche<br>3. Développer une culture de désordre', 2, 0, 1, NOW(), NOW()),

(731, 142, 1242, '3', 'Atteindre l\'excellence en mémoire entreprise', '1. Mettre en place le Cloud<br>2. Développer une culture d\'accessibilité<br>3. Mettre en place des sauvegardes', 3, 0, 1, NOW(), NOW()),

(732, 142, 1242, '4', 'Excellence en mémoire entreprise atteinte', 'Félicitations ! Vous avez un système d\'information structuré et pérenne.', 4, 0, 1, NOW(), NOW()),

(733, 142, 1243, '1', 'Atteindre l\'excellence en facturation', '1. Mettre en place une analyse des écritures manuelles<br>2. Développer une culture de suivi<br>3. Mettre en place des règlements automatiques', 1, 0, 1, NOW(), NOW()),

(734, 142, 1243, '2', 'Atteindre l\'excellence en facturation', '1. Optimiser Excel<br>2. Mettre en place une analyse de ressaisie<br>3. Développer une culture d\'optimisation', 2, 0, 1, NOW(), NOW()),

(735, 142, 1243, '3', 'Atteindre l\'excellence en facturation', '1. Mettre en place un logiciel dédié<br>2. Développer une culture de suivi<br>3. Mettre en place des paiements automatiques', 3, 0, 1, NOW(), NOW()),

(736, 142, 1243, '4', 'Excellence en facturation atteinte', 'Félicitations ! Votre facturation est une gestion ERP intégrée en temps réel.', 4, 0, 1, NOW(), NOW()),

(737, 142, 1244, '1', 'Atteindre l\'excellence en gestion des tâches', '1. Mettre en place une analyse des instructions orales<br>2. Développer une culture de suivi<br>3. Mettre en place des malentendus réduits', 1, 0, 1, NOW(), NOW()),

(738, 142, 1244, '2', 'Atteindre l\'excellence en gestion des tâches', '1. Optimiser l\'agenda papier<br>2. Mettre en place une analyse de délégation<br>3. Développer une culture d\'avancement', 2, 0, 1, NOW(), NOW()),

(739, 142, 1244, '3', 'Atteindre l\'excellence en gestion des tâches', '1. Mettre en place des outils collaboratifs<br>2. Développer une culture de visualisation<br>3. Mettre en place des tâches listées', 3, 0, 1, NOW(), NOW()),

(740, 142, 1244, '4', 'Excellence en gestion des tâches atteinte', 'Félicitations ! Vous avez un système de pilotage intégré avec alertes.', 4, 0, 1, NOW(), NOW()),

(741, 142, 1245, '1', 'Atteindre l\'excellence en automatisation', '1. Mettre en place une analyse des relances manuelles<br>2. Développer une culture d\'automatisation<br>3. Mettre en place des temps humains', 1, 0, 1, NOW(), NOW()),

(742, 142, 1245, '2', 'Atteindre l\'excellence en automatisation', '1. Optimiser les rappels utilisés<br>2. Mettre en place une analyse d\'opérationnel<br>3. Développer une culture de temps', 2, 0, 1, NOW(), NOW()),

(743, 142, 1245, '3', 'Atteindre l\'excellence en automatisation', '1. Mettre en place des processus critiques<br>2. Développer une culture de séquences<br>3. Mettre en place des accueils automatisés', 3, 0, 1, NOW(), NOW()),

(744, 142, 1245, '4', 'Excellence en automatisation atteinte', 'Félicitations ! Le système gère les flux standards, vous libérant 80% de temps.', 4, 0, 1, NOW(), NOW()),

(745, 142, 1246, '1', 'Atteindre l\'excellence en pilotage par les chiffres', '1. Mettre en place une analyse de la paperasse<br>2. Développer une culture de rentabilité<br>3. Mettre en place des chiffres annuels', 1, 0, 1, NOW(), NOW()),

(746, 142, 1246, '2', 'Atteindre l\'excellence en pilotage par les chiffres', '1. Optimiser le CA mensuel<br>2. Mettre en place une analyse détaillée<br>3. Développer une culture de suivi', 2, 0, 1, NOW(), NOW()),

(747, 142, 1246, '3', 'Atteindre l\'excellence en pilotage par les chiffres', '1. Mettre en place des tableaux de bord<br>2. Développer une culture de marges<br>3. Mettre en place des ventes suivies', 3, 0, 1, NOW(), NOW()),

(748, 142, 1246, '4', 'Excellence en pilotage par les chiffres atteinte', 'Félicitations ! Vous avez un cockpit de pilotage prédictif en temps réel.', 4, 0, 1, NOW(), NOW()),

(749, 142, 1247, '1', 'Atteindre l\'excellence en présence digitale', '1. Mettre en place une analyse du réseau physique<br>2. Développer une culture de vitrine<br>3. Mettre en place des dépendances réduites', 1, 0, 1, NOW(), NOW()),

(750, 142, 1247, '2', 'Atteindre l\'excellence en présence digitale', '1. Optimiser la page Facebook<br>2. Mettre en place une analyse de mise à jour<br>3. Développer une culture de présence', 2, 0, 1, NOW(), NOW()),

(751, 142, 1247, '3', 'Atteindre l\'excellence en présence digitale', '1. Mettre en place des publications régulières<br>2. Développer une culture de contacts<br>3. Mettre en place des sites actifs', 3, 0, 1, NOW(), NOW()),

(752, 142, 1247, '4', 'Excellence en présence digitale atteinte', 'Félicitations ! Votre système numérique attire, convertit et fidélise automatiquement.', 4, 0, 1, NOW(), NOW()),

(753, 142, 1248, '1', 'Atteindre l\'excellence en sécurité des données', '1. Mettre en place une analyse des pertes totales<br>2. Développer une culture de sauvegarde<br>3. Mettre en place des arrêts instantanés', 1, 0, 1, NOW(), NOW()),

(754, 142, 1248, '2', 'Atteindre l\'excellence en sécurité des données', '1. Optimiser la clé USB<br>2. Mettre en place une analyse de mise à jour<br>3. Développer une culture de régularité', 2, 0, 1, NOW(), NOW()),

(755, 142, 1248, '3', 'Atteindre l\'excellence en sécurité des données', '1. Mettre en place des données synchronisées<br>2. Développer une culture de protection<br>3. Mettre en place des mots de passe', 3, 0, 1, NOW(), NOW()),

(756, 142, 1248, '4', 'Excellence en sécurité des données atteinte', 'Félicitations ! Vous avez un plan de continuité et de récupération complet.', 4, 0, 1, NOW(), NOW()),

(757, 142, 1249, '1', 'Atteindre l\'excellence en productivité système', '1. Mettre en place une analyse de la dépendance dirigeant<br>2. Développer une culture d\'autonomie<br>3. Mettre en place des accès partagés', 1, 0, 1, NOW(), NOW()),

(758, 142, 1249, '2', 'Atteindre l\'excellence en productivité système', '1. Optimiser les employés utilisateurs<br>2. Mettre en place une analyse de règles<br>3. Développer une culture de fonctionnement', 2, 0, 1, NOW(), NOW()),

(759, 142, 1249, '3', 'Atteindre l\'excellence en productivité système', '1. Mettre en place des guides SOP<br>2. Développer une culture d\'utilisation<br>3. Mettre en place des outils numériques', 3, 0, 1, NOW(), NOW()),

(760, 142, 1249, '4', 'Excellence en productivité système atteinte', 'Félicitations ! Chaque membre est autonome grâce à la puissance du système.', 4, 0, 1, NOW(), NOW()),

-- Module 143: Fonction 10 - ADMINISTRATION

(761, 143, 1250, '1', 'Atteindre l\'excellence en organisation back-office', '1. Mettre en place une analyse des traitements solitaires<br>2. Développer une culture de délégation<br>3. Mettre en place des fonctions négligées', 1, 0, 1, NOW(), NOW()),

(762, 143, 1250, '2', 'Atteindre l\'excellence en organisation back-office', '1. Optimiser les tâches floues<br>2. Mettre en place une analyse d\'urgence<br>3. Développer une culture de pénalités', 2, 0, 1, NOW(), NOW()),

(763, 143, 1250, '3', 'Atteindre l\'excellence en organisation back-office', '1. Mettre en place un secrétariat défini<br>2. Développer une culture d\'outils<br>3. Mettre en place des adaptations adaptées', 3, 0, 1, NOW(), NOW()),

(764, 143, 1250, '4', 'Excellence en organisation back-office atteinte', 'Félicitations ! Votre support administratif est un levier stratégique.', 4, 0, 1, NOW(), NOW()),

(765, 143, 1251, '1', 'Atteindre l\'excellence en archivage', '1. Mettre en place une analyse des dossiers éparpillés<br>2. Développer une culture de classement<br>3. Mettre en place des carnets papier', 1, 0, 1, NOW(), NOW()),

(766, 143, 1251, '2', 'Atteindre l\'excellence en archivage', '1. Optimiser les classeurs physiques<br>2. Mettre en place une analyse de tri<br>3. Développer une culture de rigueur', 2, 0, 1, NOW(), NOW()),

(767, 143, 1251, '3', 'Atteindre l\'excellence en archivage', '1. Mettre en place des documents classés<br>2. Développer une culture de sauvegarde<br>3. Mettre en place des Cloud sécurisés', 3, 0, 1, NOW(), NOW()),

(768, 143, 1251, '4', 'Excellence en archivage atteinte', 'Félicitations ! Votre archivage est numérisé, indexé et accessible instantanément.', 4, 0, 1, NOW(), NOW()),

(769, 143, 1252, '1', 'Atteindre l\'excellence en obligations légales', '1. Mettre en place une analyse des sanctions<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des obligations découvertes', 1, 0, 1, NOW(), NOW()),

(770, 143, 1252, '2', 'Atteindre l\'excellence en obligations légales', '1. Optimiser l\'expert-comptable<br>2. Mettre en place une analyse de choix<br>3. Développer une culture de vérification', 2, 0, 1, NOW(), NOW()),

(771, 143, 1252, '3', 'Atteindre l\'excellence en obligations légales', '1. Mettre en place des registres légaux<br>2. Développer une culture de scrupule<br>3. Mettre en place des déclarations respectées', 3, 0, 1, NOW(), NOW()),

(772, 143, 1252, '4', 'Excellence en obligations légales atteinte', 'Félicitations ! Vous optimisez fiscalement avec une veille active.', 4, 0, 1, NOW(), NOW()),

(773, 143, 1253, '1', 'Atteindre l\'excellence en procédures administratives', '1. Mettre en place une analyse des connaissances mentales<br>2. Développer une culture de documentation<br>3. Mettre en place des arrêts instantanés', 1, 0, 1, NOW(), NOW()),

(774, 143, 1253, '2', 'Atteindre l\'excellence en procédures administratives', '1. Optimiser les transmissions orales<br>2. Mettre en place une analyse d\'erreurs<br>3. Développer une culture de dégradation', 2, 0, 1, NOW(), NOW()),

(775, 143, 1253, '3', 'Atteindre l\'excellence en procédures administratives', '1. Mettre en place des procédures SOP<br>2. Développer une culture de processus<br>3. Mettre en place des critiques définis', 3, 0, 1, NOW(), NOW()),

(776, 143, 1253, '4', 'Excellence en procédures administratives atteinte', 'Félicitations ! Votre documentation forme instantanément et assure la qualité.', 4, 0, 1, NOW(), NOW()),

(777, 143, 1254, '1', 'Atteindre l\'excellence en continuité d\'activité', '1. Mettre en place une analyse des incidents graves<br>2. Développer une culture de préparation<br>3. Mettre en place des arrêts définitifs', 1, 0, 1, NOW(), NOW()),

(778, 143, 1254, '2', 'Atteindre l\'excellence en continuité d\'activité', '1. Optimiser les assurances existantes<br>2. Mettre en place une analyse de stratégie<br>3. Développer une culture de redémarrage', 2, 0, 1, NOW(), NOW()),

(779, 143, 1254, '3', 'Atteindre l\'excellence en continuité d\'activité', '1. Mettre en place des solutions alternatives<br>2. Développer une culture de crise<br>3. Mettre en place des fonds de secours', 3, 0, 1, NOW(), NOW()),

(780, 143, 1254, '4', 'Excellence en continuité d\'activité atteinte', 'Félicitations ! Vous avez un plan de continuité testé et opérationnel.', 4, 0, 1, NOW(), NOW()),

(781, 143, 1255, '1', 'Atteindre l\'excellence en gestion des dépendances', '1. Mettre en place une analyse des risques cachés<br>2. Développer une culture d\'anticipation<br>3. Mettre en place des ruptures identifiées', 1, 0, 1, NOW(), NOW()),

(782, 143, 1255, '2', 'Atteindre l\'excellence en gestion des dépendances', '1. Optimiser les outils clés<br>2. Mettre en place une analyse de repli<br>3. Développer une culture de formalisation', 2, 0, 1, NOW(), NOW()),

(783, 143, 1255, '3', 'Atteindre l\'excellence en gestion des dépendances', '1. Mettre en place des interdépendances cartographiées<br>2. Développer une culture de gestion<br>3. Mettre en place des partenariats actifs', 3, 0, 1, NOW(), NOW()),

(784, 143, 1255, '4', 'Excellence en gestion des dépendances atteinte', 'Félicitations ! Votre organisation est structurée sans dépendance exclusive.', 4, 0, 1, NOW(), NOW()),

(785, 143, 1256, '1', 'Atteindre l\'excellence en gestion des risques', '1. Mettre en place une analyse des problèmes cachés<br>2. Développer une culture de diagnostic<br>3. Mettre en place des risques identifiés', 1, 0, 1, NOW(), NOW()),

(786, 143, 1256, '2', 'Atteindre l\'excellence en gestion des risques', '1. Optimiser les risques subis<br>2. Mettre en place une analyse d\'incidents<br>3. Développer une culture d\'analyse', 2, 0, 1, NOW(), NOW()),

(787, 143, 1256, '3', 'Atteindre l\'excellence en gestion des risques', '1. Mettre en place des zones de risques<br>2. Développer une culture de contrôle<br>3. Mettre en place des processus intégrés', 3, 0, 1, NOW(), NOW()),

(788, 143, 1256, '4', 'Excellence en gestion des risques atteinte', 'Félicitations ! Vous avez un système de gestion des risques proactif.', 4, 0, 1, NOW(), NOW()),

(789, 143, 1257, '1', 'Atteindre l\'excellence en pilotage des prestataires', '1. Mettre en place une analyse des prestataires<br>2. Développer une culture de compréhension<br>3. Mettre en place des travaux maîtrisés', 1, 0, 1, NOW(), NOW()),

(790, 143, 1257, '2', 'Atteindre l\'excellence en pilotage des prestataires', '1. Optimiser les sollicitations ponctuelles<br>2. Mettre en place une analyse de contrat<br>3. Développer une culture de performance', 2, 0, 1, NOW(), NOW()),

(791, 143, 1257, '3', 'Atteindre l\'excellence en pilotage des prestataires', '1. Mettre en place une collaboration étroite<br>2. Développer une culture de vérification<br>3. Mettre en place des responsabilités assurées', 3, 0, 1, NOW(), NOW()),

(792, 143, 1257, '4', 'Excellence en pilotage des prestataires atteinte', 'Félicitations ! Vous pilotez vos experts avec missions précises et vision.', 4, 0, 1, NOW(), NOW()),

(793, 143, 1258, '1', 'Atteindre l\'excellence en capitalisation du savoir', '1. Mettre en place une analyse des connaissances mentales<br>2. Développer une culture de documentation<br>3. Mettre en place des savoirs perdus', 1, 0, 1, NOW(), NOW()),

(794, 143, 1258, '2', 'Atteindre l\'excellence en capitalisation du savoir', '1. Optimiser les notes de service<br>2. Mettre en place une analyse d\'obsolescence<br>3. Développer une culture de mise à jour', 2, 0, 1, NOW(), NOW()),

(795, 143, 1258, '3', 'Atteindre l\'excellence en capitalisation du savoir', '1. Mettre en place un manuel de procédures<br>2. Développer une culture de régularité<br>3. Mettre en place des services garantis', 3, 0, 1, NOW(), NOW()),

(796, 143, 1258, '4', 'Excellence en capitalisation du savoir atteinte', 'Félicitations ! Vous avez une base de connaissances dynamique et partagée.', 4, 0, 1, NOW(), NOW()),

(797, 143, 1259, '1', 'Atteindre l\'excellence en stabilité organisationnelle', '1. Mettre en place une analyse du chaos permanent<br>2. Développer une culture de pilotage<br>3. Mettre en place des urgences bousculées', 1, 0, 1, NOW(), NOW()),

(798, 143, 1259, '2', 'Atteindre l\'excellence en stabilité organisationnelle', '1. Optimiser la présence physique<br>2. Mettre en place une analyse d\'autorité<br>3. Développer une culture d\'ordre', 2, 0, 1, NOW(), NOW()),

(799, 143, 1259, '3', 'Atteindre l\'excellence en stabilité organisationnelle', '1. Mettre en place des rôles clairs<br>2. Développer une culture d\'organigramme<br>3. Mettre en place des priorités respectées', 3, 0, 1, NOW(), NOW()),

(800, 143, 1259, '4', 'Excellence en stabilité organisationnelle atteinte', 'Félicitations ! Votre organisation est résiliente et fonctionne en autopilote.', 4, 0, 1, NOW(), NOW());
