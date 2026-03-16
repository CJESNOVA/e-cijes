-- Génération automatique des plans d'action pour plantemplates
-- Basé sur les modules de type 1 (115-143) et type 2 (38-110)
-- Généré par IA pour fournir des plans d'action concrets et réalisables

INSERT INTO `plantemplates` (`id`, `diagnosticmodule_id`, `diagnosticquestion_id`, `niveau`, `objectif`, `actionprioritaire`, `priorite`, `spotlight`, `etat`, `created_at`, `updated_at`) VALUES

-- MODULES DE TYPE 1 (diagnosticmoduletype_id = 1) - Niveaux A=1, B=2, C=3, D=4

-- Module 115: Fonction 1 - Posture stratégique du dirigeant
-- Question 850: Projection stratégique
(1, 115, 850, '1', 'Définir une vision claire', 'Formaliser la vision stratégique sur une page<br>Identifier les objectifs à 3-5 ans<br>Partager la vision avec les parties prenantes clés', 1, 0, 1, NOW(), NOW()),
(2, 115, 850, '2', 'Structurer la vision stratégique', 'Documenter le business model complet<br>Définir les indicateurs de succès clés<br>Créer un plan de communication de la vision', 2, 0, 1, NOW(), NOW()),
(3, 115, 850, '3', 'Aligner l\\'organisation sur la vision', 'Décliner la vision en objectifs opérationnels<br>Intégrer la vision dans les processus décisionnels<br>Suivre régulièrement les indicateurs de vision', 3, 0, 1, NOW(), NOW()),
(4, 115, 850, '4', 'Piloter par la vision stratégique', 'Utiliser la vision comme filtre décisionnel<br>Ajuster la vision en fonction des retours terrain<br>Former les équipes à la vision stratégique', 4, 0, 1, NOW(), NOW()),

-- Question 851: Capacité à renoncer
(5, 115, 851, '1', 'Apprendre à dire non', 'Identifier les opportunités non alignées<br>Créer des critères de sélection clairs<br>Pratiquer le refus poli mais ferme', 1, 0, 1, NOW(), NOW()),
(6, 115, 851, '2', 'Développer la discipline stratégique', 'Établir une grille de décision<br>Former l\\'équipe aux priorités stratégiques<br>Mettre en place des points de validation', 2, 0, 1, NOW(), NOW()),
(7, 115, 851, '3', 'Optimiser l\\'allocation des ressources', 'Auditer régulièrement les activités<br>Réallouer les ressources vers les priorités<br>Mesurer l\\'impact des décisions de focus', 3, 0, 1, NOW(), NOW()),
(8, 115, 851, '4', 'Maîtriser l\\'art du sacrifice stratégique', 'Anticiper les besoins de désengagement<br>Créer des processus de sortie efficaces<br>Transformer les abandons en opportunités', 4, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 (diagnosticmoduletype_id = 2) - Niveaux A=0, B=1, C=2

-- Module 38: Bloc 1 - Stratégie (Pépite)
-- Question 289: Vision stratégique
(1000, 38, 289, '0', 'Initialiser la vision', 'Décrire l\\'activité principale en une phrase<br>Identifier 2-3 objectifs à court terme<br>Partager la vision avec un proche', 1, 0, 1, NOW(), NOW()),
(1001, 38, 289, '1', 'Structurer la vision', 'Documenter le modèle économique<br>Définir les clients cibles<br>Créer un tableau de bord simple', 2, 0, 1, NOW(), NOW()),
(1002, 38, 289, '2', 'Piloter par la vision', 'Utiliser la vision pour les décisions quotidiennes<br>Suivre les indicateurs clés mensuellement<br>Ajuster la vision trimestriellement', 3, 0, 1, NOW(), NOW()),

-- Question 290: Modèle économique
(1003, 38, 290, '0', 'Comprendre le modèle actuel', 'Lister les sources de revenus<br>Identifier les coûts principaux<br>Décrire la proposition de valeur', 1, 0, 1, NOW(), NOW()),
(1004, 38, 290, '1', 'Optimiser le modèle', 'Analyser la rentabilité par activité<br>Identifier les leviers de croissance<br>Tester des améliorations simples', 2, 0, 1, NOW(), NOW()),
(1005, 38, 290, '2', 'Innover le modèle', 'Explorer de nouvelles sources de revenus<br>Développer des offres complémentaires<br>Préparer l\\'entreprise à l\\'échelle', 3, 0, 1, NOW(), NOW()),

-- Suite avec beaucoup plus de modules et plans d'action...

-- Module 115: Fonction 1 - Posture stratégique (suite)
-- Question 852: Allocation des ressources
(9, 115, 852, '1', 'Prioriser intuitivement', 'Lister les tâches quotidiennes<br>Identifier les urgences immédiates<br>Choisir ce qui semble le plus important', 1, 0, 1, NOW(), NOW()),
(10, 115, 852, '2', 'Structurer les priorités', 'Créer une liste de priorités simple<br>Distinguer urgent/important<br>Allouer du temps aux priorités', 2, 0, 1, NOW(), NOW()),
(11, 115, 852, '3', 'Optimiser l\\'allocation', 'Utiliser une grille de décision<br>Suivre l\\'utilisation des ressources<br>Ajuster selon les résultats', 3, 0, 1, NOW(), NOW()),
(12, 115, 852, '4', 'Piloter par la valeur', 'Évaluer le retour sur investissement<br>Optimiser en continu<br>Déléguer ce qui a faible valeur ajoutée', 4, 0, 1, NOW(), NOW()),

-- Question 853: Rapport au marché
(13, 115, 853, '1', 'Réagir aux changements', 'Observer les concurrents<br>Noter les changements de prix<br>Adapter ponctuellement', 1, 0, 1, NOW(), NOW()),
(14, 115, 853, '2', 'Surveiller le marché', 'Suivre régulièrement les tendances<br>Analyser les évolutions<br>Ajuster l\\'offre', 2, 0, 1, NOW(), NOW()),
(15, 115, 853, '3', 'Anticiper les évolutions', 'Analyser les signaux faibles<br>Préparer les adaptations<br>Tester des ajustements', 3, 0, 1, NOW(), NOW()),
(16, 115, 853, '4', 'Influencer le marché', 'Innover proactivement<br>Créer les tendances<br>Positionner stratégiquement', 4, 0, 1, NOW(), NOW()),

-- Question 854: Rapport au risque
(17, 115, 854, '1', 'Subir les risques', 'Réagir quand les problèmes surviennent<br>Gérer les urgences<br>Apprendre par l\\'expérience', 1, 0, 1, NOW(), NOW()),
(18, 115, 854, '2', 'Anticiper partiellement', 'Identifier les risques évidents<br>Préparer des solutions simples<br>Surveiller les signaux', 2, 0, 1, NOW(), NOW()),
(19, 115, 854, '3', 'Gérer proactivement', 'Analyser les risques systématiquement<br>Préparer des plans de mitigation<br>Suivre les indicateurs', 3, 0, 1, NOW(), NOW()),
(20, 115, 854, '4', 'Piloter par les risques', 'Intégrer les risques dans la stratégie<br>Anticiper les menaces<br>Transformer les risques en opportunités', 4, 0, 1, NOW(), NOW()),

-- Question 855: Transmission du cap
(21, 115, 855, '1', 'Communiquer informellement', 'Partager les informations ponctuellement<br>Expliquer les décisions au cas par cas<br>Répondre aux questions', 1, 0, 1, NOW(), NOW()),
(22, 115, 855, '2', 'Structurer la communication', 'Organiser des réunions régulières<br>Documenter les décisions clés<br>Créer des supports de communication', 2, 0, 1, NOW(), NOW()),
(23, 115, 855, '3', 'Aligner l\\'équipe', 'Décliner la vision en objectifs<br>Former les équipes à la vision<br>Suivre l\\'alignement', 3, 0, 1, NOW(), NOW()),
(24, 115, 855, '4', 'Piloter par la vision', 'Intégrer la vision dans toutes les décisions<br>Développer des ambassadeurs<br>Mettre en place la gouvernance', 4, 0, 1, NOW(), NOW()),

-- Question 856: Rapport aux indicateurs
(25, 115, 856, '1', 'Surveiller le cash', 'Vérifier les comptes régulièrement<br>Suivre les ventes<br>Contrôler les dépenses', 1, 0, 1, NOW(), NOW()),
(26, 115, 856, '2', 'Suivre les chiffres', 'Analyser le chiffre d\\'affaires<br>Calculer les marges<br>Suivre quelques ratios', 2, 0, 1, NOW(), NOW()),
(27, 115, 856, '3', 'Piloter par les indicateurs', 'Définir des KPI pertinents<br>Analyser les tendances<br>Prendre décisions basées sur les données', 3, 0, 1, NOW(), NOW()),
(28, 115, 856, '4', 'Optimiser par les données', 'Utiliser des indicateurs avancés<br>Piloter en temps réel<br>Ajuster la stratégie', 4, 0, 1, NOW(), NOW()),

-- Question 857: Capacité d'ajustement stratégique
(29, 115, 857, '1', 'Subir les changements', 'Continuer en espérant l\\'amélioration<br>Attendre que ça passe<br>Subir les conséquences', 1, 0, 1, NOW(), NOW()),
(30, 115, 857, '2', 'Réagir sous pression', 'Changer quand c\\'est obligatoire<br>Adapter rapidement<br>Subir les contraintes', 2, 0, 1, NOW(), NOW()),
(31, 115, 857, '3', 'Ajuster méthodiquement', 'Analyser les causes<br>Ajuster progressivement<br>Tester les solutions', 3, 0, 1, NOW(), NOW()),
(32, 115, 857, '4', 'Anticiper les évolutions', 'Détecter les signaux faibles<br>Ajuster proactivement<br>Piloter la transition', 4, 0, 1, NOW(), NOW()),

-- Question 858: Discipline stratégique
(33, 115, 858, '1', 'Pas de temps stratégique', 'Être absorbé par l\\'opérationnel<br>Réagir aux urgences<br>Manquer de recul', 1, 0, 1, NOW(), NOW()),
(34, 115, 858, '2', 'Temps occasionnel', 'Prendre du temps quand c\\'est calme<br>Réfléchir ponctuellement<br>Anticiper parfois', 2, 0, 1, NOW(), NOW()),
(35, 115, 858, '3', 'Temps régulier', 'Bloquer des moments stratégiques<br>Planifier les réflexions<br>Documenter les décisions', 3, 0, 1, NOW(), NOW()),
(36, 115, 858, '4', 'Discipline stratégique', 'Avoir un calendrier stratégique<br>Faire des revues planifiées<br>Piloter par la vision', 4, 0, 1, NOW(), NOW()),

-- Question 859: Solidité du système
(37, 115, 859, '1', 'Système dépendant', 'L\\'entreprise s\\'arrête sans vous<br>Tout passe par vous<br>Pas de délégation', 1, 0, 1, NOW(), NOW()),
(38, 115, 859, '2', 'Système fragile', 'L\\'équipe tient mais peine<br>Quelques délégations possibles<br>Beaucoup de supervision', 2, 0, 1, NOW(), NOW()),
(39, 115, 859, '3', 'Système autonome', 'L\\'équipe avance seule<br>Processus en place<br>Délégation efficace', 3, 0, 1, NOW(), NOW()),
(40, 115, 859, '4', 'Système robuste', 'L\\'entreprise prospère sans vous<br>Gouvernance mature<br>Leadership distribué', 4, 0, 1, NOW(), NOW()),

-- Module 116: Fonction 2 - Influence relationnelle
-- Question 860: Donner des consignes
(17, 116, 860, '1', 'Donner des ordres', 'Exprimer clairement ce qu\\'il faut faire<br>Fixer des délais<br>Vérifier l\\'exécution', 1, 0, 1, NOW(), NOW()),
(18, 116, 860, '2', 'Expliquer les attentes', 'Détailler le résultat attendu<br>Préciser les critères de succès<br>Donner le contexte', 2, 0, 1, NOW(), NOW()),
(19, 116, 860, '3', 'Valider la compréhension', 'Faire reformuler la mission<br>Vérifier les points clés<br>Clarifier les doutes', 3, 0, 1, NOW(), NOW()),
(20, 116, 860, '4', 'Aligner sur la vision', 'Relier la mission à la stratégie<br>Définir le périmètre d\\'autonomie<br>Fixer les indicateurs de réussite', 4, 0, 1, NOW(), NOW()),

-- Question 862: Convaincre quelqu'un d'important
(25, 116, 862, '1', 'Improviser la conviction', 'Y aller comme ça<br>Expliquer le besoin<br>Improviser les arguments', 1, 0, 1, NOW(), NOW()),
(26, 116, 862, '2', 'Préparer sommairement', 'Préparer quelques arguments<br>Sans vraie stratégie<br>Se fier à l\\'intuition', 2, 0, 1, NOW(), NOW()),
(27, 116, 862, '3', 'Préparer méthodiquement', 'Préparer arguments et chiffres<br>Clarifier les limites<br>Anticiper les objections', 3, 0, 1, NOW(), NOW()),
(28, 116, 862, '4', 'Préparer stratégiquement', 'Penser aux intérêts de l\\'autre<br>Chercher accord gagnant-gagnant<br>Préparer plan B', 4, 0, 1, NOW(), NOW()),

-- Question 863: Annoncer un changement
(29, 116, 863, '1', 'Imposer le changement', 'Annoncer la décision<br>Laisser s\\'adapter<br>Ne pas gérer les réactions', 1, 0, 1, NOW(), NOW()),
(30, 116, 863, '2', 'Expliquer rapidement', 'Annoncer et expliquer vite<br>Ne pas vraiment gérer<br>Passer à autre chose', 2, 0, 1, NOW(), NOW()),
(31, 116, 863, '3', 'Expliquer le pourquoi', 'Expliquer le changement<br>Montrer les bénéfices<br>Accompagner le début', 3, 0, 1, NOW(), NOW()),
(32, 116, 863, '4', 'Piloter le changement', 'Expliquer le contexte<br>Écouter les inquiétudes<br>Impliquer l\\'équipe', 4, 0, 1, NOW(), NOW()),

-- Question 864: Circulation de l'information
(33, 116, 864, '1', 'Information centralisée', 'Tout passe par moi<br>Chacun sait ce qui le concerne<br>Pas de partage systématique', 1, 0, 1, NOW(), NOW()),
(34, 116, 864, '2', 'Information informelle', 'Circule selon les discussions<br>Informel et irrégulier<br>Manque de structure', 2, 0, 1, NOW(), NOW()),
(35, 116, 864, '3', 'Information structurée', 'Partagée régulièrement<br>Réunions et messages clairs<br>Accès organisé', 3, 0, 1, NOW(), NOW()),
(36, 116, 864, '4', 'Information optimisée', 'Structurée et accessible<br>Chacun sait où trouver<br>Pilote les décisions', 4, 0, 1, NOW(), NOW()),

-- Question 865: Construire son réseau
(37, 116, 865, '1', 'Réactivité uniquement', 'Travaille seul<br>Sollicite en urgence<br>Pas de proactivité', 1, 0, 1, NOW(), NOW()),
(38, 116, 865, '2', 'Réactivité ponctuelle', 'Appelle quand besoin<br>Contacts opportunistes<br>Pas d\\'entretien', 2, 0, 1, NOW(), NOW()),
(39, 116, 865, '3', 'Entretien régulier', 'Entretient les relations<br>Même sans besoin<br>Prépare l\\'avenir', 3, 0, 1, NOW(), NOW()),
(40, 116, 865, '4', 'Stratégie réseau', 'Développe des alliances<br>Cultive les relations stratégiques<br>Pense long terme', 4, 0, 1, NOW(), NOW()),

-- Question 866: Pourquoi l'équipe suit
(41, 116, 866, '1', 'Contrôle et vérification', 'Me suit parce que je contrôle<br>Vérifie régulièrement<br>Peur de reproches', 1, 0, 1, NOW(), NOW()),
(42, 116, 866, '2', 'Évitement des tensions', 'Me suit pour éviter les problèmes<br>Peur des conflits<br>Maintien de la paix', 2, 0, 1, NOW(), NOW()),
(43, 116, 866, '3', 'Compréhension et utilité', 'Me suit parce que comprend<br>Voit l\\'utilité de son travail<br>Sens donné aux tâches', 3, 0, 1, NOW(), NOW()),
(44, 116, 866, '4', 'Adhésion et vision', 'Me suit par adhésion<br>Prend des initiatives<br>Défend la vision', 4, 0, 1, NOW(), NOW()),

-- Question 867: Gérer les tensions informelles
(45, 116, 867, '1', 'Évitement', 'Laisse faire<br>Espère que ça se calme<br>Aborde pas le sujet', 1, 0, 1, NOW(), NOW()),
(46, 116, 867, '2', 'Intervention tardive', 'Intervient quand problème visible<br>Quand ça perturbe<br>Sous la pression', 2, 0, 1, NOW(), NOW()),
(47, 116, 867, '3', 'Intervention rapide', 'Clarifie rapidement<br>Donne cadre d\\'échange<br>Stoppe la tension', 3, 0, 1, NOW(), NOW()),
(48, 116, 867, '4', 'Anticipation et transformation', 'Détecte les signaux faibles<br>Ouvre le dialogue<br>Transforme en amélioration', 4, 0, 1, NOW(), NOW()),

-- Question 868: Défendre un projet
(49, 116, 868, '1', 'Présentation simple', 'Présente le besoin<br>Espère que ça suffise<br>Pas de stratégie', 1, 0, 1, NOW(), NOW()),
(50, 116, 868, '2', 'Énergie sans stratégie', 'Défend avec énergie<br>Sans vraie stratégie<br>Manque de structure', 2, 0, 1, NOW(), NOW()),
(51, 116, 868, '3', 'Préparation ciblée', 'Prépare selon interlocuteur<br>Pense à ses intérêts<br>Arguments adaptés', 3, 0, 1, NOW(), NOW()),
(52, 116, 868, '4', 'Stratégie gagnant-gagnant', 'Construit autour de ses enjeux<br>Anticipe objections<br>Propose solution alignée', 4, 0, 1, NOW(), NOW()),

-- Question 869: Impact après intervention
(53, 116, 869, '1', 'Peu d\\'impact', 'Les gens écoutent<br>Peu de changements<br>Retour à la normale', 1, 0, 1, NOW(), NOW()),
(54, 116, 869, '2', 'Compréhension faible', 'Comprendent le message<br>Mais engagement faible<br>Pas d\\'action', 2, 0, 1, NOW(), NOW()),
(55, 116, 869, '3', 'Direction claire', 'Repartent avec direction<br>Actions à mener<br>Alignement', 3, 0, 1, NOW(), NOW()),
(56, 116, 869, '4', 'Motivation et action', 'Repartent motivés<br>Alignés et prêts<br>Engagement concret', 4, 0, 1, NOW(), NOW()),
(23, 116, 861, '3', 'Intégrer les perspectives', 'Analyser les différents points de vue<br>Chercher une solution équilibrée<br>Expliquer la décision', 3, 0, 1, NOW(), NOW()),
(24, 116, 861, '4', 'Co-construire la solution', 'Transformer le désaccord en opportunité<br>Créer une solution supérieure<br>Renforcer la collaboration', 4, 0, 1, NOW(), NOW()),

-- Module 117: Fonction 3 - Leadership d\\'équipe
-- Question 900: Confier des missions
(25, 117, 900, '1', 'Assigner des tâches', 'Donner une instruction précise<br>Fixer un délai<br>Contrôler le résultat', 1, 0, 1, NOW(), NOW()),
(26, 117, 900, '2', 'Clarifier les attentes', 'Définir le résultat attendu<br>Expliquer le contexte<br>Préciser les critères', 2, 0, 1, NOW(), NOW()),
(27, 117, 900, '3', 'Donner du sens', 'Expliquer l\\'impact de la mission<br>Relier aux objectifs de l\\'équipe<br>Définir les indicateurs', 3, 0, 1, NOW(), NOW()),
(28, 117, 900, '4', 'Développer l\\'autonomie', 'Relier à la vision stratégique<br>Définir le périmètre de décision<br>Fixer les critères de réussite', 4, 0, 1, NOW(), NOW()),

-- Question 901: Rôles et responsabilités
(29, 117, 901, '1', 'Organisation informelle', 'Chacun fait un peu de tout<br>Adapte selon urgences<br>Intervient si problème', 1, 0, 1, NOW(), NOW()),
(30, 117, 901, '2', 'Missions principales', 'Chacun connaît sa mission<br>Limites restent floues<br>Pas de formalisation', 2, 0, 1, NOW(), NOW()),
(31, 117, 901, '3', 'Rôles écrits', 'Responsabilités écrites<br>Chacun sait livrer<br>Limites claires', 3, 0, 1, NOW(), NOW()),
(32, 117, 901, '4', 'Autonomie complète', 'Périmètre de décision connu<br>Agit sans consulter<br>Responsabilisé', 4, 0, 1, NOW(), NOW()),

-- Question 902: Décisions importantes
(33, 117, 902, '1', 'Décision solo', 'Décide seul<br>Informe après<br>Centralise', 1, 0, 1, NOW(), NOW()),
(34, 117, 902, '2', 'Consultation de façade', 'Demande avis mais décision prise<br>Écoute superficielle<br>Fait semblant', 2, 0, 1, NOW(), NOW()),
(35, 117, 902, '3', 'Écoute réelle', 'Écoute vraiment avant de trancher<br>Prend en compte avis<br>Décide informé', 3, 0, 1, NOW(), NOW()),
(36, 117, 902, '4', 'Délégation intelligente', 'Délègue certaines décisions<br>Aide à apprendre<br>Développe l\\'autonomie', 4, 0, 1, NOW(), NOW()),

-- Question 903: Collaborateur progresse
(37, 117, 903, '1', 'Normal', 'C\\'est normal, il est payé pour ça<br>Félicite quand y pense<br>Pas d\\'action', 1, 0, 1, NOW(), NOW()),
(38, 117, 903, '2', 'Reconnaissance ponctuelle', 'Félicite quand y pense<br>Remarque positive rapide<br>Pas de suivi', 2, 0, 1, NOW(), NOW()),
(39, 117, 903, '3', 'Développement ciblé', 'Souligne les progrès<br>Donne plus responsabilités<br>Encourage', 3, 0, 1, NOW(), NOW()),
(40, 117, 903, '4', 'Développement stratégique', 'Cherche à le faire monter<br>Même s\\'il peut dépasser<br>Investit dans son talent', 4, 0, 1, NOW(), NOW()),

-- Question 904: Absence d'une semaine
(41, 117, 904, '1', 'Blocage total', 'Décisions bloquées<br>Personne n\\'ose agir<br>Paralysie', 1, 0, 1, NOW(), NOW()),
(42, 117, 904, '2', 'Fonctionnement partiel', 'Décisions mineures avancent<br>Autres attendent<br>Ralentissement', 2, 0, 1, NOW(), NOW()),
(43, 117, 904, '3', 'Avancement prudent', 'Équipe avance avec prudence<br>Prend initiatives simples<br>Autonomie limitée', 3, 0, 1, NOW(), NOW()),
(44, 117, 904, '4', 'Autonomie complète', 'Équipe agit avec confiance<br>Développée par vous<br>Performance maintenue', 4, 0, 1, NOW(), NOW()),

-- Question 905: Collaboration entre collaborateurs
(45, 117, 905, '1', 'Travail isolé', 'Chacun travaille de son côté<br>Pas de coopération<br>Individualisme', 1, 0, 1, NOW(), NOW()),
(46, 117, 905, '2', 'Coopération forcée', 'Coopèrent seulement si obligé<br>Minimalisme<br>Pas d\\'entraide', 2, 0, 1, NOW(), NOW()),
(47, 117, 905, '3', 'Entraide spontanée', 'S\\'entraident spontanément<br>Pour atteindre objectifs<br>Collaboration naturelle', 3, 0, 1, NOW(), NOW()),
(48, 117, 905, '4', 'Collaboration organisée', 'Partage de compétences organisé<br>Valorisé<br>Synergie', 4, 0, 1, NOW(), NOW()),

-- Question 906: Motivation de l'équipe
(49, 117, 906, '1', 'Peur et sécurité', 'Peur de l\\'erreur<br>Salaire et sécurité<br>Évitement', 1, 0, 1, NOW(), NOW()),
(50, 117, 906, '2', 'Sécurité matérielle', 'Salaire et sécurité<br>Conditions de travail<br>Stabilité', 2, 0, 1, NOW(), NOW()),
(51, 117, 906, '3', 'Reconnaissance', 'Reconnaissance et respect<br>Valorisation<br>Appartenance', 3, 0, 1, NOW(), NOW()),
(52, 117, 906, '4', 'Vision partagée', 'Adhésion au projet<br>Vision commune<br>Engagement', 4, 0, 1, NOW(), NOW()),

-- Question 907: Conflit entre collaborateurs
(53, 117, 907, '1', 'Évitement', 'Évite le sujet<br>Impose solution rapide<br>Ne gère pas', 1, 0, 1, NOW(), NOW()),
(54, 117, 907, '2', 'Arbitrage rapide', 'Écoute brièvement<br>Tranche rapidement<br>Pas d\\'analyse', 2, 0, 1, NOW(), NOW()),
(55, 117, 907, '3', 'Analyse et décision', 'Écoute les deux versions<br>Avant de décider<br>Justifie', 3, 0, 1, NOW(), NOW()),
(56, 117, 907, '4', 'Médiation constructive', 'Aide à comprendre le mécanisme<br>Fait progresser la collaboration<br>Transforme', 4, 0, 1, NOW(), NOW()),

-- Question 908: Bon résultat obtenu
(57, 117, 908, '1', 'Mise en avant personnelle', 'Parle de ce qu\\'il a fait<br>Montre son rôle<br>Centré sur soi', 1, 0, 1, NOW(), NOW()),
(58, 117, 908, '2', 'Remerciement rapide', 'Remercie rapidement<br>Passe à autre chose<br>Superficiel', 2, 0, 1, NOW(), NOW()),
(59, 117, 908, '3', 'Reconnaissance ciblée', 'Cite les contributeurs précis<br>Leur rôle exact<br>Valorise', 3, 0, 1, NOW(), NOW()),
(60, 117, 908, '4', 'Développement par la réussite', 'Met en valeur les talents<br>Explique l\\'importance<br>Renforce la confiance', 4, 0, 1, NOW(), NOW()),

-- Question 909: Observation sur une semaine
(61, 117, 909, '1', 'Fait à la place', 'Fait à la place des autres<br>Pour éviter erreurs<br>Contrôle constant', 1, 0, 1, NOW(), NOW()),
(62, 117, 909, '2', 'Contrôle permanent', 'Contrôle, corrige, vérifie<br>En permanence<br>Manque de confiance', 2, 0, 1, NOW(), NOW()),
(63, 117, 909, '3', 'Encadrement et aide', 'Explique, cadre, aide<br>Fait progresser<br>Accompagnement', 3, 0, 1, NOW(), NOW()),
(64, 117, 909, '4', 'Leadership mature', 'Structure, délègue, développe<br>Équipe autonome<br>Absence possible', 4, 0, 1, NOW(), NOW()),

-- Module 118: Fonction 4 - Maîtrise émotionnelle
-- Question 911: Quand on vous contredit
(37, 118, 911, '1', 'Mettre fin à la discussion', 'Couper court<br>C\\'est moi qui décide<br>Faire exécuter', 1, 0, 1, NOW(), NOW()),
(38, 118, 911, '2', 'Écoute fermée', 'Écouter mais rester fermé<br>Garder son point de vue<br>Ne pas changer', 2, 0, 1, NOW(), NOW()),
(39, 118, 911, '3', 'Demander arguments', 'Demander des arguments précis<br>Chercher à comprendre<br>Prendre en compte', 3, 0, 1, NOW(), NOW()),
(40, 118, 911, '4', 'Accueillir la contradiction', 'Transformer en meilleure décision<br>Améliorer la décision<br>Ouvrir au dialogue', 4, 0, 1, NOW(), NOW()),

-- Question 912: Projet échoué
(41, 118, 912, '1', 'Déstabilisation totale', 'Déstabilisé toute la journée<br>Incapable d\\'agir<br>Choc émotionnel', 1, 0, 1, NOW(), NOW()),
(42, 118, 912, '2', 'Fuite en avant', 'Passe vite à autre chose<br>Sans analyser<br>Évitement', 2, 0, 1, NOW(), NOW()),
(43, 118, 912, '3', 'Analyse des causes', 'Prend du recul<br>Cherche la cause<br>Comprendre', 3, 0, 1, NOW(), NOW()),
(44, 118, 912, '4', 'Correction systémique', 'Identifie la cause<br>Corrige le système<br>Prévient', 4, 0, 1, NOW(), NOW()),

-- Question 913: Environnement instable
(45, 118, 913, '1', 'Changement de direction', 'Change souvent de direction<br>Sous pression<br>Instable', 1, 0, 1, NOW(), NOW()),
(46, 118, 913, '2', 'Stabilité tendue', 'Garde le cap mais stress visible<br>Tension<br>Résistance', 2, 0, 1, NOW(), NOW()),
(47, 118, 913, '3', 'Stabilité émotionnelle', 'Stabilise les émotions<br>Clarifie les priorités<br>Apaise', 3, 0, 1, NOW(), NOW()),
(48, 118, 913, '4', 'Stabilité rassurante', 'Reste stable et rassurant<br>Transforme l\\'incertitude<br>Pilote', 4, 0, 1, NOW(), NOW()),

-- Question 914: Image sous pression
(49, 118, 914, '1', 'Imprévisible', 'Imprévisible ou nerveux<br>Réactif<br>Peu fiable', 1, 0, 1, NOW(), NOW()),
(50, 118, 914, '2', 'Sérieux tendu', 'Sérieux mais souvent tendu<br>Stress visible<br>Pression', 2, 0, 1, NOW(), NOW()),
(51, 118, 914, '3', 'Calme cohérent', 'Calme et cohérent<br>Stable<br>Fiable', 3, 0, 1, NOW(), NOW()),
(52, 118, 914, '4', 'Rassurant stable', 'Stable et rassurant<br>Même dans la tempête<br>Confiance', 4, 0, 1, NOW(), NOW()),

-- Question 915: Client agressif
(53, 118, 915, '1', 'Réaction défensive', 'Réagit immédiatement<br>Se défend<br>Agressivité', 1, 0, 1, NOW(), NOW()),
(54, 118, 915, '2', 'Coupure de l\\'échange', 'Coupe court pour éviter dégâts<br>Stoppe la situation<br>Fuite', 2, 0, 1, NOW(), NOW()),
(55, 118, 915, '3', 'Gestion calme', 'Reste calme<br>Écoute et propose solution<br>Apaise', 3, 0, 1, NOW(), NOW()),
(56, 118, 915, '4', 'Maîtrise de la situation', 'Calmes la situation<br>Protège l\\'image<br>Transforme en opportunité', 4, 0, 1, NOW(), NOW()),

-- Question 916: Conflit interne
(57, 118, 916, '1', 'Non-intervention', 'N\\'intervient pas<br>Ils doivent se débrouiller<br>Laisse faire', 1, 0, 1, NOW(), NOW()),
(58, 118, 916, '2', 'Arbitrage rapide', 'Tranche rapidement<br>Pour que ça s\\'arrête<br>Autoritaire', 2, 0, 1, NOW(), NOW()),
(59, 118, 916, '3', 'Analyse avant décision', 'Écoute les deux versions<br>Avant de décider<br>Juste', 3, 0, 1, NOW(), NOW()),
(60, 118, 916, '4', 'Utilisation constructive', 'Utilise le conflit pour clarifier<br>Améliorer l\\'organisation<br>Apprentissage', 4, 0, 1, NOW(), NOW()),

-- Question 917: Pression collective
(61, 118, 917, '1', 'Stress visible', 'Stress visible<br>L\\'équipe le ressent<br>Anxiété', 1, 0, 1, NOW(), NOW()),
(62, 118, 917, '2', 'Tension maintenue', 'Reste ferme mais ambiance tendue<br>Pression<br>Inconfort', 2, 0, 1, NOW(), NOW()),
(63, 118, 917, '3', 'Clarification et apaisement', 'Donne priorités claires<br>Rassure l\\'équipe<br>Organise', 3, 0, 1, NOW(), NOW()),
(64, 118, 917, '4', 'Sérénité et mobilisation', 'Maintient la sérénité<br>Mobilise vers plan précis<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 918: Traitement des tensions
(65, 118, 918, '1', 'Non-dits explosifs', 'Problèmes non-dits<br>Explosent éventuellement<br>Accumulation', 1, 0, 1, NOW(), NOW()),
(66, 118, 918, '2', 'Attente du conflit', 'Attend qu\\'un conflit éclate<br>Pour en parler<br>Réactif', 2, 0, 1, NOW(), NOW()),
(67, 118, 918, '3', 'Expression ouverte', 'Tensions exprimées ouvertement<br>Mais avec déclencheur<br>Progressif', 3, 0, 1, NOW(), NOW()),
(68, 118, 918, '4', 'Traitement proactif', 'Tensions abordées rapidement<br>Volonté de solution<br>Amélioration', 4, 0, 1, NOW(), NOW()),

-- Question 919: Image projetée sous pression
(69, 118, 919, '1', 'Imprévisibilité', 'On ne sait jamais comment réagir<br>Ambiance tendue<br>Insécurité', 1, 0, 1, NOW(), NOW()),
(70, 118, 919, '2', 'Stress visible', 'Il tient le cap mais stress visible<br>Tension<br>Pression', 2, 0, 1, NOW(), NOW()),
(71, 118, 919, '3', 'Calme et clarté', 'Il reste calme et donne consignes claires<br>Stabilité<br>Confiance', 3, 0, 1, NOW(), NOW()),
(72, 118, 919, '4', 'Protection et leadership', 'Garde calme, clarifie priorités<br>Protège l\\'équipe du stress<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- MODULE 119: Fonction 5 - Décision & Discernement analytique
-- Question 920: Premier réflexe face à décision importante
(73, 119, 920, '1', 'Décision rapide', 'Décide rapidement pour avancer<br>Même sans clarifier<br>Impulsif', 1, 0, 1, NOW(), NOW()),
(74, 119, 920, '2', 'Intuition dominante', 'Demande quelques avis<br>Mais tranche surtout à l\\'intuition<br>Peu d\\'analyse', 2, 0, 1, NOW(), NOW()),
(75, 119, 920, '3', 'Réflexion méthodique', 'Prend temps court pour réfléchir<br>Avant de décider<br>Structuré', 3, 0, 1, NOW(), NOW()),
(76, 119, 920, '4', 'Analyse stratégique', 'Clarifie enjeux et conséquences<br>Décide en cohérence<br>Aligné', 4, 0, 1, NOW(), NOW()),

-- Question 921: Manque d'informations claires
(77, 119, 921, '1', 'Blocage et report', 'Bloque et reporte la décision<br>Paralysie<br>Inaction', 1, 0, 1, NOW(), NOW()),
(78, 119, 921, '2', 'Décision rapide', 'Décide vite pour sortir incertitude<br>Prendre un risque<br>Pression', 2, 0, 1, NOW(), NOW()),
(79, 119, 921, '3', 'Décision avec risque mesuré', 'Décide avec éléments disponibles<br>Accepte risque mesuré<br>Réfléchi', 3, 0, 1, NOW(), NOW()),
(80, 119, 921, '4', 'Hypothèses et plan de secours', 'Pose hypothèses claires<br>Identifie risque principal<br>Avance avec plan B', 4, 0, 1, NOW(), NOW()),

-- Question 922: Décision qui se révèle erreur
(81, 119, 922, '1', 'Justification externe', 'Explique que contexte était difficile<br>Ou que les autres n\\'ont pas bien exécuté<br>Défensive', 1, 0, 1, NOW(), NOW()),
(82, 119, 922, '2', 'Reconnaissance rapide', 'Reconnaît s\\'être trompé<br>Mais passe vite à autre chose<br>Superficiel', 2, 0, 1, NOW(), NOW()),
(83, 119, 922, '3', 'Analyse précise', 'Prend temps d\\'analyser où erreur<br>Raisonnement ou informations insuffisantes<br>Apprentissage', 3, 0, 1, NOW(), NOW()),
(84, 119, 922, '4', 'Analyse de processus', 'Analyse processus de décision<br>Hypothèses, critères, signaux ignorés<br>Ajuste méthode', 4, 0, 1, NOW(), NOW()),

-- Question 923: Avis contradictoires
(85, 119, 923, '1', 'Autorité affirmée', 'Rappelle que c\\'est moi qui décide<br>Tranche rapidement<br>Autoritaire', 1, 0, 1, NOW(), NOW()),
(86, 119, 923, '2', 'Confirmation personnelle', 'Écoute mais choisit surtout ce qui rassure<br>Confirme ce qu\\'il pensait déjà<br>Biais', 2, 0, 1, NOW(), NOW()),
(87, 119, 923, '3', 'Écoute objective', 'Écoute réellement les arguments<br>Pose des questions<br>Décide sur les faits', 3, 0, 1, NOW(), NOW()),
(88, 119, 923, '4', 'Intégration et décision', 'Prend temps d\\'évaluer conséquences<br>Tranche clairement et explique<br>Même si désaccord', 4, 0, 1, NOW(), NOW()),

-- Question 924: Rapport au risque
(89, 119, 924, '1', 'Ignorance des risques', 'Décide sans analyser les risques<br>Verra bien ce qui se passe<br>Inconscience', 1, 0, 1, NOW(), NOW()),
(90, 119, 924, '2', 'Analyse superficielle', 'Pense rapidement aux conséquences<br>Surtout financières<br>Avance', 2, 0, 1, NOW(), NOW()),
(91, 119, 924, '3', 'Analyse structurée', 'Prend temps d\\'identifier risques principaux<br>Argent, image, équipe, délais<br>Avant d\\'agir', 3, 0, 1, NOW(), NOW()),
(92, 119, 924, '4', 'Gestion proactive des risques', 'Identifie risques majeurs<br>Évalue impact possible<br>Prévoit quoi faire si survient', 4, 0, 1, NOW(), NOW()),

-- Question 925: Après décision importante
(93, 119, 925, '1', 'Passer à autre chose', 'Passe à autre chose<br>Si personne ne se plaint<br>Considère que c\\'est bon', 1, 0, 1, NOW(), NOW()),
(94, 119, 925, '2', 'Vérification rapide', 'Regarde rapidement si ça semble marcher<br>Sans suivi précis<br>Superficiel', 2, 0, 1, NOW(), NOW()),
(95, 119, 925, '3', 'Suivi des résultats', 'Vérifie résultats concrets<br>Par rapport à attentes<br>Délais, coûts, performance', 3, 0, 1, NOW(), NOW()),
(96, 119, 925, '4', 'Analyse et amélioration', 'Analyse résultats et écarts<br>Améliore façon de décider<br>Pour prochaine fois', 4, 0, 1, NOW(), NOW()),

-- Question 926: Capacité à trancher
(97, 119, 926, '1', 'Hésitation et peur', 'Souvent retardées par hésitation<br>Peur de se tromper<br>Paralysie', 1, 0, 1, NOW(), NOW()),
(98, 119, 926, '2', 'Décision sous pression', 'Prises rapidement sous pression<br>Mais sans analyse suffisante<br>Réactif', 2, 0, 1, NOW(), NOW()),
(99, 119, 926, '3', 'Décision réfléchie', 'Réfléchies, structurées<br>Assumées même si difficiles<br>Mature', 3, 0, 1, NOW(), NOW()),
(100, 119, 926, '4', 'Décision stratégique', 'Réfléchies, alignées avec stratégie<br>Assumées fermement<br>Même sous pression', 4, 0, 1, NOW(), NOW()),

-- Question 927: Plusieurs options possibles
(101, 119, 927, '1', 'Choix le plus simple', 'Choit option la plus simple<br>Ou la plus rapide<br>Pour avancer', 1, 0, 1, NOW(), NOW()),
(102, 119, 927, '2', 'Moins risquée', 'Choit ce qui semble moins risqué<br>Même si gain limité<br>Prudence', 2, 0, 1, NOW(), NOW()),
(103, 119, 927, '3', 'Analyse comparative', 'Compare clairement avantages/inconvénients<br>Et impacts de chaque option<br>Avant d\\'arbitrer', 3, 0, 1, NOW(), NOW()),
(104, 119, 927, '4', 'Analyse multicritères', 'Évalue impacts financiers, humains, opérationnels<br>Et stratégiques<br>Avant d\\'arbitrer', 4, 0, 1, NOW(), NOW()),

-- Question 928: En situation d'urgence
(105, 119, 928, '1', 'Recherche de coupables', 'Mettre en avant circonstances<br>Ou erreurs des autres<br>Pour expliquer', 1, 0, 1, NOW(), NOW()),
(106, 119, 928, '2', 'Justification longue', 'Justifie longuement sa décision<br>Pour montrer bonnes raisons<br>Défensif', 2, 0, 1, NOW(), NOW()),
(107, 119, 928, '3', 'Assumer clairement', 'Assumer clairement sa décision<br>Et ses conséquences<br>Responsable', 3, 0, 1, NOW(), NOW()),
(108, 119, 928, '4', 'Assumer publiquement', 'Assumer publiquement<br>Analyser ce qui doit évoluer<br>Transformer l\\'erreur en apprentissage', 4, 0, 1, NOW(), NOW()),

-- Question 929: Posture réelle face aux décisions
(109, 119, 929, '1', 'Décision sous pression', 'Décide surtout sous pression<br>Pour soulager situation<br>Urgence', 1, 0, 1, NOW(), NOW()),
(110, 119, 929, '2', 'Influence émotionnelle', 'Réfléchit un minimum<br>Mais se laisse influencer<br>Par urgence, émotion, avis dominant', 2, 0, 1, NOW(), NOW()),
(111, 119, 929, '3', 'Analyse méthodique', 'Prend temps de comparer options<br>Et mesurer conséquences<br>Avant de trancher', 3, 0, 1, NOW(), NOW()),
(112, 119, 929, '4', 'Décision stratégique', 'Décide avec méthode et lucidité<br>Vérifie cohérence avec vision<br>Risques assumés, impact long terme', 4, 0, 1, NOW(), NOW()),

-- MODULE 120: Fonction 6 - Adaptabilité & Conduite du changement
-- Question 930: Environnement change
(113, 120, 930, '1', 'Prise de conscience tardive', 'S\\'en rend compte quand trésorerie baisse<br>Ou ventes chutent déjà<br>Réaction', 1, 0, 1, NOW(), NOW()),
(114, 120, 930, '2', 'Observation passive', 'Voit que ça change<br>Mais attend impact réel<br>Passivité', 2, 0, 1, NOW(), NOW()),
(115, 120, 930, '3', 'Surveillance active', 'Surveille prix, comportements clients<br>Décisions publiques<br>Ajuste progressivement', 3, 0, 1, NOW(), NOW()),
(116, 120, 930, '4', 'Anticipation stratégique', 'Essaye de prévoir changements<br>Nouveaux coûts, concurrents, règles<br>Adapte avant pénalisation', 4, 0, 1, NOW(), NOW()),

-- Question 931: Résultats habituels ne fonctionnent plus
(117, 120, 931, '1', 'Continuer pareil', 'Continue pareil en espérant<br>Que le marché va repartir<br>Attente', 1, 0, 1, NOW(), NOW()),
(118, 120, 931, '2', 'Changement rapide', 'Change quelque chose rapidement<br>Pour voir si ça marche<br>Test rapide', 2, 0, 1, NOW(), NOW()),
(119, 120, 931, '3', 'Analyse avant modification', 'Prend temps d\\'analyser ce qui bloque<br>Avant de modifier<br>Compréhension', 3, 0, 1, NOW(), NOW()),
(120, 120, 931, '4', 'Test méthodique', 'Test ajustement précis<br>Observe résultats<br>Puis décide d\\'étendre', 4, 0, 1, NOW(), NOW()),

-- Question 932: Changer une façon de travailler
(121, 120, 932, '1', 'Peur du changement', 'Préfère attendre<br>Parce que changer crée désordre<br>Résistance', 1, 0, 1, NOW(), NOW()),
(122, 120, 932, '2', 'Communication simple', 'Annonce nouvelle règle<br>Laisse chacun s\\'adapter<br>Pas d\\'accompagnement', 2, 0, 1, NOW(), NOW()),
(123, 120, 932, '3', 'Explication et accompagnement', 'Explique pourquoi on change<br>Et accompagne les premières étapes<br>Pédagogie', 3, 0, 1, NOW(), NOW()),
(124, 120, 932, '4', 'Préparation et pilotage', 'Prépare le changement à l\\'avance<br>Explique contexte, étapes, suivi<br>Aide à appropriation', 4, 0, 1, NOW(), NOW()),

-- Question 933: Équipe résiste au changement
(125, 120, 933, '1', 'Laisser tomber', 'Laisser tomber pour éviter tensions<br>Ne pas insister<br>Abandon', 1, 0, 1, NOW(), NOW()),
(126, 120, 933, '2', 'Maintien sans adaptation', 'Maintient la décision sans vraiment traiter<br>Les objections<br>Rigidité', 2, 0, 1, NOW(), NOW()),
(127, 120, 933, '3', 'Clarification et écoute', 'Clarifie rapidement les faits<br>Donne cadre d\\'échange<br>Écoute les inquiétudes', 3, 0, 1, NOW(), NOW()),
(128, 120, 933, '4', 'Transformation collaborative', 'Aide les deux personnes à comprendre<br>Le mécanisme du conflit<br>Progresser dans la collaboration', 4, 0, 1, NOW(), NOW()),

-- Question 934: Changer de direction
(129, 120, 934, '1', 'Réaction sous pression', 'Change souvent de direction<br>Sous la pression<br>Instabilité', 1, 0, 1, NOW(), NOW()),
(130, 120, 934, '2', 'Stabilité tendue', 'Garde le cap mais stress visible<br>Tension visible<br>Résistance', 2, 0, 1, NOW(), NOW()),
(131, 120, 934, '3', 'Stabilisation émotionnelle', 'Stabilise les émotions<br>Clarifie les priorités<br>Apaise', 3, 0, 1, NOW(), NOW()),
(132, 120, 934, '4', 'Stabilité transformationnelle', 'Reste stable et rassurant<br>Transforme l\\'incertitude<br>Pilote la transition', 4, 0, 1, NOW(), NOW()),

-- Question 935: Après changement important
(133, 120, 935, '1', 'Laisser faire', 'Laisse faire sans suivi<br>Chacun s\\'adapte comme il peut<br>Anarchie', 1, 0, 1, NOW(), NOW()),
(134, 120, 935, '2', 'Suivi minimal', 'Suit un peu<br>Adapte si nécessaire<br>Passif', 2, 0, 1, NOW(), NOW()),
(135, 120, 935, '3', 'Suivi actif', 'Suit activement les changements<br>S\\'adapte en continu<br>Réactif', 3, 0, 1, NOW(), NOW()),
(136, 120, 935, '4', 'Pilotage proactif', 'Pilote activement les changements<br>S\\'adapte et fait évoluer<br>Proactif', 4, 0, 1, NOW(), NOW()),

-- Question 936: Changement imprévu
(137, 120, 936, '1', 'Réaction défensive', 'Réagit défensivement<br>Se sent attaqué<br>Protection', 1, 0, 1, NOW(), NOW()),
(138, 120, 936, '2', 'Acceptation contrainte', 'Accepte mais contraint<br>S\\'adapte sans choix<br>Résigné', 2, 0, 1, NOW(), NOW()),
(139, 120, 936, '3', 'Adaptation réfléchie', 'Réfléchit avant d\\'adapter<br>Cherche la meilleure solution<br>Intelligent', 3, 0, 1, NOW(), NOW()),
(140, 120, 936, '4', 'Transformation opportuniste', 'Transforme le changement en opportunité<br>Cherche le bénéfice<br>Créatif', 4, 0, 1, NOW(), NOW()),

-- Question 937: Annoncer changement à l'équipe
(141, 120, 937, '1', 'Communication autoritaire', 'Annonce la décision<br>Laisse s\\'adapter<br>Commandement', 1, 0, 1, NOW(), NOW()),
(142, 120, 937, '2', 'Communication simple', 'Explique rapidement<br>Ne gère pas vraiment les réactions<br>Minimaliste', 2, 0, 1, NOW(), NOW()),
(143, 120, 937, '3', 'Communication pédagogique', 'Explique le pourquoi du changement<br>Et les bénéfices attendus<br>Persuasif', 3, 0, 1, NOW(), NOW()),
(144, 120, 937, '4', 'Communication inclusive', 'Explique le contexte, écoute les inquiétudes<br>Implique l\\'équipe dans la solution<br>Collaboratif', 4, 0, 1, NOW(), NOW()),

-- Question 938: Décider de changer quelque chose
(145, 120, 938, '1', 'Réaction à problème', 'Décide de changer quand problème<br>Réactif<br>Urgence', 1, 0, 1, NOW(), NOW()),
(146, 120, 938, '2', 'Opportunité ponctuelle', 'Change quand opportunité imprévue<br>Stratégie opportuniste<br>Réactif', 2, 0, 1, NOW(), NOW()),
(147, 120, 938, '3', 'Analyse stratégique', 'Analyse avant de décider<br>Changement réfléchi<br>Planifié', 3, 0, 1, NOW(), NOW()),
(148, 120, 938, '4', 'Vision anticipatrice', 'Anticipe les besoins de changement<br>Planifie proactivement<br>Stratégique', 4, 0, 1, NOW(), NOW()),

-- Question 939: Posture dominante face au changement
(149, 120, 939, '1', 'Subir et subir', 'Celui qui subit et essaie<br>De limiter les dégâts<br>Réactif', 1, 0, 1, NOW(), NOW()),
(150, 120, 939, '2', 'S\\'adapter sous pression', 'Celui qui s\\'adapte<br>Quand la pression est forte<br>Réactif', 2, 0, 1, NOW(), NOW()),
(151, 120, 939, '3', 'Ajuster avec méthode', 'Celui qui ajuste<br>Avec méthode et calme<br>Adaptatif', 3, 0, 1, NOW(), NOW()),
(152, 120, 939, '4', 'Piloter la transition', 'Celui qui anticipe<br>Pilote la transition<br>Transforme en avantage', 4, 0, 1, NOW(), NOW()),
(2005, 39, 291, '2', 'Optimiser financièrement', 'Utiliser des outils de prévision<br>Gérer proactivement la trésorerie<br>Financer la croissance', 3, 0, 1, NOW(), NOW()),

-- Module 40: Bloc 3 - Juridique (Pépite)
-- Question 292: Conformité légale
(2006, 40, 292, '0', 'Vérifier la base', 'Identifier les obligations principales<br>Consulter les informations officielles<br>Régulariser les urgences', 1, 0, 1, NOW(), NOW()),
(2007, 40, 292, '1', 'Structurer la conformité', 'Créer un calendrier des échéances<br>Mettre à jour les documents<br>Suivre les obligations', 2, 0, 1, NOW(), NOW()),
(2008, 40, 292, '2', 'Anticiper juridiquement', 'Mettre en place une veille<br>Optimiser la structure<br>Prévenir les risques', 3, 0, 1, NOW(), NOW()),

-- MODULE 121: Fonction 7 - Orientation client & Création de valeur
-- Question 940: Pourquoi les clients vous choisissent
(153, 121, 940, '1', 'Réputation et confiance', 'Clients viennent par confiance<br>Réputation établie<br>Relation de confiance', 1, 0, 1, NOW(), NOW()),
(154, 121, 940, '2', 'Prix compétitif', 'Clients viennent pour prix<br>Avantage concurrentiel<br>Sensibilité au coût', 2, 0, 1, NOW(), NOW()),
(155, 121, 940, '3', 'Qualité et service', 'Clients viennent pour qualité<br>Service excellent<br>Excellence opérationnelle', 3, 0, 1, NOW(), NOW()),
(154, 121, 940, '4', 'Valeur unique', 'Clients viennent pour valeur unique<br>Différenciation forte<br>Proposition irrésistible', 4, 0, 1, NOW(), NOW()),

-- Question 941: Comprendre les besoins clients
(155, 121, 941, '1', 'Perception intuitive', 'Pense savoir ce qu\\'ils veulent<br>Basé sur l\\'expérience<br>Intuition', 1, 0, 1, NOW(), NOW()),
(156, 121, 941, '2', 'Écoute superficielle', 'Écoute mais de surface<br>Comprend partiellement<br>Interprétation', 2, 0, 1, NOW(), NOW()),
(157, 121, 941, '3', 'Analyse active', 'Pose des questions<br>Observe les comportements<br>Analyse les demandes', 3, 0, 1, NOW(), NOW()),
(158, 121, 941, '4', 'Compréhension profonde', 'Comprend vraiment les besoins<br>Y compris les implicites<br>Anticipe les besoins', 4, 0, 1, NOW(), NOW()),

-- Question 942: Client important part
(159, 121, 942, '1', 'Réaction émotionnelle', 'Vit le départ comme une perte<br>Réaction émotionnelle<br>Déception', 1, 0, 1, NOW(), NOW()),
(160, 121, 942, '2', 'Analyse rapide', 'Analyse rapidement les raisons<br>Sans action profonde<br>Compréhension limitée', 2, 0, 1, NOW(), NOW()),
(161, 121, 942, '3', 'Analyse et ajustement', 'Analyse les raisons du départ<br>Ajuste l\\'offre<br>Amélioration', 3, 0, 1, NOW(), NOW()),
(162, 121, 942, '4', 'Stratégie de fidélisation', 'Analyse et anticipe les départs<br>Développe la fidélisation<br>Crée des barrières', 4, 0, 1, NOW(), NOW()),

-- Question 943: Fixation des prix
(163, 121, 943, '1', 'Prix intuitif', 'Fixe les prix intuitivement<br>Basé sur coûts ou concurrence<br>Peu de méthode', 1, 0, 1, NOW(), NOW()),
(164, 121, 943, '2', 'Prix concurrentiel', 'Fixe les prix par rapport à concurrence<br>Alignement sur le marché<br>Suivi passif', 2, 0, 1, NOW(), NOW()),
(165, 121, 943, '3', 'Prix basé sur valeur', 'Fixe les prix selon la valeur perçue<br>Justifie par les bénéfices<br>Communication claire', 3, 0, 1, NOW(), NOW()),
(166, 121, 943, '4', 'Prix stratégique', 'Fixe les prix stratégiquement<br>Positionnement ciblé<br>Optimisation rentabilité', 4, 0, 1, NOW(), NOW()),

-- Question 944: Différence sur le marché
(167, 121, 944, '1', 'Pas de différenciation', 'Ne sait pas vraiment ce qui le différencie<br>Produit/service standard<br>Concurrence forte', 1, 0, 1, NOW(), NOW()),
(168, 121, 944, '2', 'Différenciation opérationnelle', 'Se différencie par la façon de faire<br>Processus ou service<br>Efficacité', 2, 0, 1, NOW(), NOW()),
(169, 121, 944, '3', 'Différenciation par l\\'offre', 'Se différencie par l\\'offre<br>Caractéristiques uniques<br>Valeur ajoutée', 3, 0, 1, NOW(), NOW()),
(170, 121, 944, '4', 'Différenciation stratégique', 'Se différencie par la stratégie<br>Positionnement unique<br>Modèle économique', 4, 0, 1, NOW(), NOW()),

-- Question 945: Après la vente
(171, 121, 945, '1', 'Fin de la transaction', 'Après la vente, plus rien<br>Transaction terminée<br>Pas de suivi', 1, 0, 1, NOW(), NOW()),
(172, 121, 945, '2', 'Service de base', 'Assure le service de base<br>Répond aux problèmes<br>Minimum', 2, 0, 1, NOW(), NOW()),
(173, 121, 945, '3', 'Service proactif', 'Suit activement le client<br>Anticipe les besoins<br>Relation continue', 3, 0, 1, NOW(), NOW()),
(174, 121, 945, '4', 'Partenariat stratégique', 'Développe un partenariat stratégique<br>Crée de la valeur continue<br>Co-évolution', 4, 0, 1, NOW(), NOW()),

-- Question 946: Insatisfaction client
(175, 121, 946, '1', 'Défensive', 'Se sent attaqué<br>Justifie le produit/service<br>Défensive', 1, 0, 1, NOW(), NOW()),
(176, 121, 946, '2', 'Correction rapide', 'Corrige rapidement le problème<br>Sans analyse profonde<br>Réaction', 2, 0, 1, NOW(), NOW()),
(177, 121, 946, '3', 'Analyse et amélioration', 'Analyse l\\'insatisfaction<br>Améliore le produit/service<br>Apprentissage', 3, 0, 1, NOW(), NOW()),
(178, 121, 946, '4', 'Transformation en opportunité', 'Transforme l\\'insatisfaction en opportunité<br>Renforce la relation<br>Innovation', 4, 0, 1, NOW(), NOW()),

-- Question 947: Concurrent baisse les prix
(179, 121, 947, '1', 'Réaction paniquée', 'Baisse les prix aussi<br>Guerre des prix<br>Alignement forcé', 1, 0, 1, NOW(), NOW()),
(180, 121, 947, '2', 'Maintien des prix', 'Maintient ses prix<br>Justifie la valeur<br>Communication', 2, 0, 1, NOW(), NOW()),
(181, 121, 947, '3', 'Analyse stratégique', 'Analyse l\\'impact<br>Adapte l\\'offre si nécessaire<br>Décision réfléchie', 3, 0, 1, NOW(), NOW()),
(182, 121, 947, '4', 'Différenciation renforcée', 'Renforce la différenciation<br>Justifie la valeur supérieure<br>Positionnement premium', 4, 0, 1, NOW(), NOW()),

-- Question 948: Évolution du marché
(183, 121, 948, '1', 'Passivité', 'Observe passivement l\\'évolution<br>Sans action proactive<br>Suivi minimal', 1, 0, 1, NOW(), NOW()),
(184, 121, 948, '2', 'Réactivité', 'Réagit quand le marché évolue<br>S\\'adapte aux changements<br>Réactif', 2, 0, 1, NOW(), NOW()),
(185, 121, 948, '3', 'Anticipation', 'Anticipe les évolutions<br>Prépare les adaptations<br>Proactif', 3, 0, 1, NOW(), NOW()),
(186, 121, 948, '4', 'Innovation', 'Innove dans l\\'évolution<br>Crée les tendances<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 949: Développer nouvelle offre
(187, 121, 949, '1', 'Extension simple', 'Développe l\\'offre existante<br>Ajoute des fonctionnalités<br>Extension naturelle', 1, 0, 1, NOW(), NOW()),
(188, 121, 949, '2', 'Amélioration progressive', 'Améliore l\\'offre existante<br>Basé sur retours clients<br>Itératif', 2, 0, 1, NOW(), NOW()),
(189, 121, 949, '3', 'Innovation ciblée', 'Innove sur des points spécifiques<br>Répond à nouveaux besoins<br>Créativité', 3, 0, 1, NOW(), NOW()),
(190, 121, 949, '4', 'Révolution de l\\'offre', 'Révolutionne l\\'offre<br>Crée de nouvelles catégories<br>Disruption', 4, 0, 1, NOW(), NOW()),
(3000, 125, 918, '0', 'Définir la direction', 'Formaliser la mission principale<br>Identifier les objectifs à 3 ans<br>Partager avec l\\'équipe', 1, 0, 1, NOW(), NOW()),
(3001, 125, 918, '1', 'Structurer la stratégie', 'Documenter le business model<br>Définir les indicateurs clés<br>Créer un plan d\\'action', 2, 0, 1, NOW(), NOW()),
(3002, 125, 918, '2', 'Piloter stratégiquement', 'Utiliser la stratégie pour décider<br>Suivre les indicateurs mensuellement<br>Ajuster trimestriellement', 3, 0, 1, NOW(), NOW()),

-- Question 919: Modèle économique
(3003, 125, 919, '0', 'Comprendre le modèle', 'Analyser les sources de revenus<br>Identifier les coûts principaux<br>Décrire la valeur ajoutée', 1, 0, 1, NOW(), NOW()),
(3004, 125, 919, '1', 'Optimiser le modèle', 'Analyser la rentabilité<br>Identifier les leviers de croissance<br>Tester des améliorations', 2, 0, 1, NOW(), NOW()),
(3005, 125, 919, '2', 'Innover le modèle', 'Explorer de nouvelles sources<br>Développer l\\'offre<br>Préparer l\\'échelle', 3, 0, 1, NOW(), NOW()),

-- MODULE 122: Fonction 8 - Initiative et Responsabilité entrepreneuriale
-- Question 950: Problème apparaît
(161, 122, 950, '1', 'Réaction immédiate', 'Réagit immédiatement au problème<br>Cherche la solution rapide<br>Réactif', 1, 0, 1, NOW(), NOW()),
(162, 122, 950, '2', 'Analyse rapide', 'Analyse rapidement le problème<br>Cherche la cause<br>Résolution rapide', 2, 0, 1, NOW(), NOW()),
(163, 122, 950, '3', 'Analyse structurée', 'Analyse en profondeur le problème<br>Identifie les causes racines<br>Solution durable', 3, 0, 1, NOW(), NOW()),
(164, 122, 950, '4', 'Prévention systématique', 'Identifie les problèmes récurrents<br>Met en place des solutions préventives<br>Amélioration continue', 4, 0, 1, NOW(), NOW()),

-- Question 951: Pas d'urgence
(165, 122, 951, '1', 'Attente passive', 'N\\'agit pas s\\'il n\\'y a pas d\\'urgence<br>Attend que les problèmes arrivent<br>Passivité', 1, 0, 1, NOW(), NOW()),
(166, 122, 951, '2', 'Réflexion occasionnelle', 'Réfléchit quand le temps est disponible<br>Anticipe parfois<br>Préparation', 2, 0, 1, NOW(), NOW()),
(167, 122, 951, '3', 'Planification stratégique', 'Utilise le temps pour réfléchir<br>Planifie les actions importantes<br>Stratégique', 3, 0, 1, NOW(), NOW()),
(168, 122, 951, '4', 'Investissement proactif', 'Investit dans l\\'avenir<br>Travaille sur les sujets importants<br>Vision long terme', 4, 0, 1, NOW(), NOW()),

-- Question 952: Opportunité imprévue
(169, 122, 952, '1', 'Saisir l\\'opportunité', 'Saisit l\\'opportunité rapidement<br>En profite sans hésiter<br>Réactif', 1, 0, 1, NOW(), NOW()),
(170, 122, 952, '2', 'Évaluation rapide', 'Évalue rapidement l\\'opportunité<br>Pas d\\'analyse profonde<br>Décision rapide', 2, 0, 1, NOW(), NOW()),
(171, 122, 952, '3', 'Analyse et décision', 'Analyse l\\'opportunité en détail<br>Évalue les risques et bénéfices<br>Décision informée', 3, 0, 1, NOW(), NOW()),
(172, 122, 952, '4', 'Stratégie d\\'opportunité', 'Intègre l\\'opportunité dans la stratégie<br>Planifie l\\'exploitation<br>Maximisation', 4, 0, 1, NOW(), NOW()),

-- Question 953: Objectif non atteint
(173, 122, 953, '1', 'Justification externe', 'Explique que les conditions étaient difficiles<br>Blame les facteurs externes<br>Défensif', 1, 0, 1, NOW(), NOW()),
(174, 122, 953, '2', 'Analyse partielle', 'Analyse partiellement les raisons<br>Identifie quelques facteurs<br>Compréhension limitée', 2, 0, 1, NOW(), NOW(), NOW()),
(175, 122, 953, '3', 'Analyse complète', 'Analyse complètement les raisons<br>Identifie toutes les causes<br>Compréhension totale', 3, 0, 1, NOW(), NOW(), NOW()),
(176, 122, 953, '4', 'Apprentissage systématique', 'Analyse et apprend systématiquement<br>Intègre les leçons apprises<br>Amélioration continue', 4, 0, 1, NOW(), NOW()),

-- Question 954: Sujet important pour l'avenir
(177, 122, 954, '1', 'Report sous pression', 'Reporte sous la pression<br>Quand la pression est trop forte<br>Reporte', 1, 0, 1, NOW(), NOW()),
(178, 122, 954, '2', 'Gestion du temps', 'Gère mal son temps<br>Entre urgence et importance<br>Désorganisation', 2, 0, 1, NOW(), NOW()),
(179, 122, 954, '3', 'Priorisation stratégique', 'Priorise selon l\\'importance stratégique<br>Alloue le temps judicieusement<br>Équilibre', 3, 0, 1, NOW(), NOW()),
(180, 122, 954, '4', 'Leadership temporel', 'Maîtrise son temps<br>Alloue du temps aux sujets importants<br>Vision long terme', 4, 0, 1, NOW(), NOW()),

-- Question 955: Sujet important en attente
(181, 122, 955, '1', 'Oubli ou report', 'Oublie ou reporte le sujet<br>Les problèmes s\\'accumulent<br>Crise', 1, 0, 1, NOW(), NOW()),
(182, 122, 955, '2', 'Traitement quand urgent', 'Traite le sujet quand il devient urgent<br>Sous la pression<br>Réactif', 2, 0, 1, NOW(), NOW()),
(183, 122, 955, '3', 'Planification progressive', 'Planifie le traitement progressif<br>Décide des étapes claires<br>Organisation', 3, 0, 1, NOW(), NOW(), NOW()),
(184, 122, 955, '4', 'Stratégie de développement', 'Intègre le sujet dans la stratégie<br>Développe un plan de mise en œuvre<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 956: Résultats insuffisants
(185, 122, 956, '1', 'Inquiétude et frustration', 'Exprime l\\'inquiétude<br>Se sent frustré<br>Démotivation', 1, 0, 1, NOW(), NOW()),
(186, 122, 956, '2', 'Pression accrue', 'Augmente la pression<br>Demande plus d\\'efforts<br>Épuisement', 2, 0, 1, NOW(), NOW()),
(187, 122, 956, '3', 'Analyse et ajustement', 'Analyse les causes des insuffisances<br>Ajuste les méthodes<br>Amélioration', 3, 0, 1, NOW(), NOW(), NOW()),
(188, 122, 956, '4', 'Transformation de l\\'approche', 'Transforme l\\'approche du travail<br>Cherche l\\'efficacité<br>Innovation', 4, 0, 1, NOW(), NOW()),

-- Question 957: Difficulté nouvelle et imprévue
(189, 122, 957, '1', 'Réaction de survie', 'Réagit pour survivre<br>Cherche des solutions rapides<br>Créativité sous contrainte', 1, 0, 1, NOW(), NOW()),
(190, 122, 957, '2', 'Adaptation contrainte', 'S\\'adapte à la difficulté<br>Fait de son mieux<br>Résilience', 2, 0, 1, NOW(), NOW()),
(191, 122, 957, '3', 'Analyse créative', 'Analyse la difficulté<br>Cherche des solutions créatives<br>Innovation', 3, 0, 1, NOW(), NOW(), NOW()),
(192, 122, 957, '4', 'Transformation en opportunité', 'Transforme la difficulté en opportunité<br>Crée de nouvelles solutions<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 958: Risque commence à apparaître
(193, 122, 958, '1', 'Ignorance du risque', 'Ignore les signaux de risque<br>Pas de préparation<br>Vulnérabilité', 1, 0, 1, NOW(), NOW()),
(194, 122, 958, '2', 'Surveillance passive', 'Surveille les risques<br>Quand ils apparaissent<br>Réactif', 2, 0, 1, NOW(), NOW(), NOW()),
(195, 122, 958, '3', 'Gestion active', 'Gère activement les risques<br>Anticipe les impacts<br>Prévention', 3, 0, 1, NOW(), NOW(), NOW()),
(196, 122, 958, '4', 'Gouvernance du risque', 'Intègre les risques dans la gouvernance<br>Anticipe les menaces<br>Stratégie', 4, 0, 1, NOW(), NOW()),

-- Question 959: Réaction face à ce qui fonctionne déjà bien
(197, 122, 959, '1', 'Peu d\\'intérêt', 'Ne s\\'intéresse pas à ce qui fonctionne<br>Se concentre sur les problèmes<br>Négatif', 1, 0, 1, NOW(), NOW()),
(198, 122, 959, '2', 'Amélioration continue', 'Cherche à améliorer ce qui fonctionne<br>Même si ça marche bien<br>Optimisation', 2, 0, 1, NOW(), NOW(), NOW()),
(199, 122, 959, '3', 'Renforcement et optimisation', 'Renforce ce qui fonctionne<br>Optimise les processus<br>Excellence', 3, 0, 1, NOW(), NOW(), NOW()),
(200, 122, 959, '4', 'Innovation par l\\'expérience', 'Innove à partir de ce qui fonctionne<br>Crée de nouvelles opportunités<br>Leadership', 4, 0, 1, NOW(), NOW()),
-- MODULE 123: Fonction 9 - Innovation & Créativité
-- Question 960: Même problème revient
(201, 123, 960, '1', 'Réaction répétée', 'Réagit de la même manière<br>Chaque fois que le problème revient<br>Répétitif', 1, 0, 1, NOW(), NOW()),
(202, 123, 960, '2', 'Analyse superficielle', 'Analyse superficiellement les causes<br>Cherche des solutions rapides<br>Insuffisant', 2, 0, 1, NOW(), NOW()),
(203, 123, 960, '3', 'Analyse en profondeur', 'Analyse en profondeur les causes<br>Cherche les causes racines<br>Systématique', 3, 0, 1, NOW(), NOW()),
(204, 123, 960, '4', 'Prévention systémique', 'Identifie les causes systémiques<br>Met en place des solutions préventives<br>Innovation', 4, 0, 1, NOW(), NOW()),

-- Question 961: Contrainte locale forte
(205, 123, 961, '1', 'Subir la contrainte', 'Subit la contrainte sans réaction<br>Accepte la situation<br>Passivité', 1, 0, 1, NOW(), NOW()),
(206, 123, 961, '2', 'Contournement', 'Cherche à contourner la contrainte<br>Trouve des solutions alternatives<br>Adaptation', 2, 0, 1, NOW(), NOW()),
(207, 123, 961, '3', 'Transformation', 'Transforme la contrainte en opportunité<br>Cherche des solutions créatives<br>Innovation', 3, 0, 1, NOW(), NOW()),
(208, 123, 961, '4', 'Innovation par la contrainte', 'Utilise la contrainte comme levier d\\'innovation<br>Crée de nouvelles solutions<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 962: Nouvelle idée
(209, 123, 962, '1', 'Idée sans action', 'A des idées mais ne les met pas en œuvre<br>Rêverie<br>Inaction', 1, 0, 1, NOW(), NOW()),
(210, 123, 962, '2', 'Test rapide', 'Teste rapidement les idées<br>Sans planification<br>Empirique', 2, 0, 1, NOW(), NOW()),
(211, 123, 962, '3', 'Planification et test', 'Planifie les tests d\\'idées<br>Évalue les résultats<br>Structuré', 3, 0, 1, NOW(), NOW()),
(212, 123, 962, '4', 'Innovation structurée', 'Intègre les idées dans la stratégie<br>Planifie l\\'innovation<br>Systématique', 4, 0, 1, NOW(), NOW()),

-- Question 963: Projet important, argent manque
(213, 123, 963, '1', 'Abandon du projet', 'Abandonne le projet faute d\\'argent<br>Renonce<br>Déception', 1, 0, 1, NOW(), NOW()),
(214, 123, 963, '2', 'Report du projet', 'Reporte le projet en attendant<br>L\\'argent nécessaire<br>Patience', 2, 0, 1, NOW(), NOW()),
(215, 123, 963, '3', 'Recherche de financement', 'Cherche activement des financements<br>Adapte le projet aux ressources<br>Créativité', 3, 0, 1, NOW(), NOW()),
(216, 123, 963, '4', 'Innovation financière', 'Innove dans le financement<br>Crée de nouvelles ressources<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 964: Tout fonctionne correctement
(217, 123, 964, '1', 'Maintien du statu quo', 'Maintient le statu quo<br>Ne change rien<br>Conservatisme', 1, 0, 1, NOW(), NOW()),
(218, 123, 964, '2', 'Amélioration marginale', 'Améliore marginalement<br>Cherche des optimisations mineures<br>Progressif', 2, 0, 1, NOW(), NOW()),
(219, 123, 964, '3', 'Innovation progressive', 'Innove progressivement<br>Cherche des améliorations significatives<br>Créativité', 3, 0, 1, NOW(), NOW()),
(220, 123, 964, '4', 'Innovation disruptive', 'Innove de manière disruptive<br>Cherche des ruptures<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 965: Rapport aux habitudes
(221, 123, 965, '1', 'Prisonnier des habitudes', 'Est prisonnier de ses habitudes<br>Peut pas changer<br>Rigidité', 1, 0, 1, NOW(), NOW()),
(222, 123, 965, '2', 'Adaptation progressive', 'S\\'adapte progressivement aux changements<br>Résiste au début<br>Flexibilité limitée', 2, 0, 1, NOW(), NOW()),
(223, 123, 965, '3', 'Flexibilité créative', 'S\\'adapte créativement aux changements<br>Cherche des solutions nouvelles<br>Créativité', 3, 0, 1, NOW(), NOW()),
(224, 123, 965, '4', 'Innovation par les habitudes', 'Utilise les habitudes comme base d\\'innovation<br>Crée de nouvelles façons de faire<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 966: Caisse vide et personne pour aider
(225, 123, 966, '1', 'Panique et paralysie', 'Panique et se paralyse<br>Ne sait pas quoi faire<br>Crise', 1, 0, 1, NOW(), NOW()),
(226, 123, 966, '2', 'Survie immédiate', 'Se concentre sur la survie immédiate<br>Cherche des solutions rapides<br>Réactif', 2, 0, 1, NOW(), NOW()),
(227, 123, 966, '3', 'Créativité sous contrainte', 'Fait preuve de créativité sous contrainte<br>Cherche des solutions originales<br>Innovation', 3, 0, 1, NOW(), NOW()),
(228, 123, 966, '4', 'Innovation radicale', 'Innove radicalement dans la situation<br>Crée de nouvelles opportunités<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 967: Travail devient trop lourd
(229, 123, 967, '1', 'Travail plus dur', 'Travaille plus dur pour compenser<br>Épuisement<br>Surcharge', 1, 0, 1, NOW(), NOW()),
(230, 123, 967, '2', 'Délégation ponctuelle', 'Délègue ponctuellement certaines tâches<br>Sans stratégie<br>Adaptation', 2, 0, 1, NOW(), NOW()),
(231, 123, 967, '3', 'Innovation organisationnelle', 'Innove dans l\\'organisation du travail<br>Cherche des nouvelles façons de travailler<br>Créativité', 3, 0, 1, NOW(), NOW()),
(232, 123, 967, '4', 'Transformation du travail', 'Transforme radicalement la façon de travailler<br>Crée de nouveaux modèles<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 968: Nouvelle idée ne marche pas
(233, 123, 968, '1', 'Abandon rapide', 'Abandonne rapidement l\\'idée<br>Ne persévère pas<br>Déception', 1, 0, 1, NOW(), NOW()),
(234, 123, 968, '2', 'Adaptation mineure', 'Adapte mineurement l\\'idée<br>Cherche des ajustements simples<br>Modification', 2, 0, 1, NOW(), NOW()),
(235, 123, 968, '3', 'Analyse et amélioration', 'Analyse pourquoi l\\'idée ne marche pas<br>Améliore l\\'idée<br>Apprentissage', 3, 0, 1, NOW(), NOW()),
(236, 123, 968, '4', 'Innovation par l\\'échec', 'Transforme l\\'échec en opportunité d\\'innovation<br>Crée de nouvelles idées<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 969: Réaction face à ce qui fonctionne déjà bien
(237, 123, 969, '1', 'Satisfaction passive', 'Se satisfait de ce qui fonctionne<br>Ne cherche pas à améliorer<br>Confort', 1, 0, 1, NOW(), NOW()),
(238, 123, 969, '2', 'Optimisation continue', 'Cherche à optimiser ce qui fonctionne<br>Amélioration continue<br>Progression', 2, 0, 1, NOW(), NOW()),
(239, 123, 969, '3', 'Innovation incrémentale', 'Innove à partir de ce qui fonctionne<br>Cherche des améliorations significatives<br>Créativité', 3, 0, 1, NOW(), NOW()),
(240, 123, 969, '4', 'Innovation exponentielle', 'Utilise ce qui fonctionne comme base d\\'innovation exponentielle<br>Crée de nouvelles opportunités<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- MODULE 124: Fonction 10 - Intégrité & Confiance
-- Question 970: Séparation argent personnel/pro
(241, 124, 970, '1', 'Mélange total', 'Mélange totalement argent personnel et pro<br>Pas de séparation<br>Confusion', 1, 0, 1, NOW(), NOW()),
(242, 124, 970, '2', 'Séparation partielle', 'Sépare partiellement argent personnel et pro<br>Quelques règles<br>Amélioration', 2, 0, 1, NOW(), NOW()),
(243, 124, 970, '3', 'Séparation claire', 'Sépare clairement argent personnel et pro<br>Règles précises<br>Clarté', 3, 0, 1, NOW(), NOW()),
(244, 124, 970, '4', 'Gouvernance financière', 'Met en place une gouvernance financière stricte<br>Transparence totale<br>Excellence', 4, 0, 1, NOW(), NOW()),

-- Question 971: Respect des engagements
(245, 124, 971, '1', 'Respect variable', 'Respecte les engagements quand ça l\\'arrange<br>Flexibilité excessive<br>Inconstance', 1, 0, 1, NOW(), NOW()),
(246, 124, 971, '2', 'Respect majoritaire', 'Respecte la plupart des engagements<br>Quelques exceptions<br>Fiabilité relative', 2, 0, 1, NOW(), NOW()),
(247, 124, 971, '3', 'Respect systématique', 'Respecte systématiquement les engagements<br>Fiabilité totale<br>Confiance', 3, 0, 1, NOW(), NOW()),
(248, 124, 971, '4', 'Excellence relationnelle', 'Dépasse les attentes en matière d\\'engagements<br>Crée la confiance<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 972: Rapport aux règles et obligations
(249, 124, 972, '1', 'Ignorance des règles', 'Ignore souvent les règles et obligations<br>Non-conformité<br>Risque', 1, 0, 1, NOW(), NOW()),
(250, 124, 972, '2', 'Conformité minimale', 'Respecte le minimum des règles et obligations<br>Conformité de surface<br>Insuffisant', 2, 0, 1, NOW(), NOW()),
(251, 124, 972, '3', 'Conformité active', 'Respecte activement les règles et obligations<br>Veille réglementaire<br>Sécurité', 3, 0, 1, NOW(), NOW()),
(252, 124, 972, '4', 'Excellence réglementaire', 'Anticipe les évolutions réglementaires<br>Dépasse les obligations<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 973: Cohérence personnelle
(253, 124, 973, '1', 'Incohérence fréquente', 'Dit une chose et fait l\\'autre<br>Incohérence fréquente<br>Manque de crédibilité', 1, 0, 1, NOW(), NOW()),
(254, 124, 973, '2', 'Incohérence occasionnelle', 'Est généralement cohérent<br>Mais quelques incohérences<br>Cohérence relative', 2, 0, 1, NOW(), NOW()),
(255, 124, 973, '3', 'Cohérence constante', 'Est constamment cohérent<br>Paroles et actions alignées<br>Crédibilité', 3, 0, 1, NOW(), NOW()),
(256, 124, 973, '4', 'Excellence personnelle', 'Dépasse les attentes en matière de cohérence<br>Inspire la confiance<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 974: Gestion du temps
(257, 124, 974, '1', 'Gestion chaotique', 'Gère son temps de manière chaotique<br>Pas d\\'organisation<br>Inefficacité', 1, 0, 1, NOW(), NOW()),
(258, 124, 974, '2', 'Gestion réactive', 'Gère son temps de manière réactive<br>Sous la pression<br>Organisation limitée', 2, 0, 1, NOW(), NOW()),
(259, 124, 974, '3', 'Gestion organisée', 'Gère son temps de manière organisée<br>Planification<br>Efficacité', 3, 0, 1, NOW(), NOW()),
(260, 124, 974, '4', 'Excellence temporelle', 'Maîtrise parfaitement son temps<br>Optimise l\\'efficacité<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 975: Transparence et confiance stratégique
(261, 124, 975, '1', 'Opacité stratégique', 'Cache les informations stratégiques<br>Pas de transparence<br>Méfiance', 1, 0, 1, NOW(), NOW()),
(262, 124, 975, '2', 'Transparence sélective', 'Partage sélectivement les informations<br>Transparence limitée<br>Confiance relative', 2, 0, 1, NOW(), NOW()),
(263, 124, 975, '3', 'Transparence active', 'Partage activement les informations stratégiques<br>Communication claire<br>Confiance', 3, 0, 1, NOW(), NOW()),
(264, 124, 975, '4', 'Excellence relationnelle', 'Dépasse les attentes en matière de transparence<br>Crée la confiance totale<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 976: Erreur importante commise
(265, 124, 976, '1', 'Dissimulation', 'Cache l\\'erreur ou la minimise<br>Dissimulation<br>Perte de confiance', 1, 0, 1, NOW(), NOW()),
(266, 124, 976, '2', 'Reconnaissance tardive', 'Reconnaît l\\'erreur tardivement<br>Sous la pression<br>Réparation limitée', 2, 0, 1, NOW(), NOW()),
(267, 124, 976, '3', 'Reconnaissance rapide', 'Reconnaît rapidement l\\'erreur<br>Prend la responsabilité<br>Réparation active', 3, 0, 1, NOW(), NOW()),
(268, 124, 976, '4', 'Excellence relationnelle', 'Transforme l\\'erreur en opportunité d\\'apprentissage<br>Renforce la confiance<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 977: Réputation sur le terrain
(269, 124, 977, '1', 'Réputation mitigée', 'A une réputation mitigée sur le terrain<br>Manque de fiabilité<br>Méfiance', 1, 0, 1, NOW(), NOW()),
(270, 124, 977, '2', 'Réputation correcte', 'A une réputation correcte sur le terrain<br>Fiabilité relative<br>Confiance modérée', 2, 0, 1, NOW(), NOW()),
(271, 124, 977, '3', 'Réputation excellente', 'A une réputation excellente sur le terrain<br>Grande fiabilité<br>Confiance totale', 3, 0, 1, NOW(), NOW()),
(272, 124, 977, '4', 'Leadership reconnu', 'Est reconnu comme leader sur le terrain<br>Inspire la confiance<br>Excellence', 4, 0, 1, NOW(), NOW()),

-- Question 978: Rapport à la parole donnée
(273, 124, 978, '1', 'Parole relative', 'Tient sa parole de manière relative<br>Flexibilité excessive<br>Manque de fiabilité', 1, 0, 1, NOW(), NOW()),
(274, 124, 978, '2', 'Parole majoritaire', 'Tient sa parole dans la plupart des cas<br>Quelques exceptions<br>Fiabilité relative', 2, 0, 1, NOW(), NOW()),
(275, 124, 978, '3', 'Parole sacrée', 'Tient sa parole systématiquement<br>Fiabilité totale<br>Confiance absolue', 3, 0, 1, NOW(), NOW()),
(276, 124, 978, '4', 'Excellence relationnelle', 'Dépasse les attentes en matière de parole donnée<br>Crée la confiance totale<br>Leadership', 4, 0, 1, NOW(), NOW()),

-- Question 979: Compréhension du capital
(277, 124, 979, '1', 'Compréhension limitée', 'Comprend limitément le capital de l\\'entreprise<br>Vision financière simple<br>Manque de stratégie', 1, 0, 1, NOW(), NOW()),
(278, 124, 979, '2', 'Compréhension correcte', 'Comprend correctement le capital de l\\'entreprise<br>Vision financière claire<br>Stratégie de base', 2, 0, 1, NOW(), NOW()),
(279, 124, 979, '3', 'Compréhension avancée', 'Comprend avancément le capital de l\\'entreprise<br>Vision financière stratégique<br>Leadership financier', 3, 0, 1, NOW(), NOW()),
(280, 124, 979, '4', 'Excellence financière', 'Maîtrise parfaitement le capital de l\\'entreprise<br>Vision financière experte<br>Leadership stratégique', 4, 0, 1, NOW(), NOW()),
-- MODULE 126: FONCTION 2 - FINANCE (Type 2)
-- Question 920: Pilotage financier
(281, 126, 920, '0', 'Mettre en place la comptabilité', 'Choisir un logiciel adapté<br>Catégoriser les opérations<br>Produire les états de base', 1, 0, 1, NOW(), NOW()),
(282, 126, 920, '1', 'Analyser la performance', 'Calculer les ratios clés<br>Analyser les tendances<br>Prendre décisions financières', 2, 0, 1, NOW(), NOW()),
(283, 126, 920, '2', 'Optimiser financièrement', 'Utiliser les données pour piloter<br>Optimiser la rentabilité<br>Financer la croissance', 3, 0, 1, NOW(), NOW()),

-- Question 921: Gestion de trésorerie
(284, 126, 921, '0', 'Maîtriser le cash', 'Suivre les entrées/sorties<br>Anticiper les besoins<br>Éviter les ruptures', 1, 0, 1, NOW(), NOW()),
(285, 126, 921, '1', 'Planifier la trésorerie', 'Faire des prévisions<br>Optimiser les délais<br>Gérer les financements', 2, 0, 1, NOW(), NOW()),
(286, 126, 921, '2', 'Excellence financière', 'Utiliser des outils avancés<br>Piloter proactivement<br>Optimiser la structure', 3, 0, 1, NOW(), NOW()),

-- Question 922: Maîtrise du BFR
(287, 126, 922, '0', 'Comprendre le BFR', 'Calculer le BFR simple<br>Identifier les composantes<br>Surveiller l\\'évolution', 1, 0, 1, NOW(), NOW()),
(288, 126, 922, '1', 'Optimiser le BFR', 'Analyser les leviers d\\'optimisation<br>Réduire les délais<br>Améliorer le cash', 2, 0, 1, NOW(), NOW()),
(289, 126, 922, '2', 'Maîtriser le BFR', 'Maîtriser le BFR stratégiquement<br>Optimiser le financement<br>Piloter la croissance', 3, 0, 1, NOW(), NOW()),

-- Question 923: Capacité d'autofinancement
(290, 126, 923, '0', 'Calculer la CAF', 'Calculer la CAF simple<br>Comprendre l\\'importance<br>Suivre l\\'évolution', 1, 0, 1, NOW(), NOW()),
(291, 126, 923, '1', 'Optimiser la CAF', 'Analyser les leviers d\\'optimisation<br>Améliorer la rentabilité<br>Augmenter l\\'autofinancement', 2, 0, 1, NOW(), NOW()),
(292, 126, 923, '2', 'Maîtriser la CAF', 'Maîtriser la CAF stratégiquement<br>Financer la croissance<br>Optimiser la structure', 3, 0, 1, NOW(), NOW()),

-- Question 924: Relation avec les banques
(293, 126, 924, '0', 'Établir les relations', 'Établir les relations bancaires<br>Présenter le projet<br>Négocier les conditions', 1, 0, 1, NOW(), NOW()),
(294, 126, 924, '1', 'Développer le levier', 'Développer le levier bancaire<br>Optimiser les financements<br>Gérer les relations', 2, 0, 1, NOW(), NOW()),
(295, 126, 924, '2', 'Maîtriser le financement', 'Maîtriser le financement stratégique<br>Optimiser la structure<br>Piloter la croissance', 3, 0, 1, NOW(), NOW()),

-- Question 925: Arbitrage réinvestissement/distribution
(296, 126, 925, '0', 'Décider intuitivement', 'Décider intuitivement<br>Sans analyse fine<br>Basé sur les besoins', 1, 0, 1, NOW(), NOW()),
(297, 126, 925, '1', 'Analyser l\\'impact', 'Analyser l\\'impact financier<br>Évaluer les alternatives<br>Décider informé', 2, 0, 1, NOW(), NOW()),
(298, 126, 925, '2', 'Optimiser stratégiquement', 'Optimiser stratégiquement<br>Aligner sur la vision<br>Piloter la croissance', 3, 0, 1, NOW(), NOW()),

-- Question 926: Tableaux de bord et reporting
(299, 126, 926, '0', 'Créer des tableaux simples', 'Créer des tableaux de bord simples<br>Suivre les indicateurs de base<br>Reporter régulièrement', 1, 0, 1, NOW(), NOW()),
(300, 126, 926, '1', 'Optimiser le reporting', 'Optimiser les tableaux de bord<br>Analyser les tendances<br>Prendre décisions', 2, 0, 1, NOW(), NOW()),
(301, 126, 926, '2', 'Maîtriser le pilotage', 'Maîtriser le pilotage par les données<br>Optimiser la performance<br>Piloter la stratégie', 3, 0, 1, NOW(), NOW()),

-- Question 927: Vision et plan de financement
(302, 126, 927, '0', 'Définir les besoins', 'Définir les besoins de financement<br>Identifier les sources<br>Planifier court terme', 1, 0, 1, NOW(), NOW()),
(303, 126, 927, '1', 'Structurer le plan', 'Structurer le plan de financement<br>Optimiser les sources<br>Planifier moyen terme', 2, 0, 1, NOW(), NOW()),
(304, 126, 927, '2', 'Maîtriser la stratégie', 'Maîtriser la stratégie financière<br>Optimiser la structure<br>Piloter long terme', 3, 0, 1, NOW(), NOW()),

-- Question 928: Posture dirigeant
(305, 126, 928, '0', 'Opérateur-exécutant', 'Agir comme opérateur<br>Se concentrer sur l\\'opérationnel<br>Pas de vision financière', 1, 0, 1, NOW(), NOW()),
(306, 126, 928, '1', 'Dirigeant-pilote', 'Commencer à piloter<br>Déléguer l\\'opérationnel<br>Vision financière émergente', 2, 0, 1, NOW(), NOW()),
(307, 126, 928, '2', 'Dirigeant-stratège', 'Piloter stratégiquement<br>Déléguer complètement<br>Vision financière mature', 3, 0, 1, NOW(), NOW()),

-- Question 929: Posture dominante
(308, 126, 929, '0', 'Réactif financier', 'Réagir aux problèmes financiers<br>Gérer les urgences<br>Pas de stratégie', 1, 0, 1, NOW(), NOW()),
(309, 126, 929, '1', 'Proactif financier', 'Anticiper les problèmes financiers<br>Planifier les actions<br>Stratégie émergente', 2, 0, 1, NOW(), NOW()),
(310, 126, 929, '2', 'Stratège financier', 'Piloter stratégiquement<br>Anticiper les opportunités<br>Vision financière mature', 3, 0, 1, NOW(), NOW()),
-- MODULE 127: FONCTION 3 - JURIDIQUE (Type 2) - COMPLET
-- Question 922: Structure juridique
(311, 127, 922, '0', 'Sécuriser la base', 'Vérifier la conformité<br>Mettre à jour les statuts<br>Régulariser les obligations', 1, 0, 1, NOW(), NOW()),
(312, 127, 922, '1', 'Optimiser la structure', 'Analyser l\\'adéquation<br>Préparer les évolutions<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(313, 127, 922, '2', 'Gouvernance juridique', 'Intégrer le juridique au pilotage<br>Anticiper les évolutions<br>Optimiser la protection', 3, 0, 1, NOW(), NOW()),

-- Question 923: Contrats et partenariats
(314, 127, 923, '0', 'Sécuriser les contrats', 'Utiliser des modèles standards<br>Vérifier les points clés<br>Archiver les documents', 1, 0, 1, NOW(), NOW()),
(315, 127, 923, '1', 'Optimiser contractuellement', 'Faire valider les contrats<br>Suivre les engagements<br>Gérer les litiges', 2, 0, 1, NOW(), NOW()),
(316, 127, 923, '2', 'Stratégie contractuelle', 'Utiliser les contrats stratégiquement<br>Piloter les partenariats<br>Anticiper les risques', 3, 0, 1, NOW(), NOW()),

-- Question 924: Maîtrise de la conformité fiscale et sociale
(317, 127, 924, '0', 'Vérifier la conformité', 'Identifier les obligations fiscales<br>Vérifier les déclarations<br>Régulariser les retards', 1, 0, 1, NOW(), NOW()),
(318, 127, 924, '1', 'Optimiser la conformité', 'Mettre en place les procédures<br>Optimiser les déclarations<br>Anticiper les échéances', 2, 0, 1, NOW(), NOW()),
(319, 127, 924, '2', 'Excellence fiscale', 'Optimiser la stratégie fiscale<br>Anticiper les évolutions<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 925: Intégrité financière
(320, 127, 925, '0', 'Assurer l\\'intégrité', 'Maintenir la transparence financière<br>Éviter les conflits d\\'intérêts<br>Respecter les règles', 1, 0, 1, NOW(), NOW()),
(321, 127, 925, '1', 'Optimiser l\\'intégrité', 'Développer les contrôles internes<br>Former l\\'équipe à l\\'éthique<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(322, 127, 925, '2', 'Excellence éthique', 'Intégrer l\\'éthique dans la stratégie<br>Anticiper les risques<br>Créer la confiance', 3, 0, 1, NOW(), NOW()),

-- Question 926: Risques de dépendance stratégique
(323, 127, 926, '0', 'Identifier les dépendances', 'Analyser les dépendances clés<br>Identifier les risques<br>Évaluer l\\'impact', 1, 0, 1, NOW(), NOW()),
(324, 127, 926, '1', 'Optimiser les dépendances', 'Diversifier les sources<br>Réduire les risques<br>Développer les alternatives', 2, 0, 1, NOW(), NOW()),
(325, 127, 926, '2', 'Maîtriser les dépendances', 'Maîtriser les dépendances stratégiques<br>Optimiser la résilience<br>Piloter la transition', 3, 0, 1, NOW(), NOW()),

-- Question 927: Sécurisation des relations de travail
(326, 127, 927, '0', 'Sécuriser les relations', 'Respecter le droit du travail<br>Maintenir les relations<br>Éviter les conflits', 1, 0, 1, NOW(), NOW()),
(327, 127, 927, '1', 'Optimiser les relations', 'Développer le dialogue social<br>Prévenir les conflits<br>Améliorer la collaboration', 2, 0, 1, NOW(), NOW()),
(328, 127, 927, '2', 'Excellence sociale', 'Intégrer le social dans la stratégie<br>Anticiper les évolutions<br>Créer la cohésion', 3, 0, 1, NOW(), NOW()),

-- Question 928: Protection de la propriété intellectuelle
(329, 127, 928, '0', 'Protéger la PI', 'Identifier les actifs à protéger<br>Déposer les marques<br>Surveiller les contrefaçons', 1, 0, 1, NOW(), NOW()),
(330, 127, 928, '1', 'Optimiser la PI', 'Développer la stratégie PI<br>Monétiser les actifs<br>Défendre les droits', 2, 0, 1, NOW(), NOW()),
(331, 127, 928, '2', 'Excellence PI', 'Intégrer la PI dans la stratégie<br>Anticiper les évolutions<br>Maximiser la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 929: Sécurisation du bail et des locaux
(332, 127, 929, '0', 'Sécuriser les locaux', 'Vérifier le bail<br>Sécuriser les accès<br>Assurer les biens', 1, 0, 1, NOW(), NOW()),
(333, 127, 929, '1', 'Optimiser les locaux', 'Optimiser l\\'espace<br>Négocier les conditions<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(334, 127, 929, '2', 'Excellence immobilière', 'Intégrer l\\'immobilier dans la stratégie<br>Anticiper les besoins<br>Optimiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 930: Risques Psychosociaux
(335, 127, 930, '0', 'Identifier les RPS', 'Identifier les risques psychosociaux<br>Évaluer l\\'impact<br>Prendre des mesures', 1, 0, 1, NOW(), NOW()),
(336, 127, 930, '1', 'Optimiser les RPS', 'Développer les actions de prévention<br>Former l\\'équipe<br>Améliorer le bien-être', 2, 0, 1, NOW(), NOW()),
(337, 127, 930, '2', 'Excellence sociale', 'Intégrer le bien-être dans la stratégie<br>Anticiper les risques<br>Créer la performance', 3, 0, 1, NOW(), NOW()),

-- Question 931: Prévention des conflits d\\'intérêts
(338, 127, 931, '0', 'Identifier les conflits', 'Identifier les conflits d\\'intérêts<br>Évaluer les risques<br>Mettre en place les contrôles', 1, 0, 1, NOW(), NOW()),
(339, 127, 931, '1', 'Optimiser la prévention', 'Développer les procédures<br>Former l\\'équipe<br>Surveiller les situations', 2, 0, 1, NOW(), NOW()),
(340, 127, 931, '2', 'Excellence éthique', 'Intégrer l\\'éthique dans la stratégie<br>Anticiper les risques<br>Créer la confiance', 3, 0, 1, NOW(), NOW()),

-- MODULE 128: FONCTION 4 - RESSOURCES HUMAINES (Type 2) - COMPLET
-- Question 924: Organisation RH
(341, 128, 924, '0', 'Structurer l\\'équipe', 'Définir les rôles principaux<br>Clarifier les responsabilités<br>Communiquer l\\'organisation', 1, 0, 1, NOW(), NOW()),
(342, 128, 924, '1', 'Optimiser l\\'organisation', 'Créer des fiches de poste<br>Mettre en place les processus<br>Développer la collaboration', 2, 0, 1, NOW(), NOW()),
(343, 128, 924, '2', 'Piloter RH stratégiquement', 'Aligner l\\'organisation sur la stratégie<br>Développer les compétences<br>Optimiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 925: Gestion des talents
(344, 128, 925, '0', 'Développer les compétences', 'Identifier les besoins de formation<br>Planifier les formations<br>Suivre les progrès', 1, 0, 1, NOW(), NOW()),
(345, 128, 925, '1', 'Optimiser les talents', 'Mettre en place des évaluations<br>Développer les plans de carrière<br>Gérer la performance', 2, 0, 1, NOW(), NOW()),
(346, 128, 925, '2', 'Capital humain stratégique', 'Aligner les compétences sur la stratégie<br>Développer le leadership<br>Optimiser l\\'engagement', 3, 0, 1, NOW(), NOW()),

-- Question 926: Structure du processus de recrutement
(347, 128, 926, '0', 'Structurer le recrutement', 'Définir les besoins<br>Créer les annonces<br>Organiser les entretiens', 1, 0, 1, NOW(), NOW()),
(348, 128, 926, '1', 'Optimiser le recrutement', 'Développer les sources<br>Améliorer les processus<br>Évaluer les candidats', 2, 0, 1, NOW(), NOW()),
(349, 128, 926, '2', 'Excellence recrutement', 'Intégrer le recrutement dans la stratégie<br>Anticiper les besoins<br>Atteindre les talents', 3, 0, 1, NOW(), NOW()),

-- Question 927: Intégration des nouveaux collaborateurs
(350, 128, 927, '0', 'Intégrer les nouveaux', 'Préparer l\\'accueil<br>Former aux bases<br>Suivre l\\'adaptation', 1, 0, 1, NOW(), NOW()),
(351, 128, 927, '1', 'Optimiser l\\'intégration', 'Développer le programme d\\'intégration<br>Accélérer la productivité<br>Créer l\\'appartenance', 2, 0, 1, NOW(), NOW()),
(352, 128, 927, '2', 'Excellence intégration', 'Intégrer l\\'intégration dans la stratégie<br>Optimiser l\\'expérience<br>Maximiser la rétention', 3, 0, 1, NOW(), NOW()),

-- Question 928: Clarté des rôles et responsabilités
(353, 128, 928, '0', 'Clarifier les rôles', 'Définir les rôles clés<br>Clarifier les responsabilités<br>Communiquer les attentes', 1, 0, 1, NOW(), NOW()),
(354, 128, 928, '1', 'Optimiser les rôles', 'Développer les fiches de poste<br>Optimiser les processus<br>Améliorer la collaboration', 2, 0, 1, NOW(), NOW()),
(355, 128, 928, '2', 'Excellence organisationnelle', 'Intégrer les rôles dans la stratégie<br>Optimiser la performance<br>Créer l\\'autonomie', 3, 0, 1, NOW(), NOW()),

-- Question 929: Fixation d\\'objectifs mesurables
(356, 128, 929, '0', 'Fixer les objectifs', 'Définir les objectifs clés<br>Fixer les indicateurs<br>Suivre les résultats', 1, 0, 1, NOW(), NOW()),
(357, 128, 929, '1', 'Optimiser les objectifs', 'Développer les objectifs SMART<br>Aligner sur la stratégie<br>Optimiser la performance', 2, 0, 1, NOW(), NOW()),
(358, 128, 929, '2', 'Excellence objectifs', 'Intégrer les objectifs dans la stratégie<br>Piloter par les indicateurs<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 930: Système d\\'évaluation et feedback
(359, 128, 930, '0', 'Mettre en place l\\'évaluation', 'Définir les critères d\\'évaluation<br>Organiser les entretiens<br>Donner le feedback', 1, 0, 1, NOW(), NOW()),
(360, 128, 930, '1', 'Optimiser l\\'évaluation', 'Développer le système d\\'évaluation<br>Former les managers<br>Améliorer le feedback', 2, 0, 1, NOW(), NOW()),
(361, 128, 930, '2', 'Excellence évaluation', 'Intégrer l\\'évaluation dans la stratégie<br>Piloter par la performance<br>Développer les talents', 3, 0, 1, NOW(), NOW()),

-- Question 931: Délégation et contrôle
(362, 128, 931, '0', 'Déléguer les tâches', 'Déléguer les tâches simples<br>Contrôler les résultats<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(363, 128, 931, '1', 'Optimiser la délégation', 'Développer la délégation stratégique<br>Former à l\\'autonomie<br>Optimiser le contrôle', 2, 0, 1, NOW(), NOW()),
(364, 128, 931, '2', 'Excellence délégation', 'Intégrer la délégation dans la stratégie<br>Piloter par l\\'autonomie<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 932: Développement des compétences
(365, 128, 932, '0', 'Développer les compétences', 'Identifier les besoins de formation<br>Planifier les formations<br>Suivre les progrès', 1, 0, 1, NOW(), NOW()),
(366, 128, 932, '1', 'Optimiser les compétences', 'Développer les plans de formation<br>Optimiser les méthodes<br>Évaluer l\\'impact', 2, 0, 1, NOW(), NOW()),
(367, 128, 932, '2', 'Excellence compétences', 'Intégrer les compétences dans la stratégie<br>Piloter par les talents<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 933: Gestion des performances insuffisantes
(368, 128, 933, '0', 'Gérer les performances', 'Identifier les problèmes<br>Donner le feedback<br>Planifier l\\'amélioration', 1, 0, 1, NOW(), NOW()),
(369, 128, 933, '1', 'Optimiser la gestion', 'Développer les plans d\\'amélioration<br>Former les managers<br>Optimiser les processus', 2, 0, 1, NOW(), NOW()),
(370, 128, 933, '2', 'Excellence performance', 'Intégrer la performance dans la stratégie<br>Piloter par les résultats<br>Transformer les défis', 3, 0, 1, NOW(), NOW()),

-- Question 934: Savoir-faire-faire
(371, 128, 934, '0', 'Organiser le travail', 'Organiser les flux de travail<br>Définir les processus<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(372, 128, 934, '1', 'Optimiser l\\'organisation', 'Optimiser les processus<br>Développer l\\'efficacité<br>Améliorer la collaboration', 2, 0, 1, NOW(), NOW()),
(373, 128, 934, '2', 'Excellence organisationnelle', 'Intégrer l\\'organisation dans la stratégie<br>Piloter par l\\'efficacité<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),
-- MODULE 129: FONCTION 5 - MARKETING (Type 2) - COMPLET
-- Question 926: Positionnement marketing
(374, 129, 926, '0', 'Définir le positionnement', 'Identifier les clients cibles<br>Définir la proposition de valeur<br>Communiquer l\\'offre', 1, 0, 1, NOW(), NOW()),
(375, 129, 926, '1', 'Optimiser le marketing', 'Analyser le marché<br>Développer les messages<br>Mettre en place les actions', 2, 0, 1, NOW(), NOW()),
(376, 129, 926, '2', 'Excellence marketing', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 927: Communication marketing
(377, 129, 927, '0', 'Communiquer l\\'offre', 'Créer des supports de base<br>Présenter les produits/services<br>Collecter les retours', 1, 0, 1, NOW(), NOW()),
(378, 129, 927, '1', 'Optimiser la communication', 'Développer les messages clés<br>Utiliser plusieurs canaux<br>Mesurer l\\'impact', 2, 0, 1, NOW(), NOW()),
(379, 129, 927, '2', 'Stratégie communication', 'Piloter par les données<br>Optimiser les canaux<br>Personnaliser les messages', 3, 0, 1, NOW(), NOW()),

-- Question 928: Connaissance du terrain de jeu
(380, 129, 928, '0', 'Comprendre le marché', 'Analyser les concurrents<br>Identifier les tendances<br>Surveiller l\\'évolution', 1, 0, 1, NOW(), NOW()),
(381, 129, 928, '1', 'Optimiser la connaissance', 'Développer l\\'analyse concurrentielle<br>Anticiper les évolutions<br>Adapter l\\'offre', 2, 0, 1, NOW(), NOW()),
(382, 129, 928, '2', 'Excellence marché', 'Maîtriser le marché<br>Anticiper les tendances<br>Créer l\\'innovation', 3, 0, 1, NOW(), NOW()),

-- Question 929: Différence face à la concurrence
(383, 129, 929, '0', 'Identifier la différence', 'Analyser la concurrence<br>Identifier les différences<br>Communiquer la valeur', 1, 0, 1, NOW(), NOW()),
(384, 129, 929, '1', 'Optimiser la différenciation', 'Développer l\\'avantage concurrentiel<br>Renforcer la position<br>Créer la valeur', 2, 0, 1, NOW(), NOW()),
(385, 129, 929, '2', 'Excellence différenciation', 'Maîtriser la différenciation<br>Créer l\\'innovation<br>Domination marché', 3, 0, 1, NOW(), NOW()),

-- Question 930: Segmentation de la clientèle
(386, 129, 930, '0', 'Segmenter les clients', 'Identifier les segments clés<br>Analyser les besoins<br>Définir les cibles', 1, 0, 1, NOW(), NOW()),
(387, 129, 930, '1', 'Optimiser la segmentation', 'Développer les segments<br>Adapter l\\'offre<br>Personnaliser la communication', 2, 0, 1, NOW(), NOW()),
(388, 129, 930, '2', 'Excellence segmentation', 'Maîtriser la segmentation<br>Optimiser les cibles<br>Maximiser la conversion', 3, 0, 1, NOW(), NOW()),

-- Question 931: Définition de la proposition de valeur
(389, 129, 931, '0', 'Définir la valeur', 'Identifier la valeur ajoutée<br>Communiquer les bénéfices<br>Démontrer l\\'intérêt', 1, 0, 1, NOW(), NOW()),
(390, 129, 931, '1', 'Optimiser la valeur', 'Développer la proposition de valeur<br>Adapter aux besoins<br>Communiquer clairement', 2, 0, 1, NOW(), NOW()),
(391, 129, 931, '2', 'Excellence valeur', 'Maîtriser la proposition de valeur<br>Optimiser la communication<br>Créer la fidélité', 3, 0, 1, NOW(), NOW()),

-- Question 932: Politique de prix
(392, 129, 932, '0', 'Fixer les prix', 'Définir les prix de base<br>Analyser les coûts<br>Communiquer les tarifs', 1, 0, 1, NOW(), NOW()),
(393, 129, 932, '1', 'Optimiser les prix', 'Développer la stratégie de prix<br>Analyser la sensibilité<br>Adapter les tarifs', 2, 0, 1, NOW(), NOW()),
(394, 129, 932, '2', 'Excellence prix', 'Maîtriser la stratégie de prix<br>Optimiser la rentabilité<br>Maximiser la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 933: Clarté du message commercial
(395, 129, 933, '0', 'Communiquer l\\'offre', 'Créer le message de base<br>Présenter les produits/services<br>Collecter les retours', 1, 0, 1, NOW(), NOW()),
(396, 129, 933, '1', 'Optimiser le message', 'Développer le message clé<br>Adapter aux cibles<br>Communiquer clairement', 2, 0, 1, NOW(), NOW()),
(397, 129, 933, '2', 'Excellence message', 'Maîtriser le message commercial<br>Optimiser la communication<br>Créer la conversion', 3, 0, 1, NOW(), NOW()),

-- Question 934: Adaptation de l\\'offre
(398, 129, 934, '0', 'Adapter l\\'offre', 'Analyser les retours clients<br>Adapter les produits/services<br>Améliorer l\\'offre', 1, 0, 1, NOW(), NOW()),
(399, 129, 934, '1', 'Optimiser l\\'adaptation', 'Développer l\\'écoute client<br>Anticiper les besoins<br>Adapter proactivement', 2, 0, 1, NOW(), NOW()),
(400, 129, 934, '2', 'Excellence adaptation', 'Maîtriser l\\'adaptation<br>Optimiser l\\'offre<br>Créer l\\'innovation', 3, 0, 1, NOW(), NOW()),

-- Question 935: Développer nouvelle offre
(401, 129, 935, '0', 'Développer l\\'offre', 'Identifier les opportunités<br>Développer les nouveaux produits<br>Lancer l\\'innovation', 1, 0, 1, NOW(), NOW()),
(402, 129, 935, '1', 'Optimiser le développement', 'Développer le processus d\\'innovation<br>Optimiser les lancements<br>Accélérer la croissance', 2, 0, 1, NOW(), NOW()),
(403, 129, 935, '2', 'Excellence innovation', 'Maîtriser l\\'innovation<br>Optimiser les lancements<br>Créer la disruption', 3, 0, 1, NOW(), NOW()),

-- Question 936: Votre rôle marketing
(404, 129, 936, '0', 'Opérateur marketing', 'Exécuter les actions marketing<br>Suivre les instructions<br>Manque de vision', 1, 0, 1, NOW(), NOW()),
(405, 129, 936, '1', 'Manager marketing', 'Gérer les actions marketing<br>Optimiser les processus<br>Vision émergente', 2, 0, 1, NOW(), NOW()),
(406, 129, 936, '2', 'Stratège marketing', 'Piloter la stratégie marketing<br>Développer la vision<br>Leadership marketing', 3, 0, 1, NOW(), NOW()),

-- Question 937: Évolution du marché
(407, 129, 937, '0', 'Suivre l\\évolution', 'Observer les tendances<br>Suivre les concurrents<br>Adapter l\\'offre', 1, 0, 1, NOW(), NOW()),
(408, 129, 937, '1', 'Anticiper l\\'évolution', 'Analyser les signaux faibles<br>Anticiper les tendances<br>Préparer l\\'adaptation', 2, 0, 1, NOW(), NOW()),
(409, 129, 937, '2', 'Piloter l\\'évolution', 'Piloter les tendances<br>Créer l\\'innovation<br>Domination marché', 3, 0, 1, NOW(), NOW()),

-- Question 938: Développer nouvelle offre
(410, 129, 938, '0', 'Développer l\\'offre', 'Identifier les besoins<br>Développer les produits<br>Lancer l\\'offre', 1, 0, 1, NOW(), NOW()),
(411, 129, 938, '1', 'Optimiser le développement', 'Développer le processus<br>Optimiser les lancements<br>Accélérer la croissance', 2, 0, 1, NOW(), NOW()),
(412, 129, 938, '2', 'Excellence développement', 'Maîtriser le développement<br>Optimiser les lancements<br>Créer l\\'innovation', 3, 0, 1, NOW(), NOW()),

-- Question 939: Posture dominante
(413, 129, 939, '0', 'Réactif marketing', 'Réagir aux changements<br>S\\'adapter aux tendances<br>Manque de stratégie', 1, 0, 1, NOW(), NOW()),
(414, 129, 939, '1', 'Proactif marketing', 'Anticiper les changements<br>Planifier les actions<br>Stratégie émergente', 2, 0, 1, NOW(), NOW()),
(415, 129, 939, '2', 'Stratège marketing', 'Piloter les tendances<br>Créer l\\'innovation<br>Leadership marketing', 3, 0, 1, NOW(), NOW()),

-- MODULE 130: FONCTION 6 - COMMUNICATION (Type 2) - COMPLET
-- Question 928: Communication interne
(416, 130, 928, '0', 'Organiser la communication', 'Mettre en place des réunions<br>Partager les informations clés<br>Créer les canaux de base', 1, 0, 1, NOW(), NOW()),
(417, 130, 928, '1', 'Optimiser la communication', 'Structurer les messages<br>Utiliser les bons canaux<br>Suivre l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(418, 130, 928, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Aligner sur la stratégie', 3, 0, 1, NOW(), NOW()),

-- Question 929: Image et communication externe
(419, 130, 929, '0', 'Définir l\\'image', 'Créer une identité visuelle<br>Définir les messages clés<br>Communiquer cohéremment', 1, 0, 1, NOW(), NOW()),
(420, 130, 929, '1', 'Optimiser l\\'image', 'Développer la notoriété<br>Gérer la réputation<br>Utiliser les médias', 2, 0, 1, NOW(), NOW()),
(421, 130, 929, '2', 'Excellence image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 930: Communication interne
(422, 130, 930, '0', 'Communiquer en interne', 'Partager les informations<br>Organiser les réunions<br>Créer les canaux', 1, 0, 1, NOW(), NOW()),
(423, 130, 930, '1', 'Optimiser la communication', 'Structurer les messages<br>Utiliser les canaux adaptés<br>Suivre l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(424, 130, 930, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Aligner sur la stratégie', 3, 0, 1, NOW(), NOW()),

-- Question 931: Communication externe
(425, 130, 931, '0', 'Communiquer à l\\'externe', 'Communiquer les informations clés<br>Utiliser les médias<br>Gérer l\\'image', 1, 0, 1, NOW(), NOW()),
(426, 130, 931, '1', 'Optimiser la communication', 'Développer les messages clés<br>Utiliser les canaux adaptés<br>Suivre l\\'impact', 2, 0, 1, NOW(), NOW()),
(427, 130, 931, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 932: Organisation de la communication
(428, 130, 932, '0', 'Organiser la communication', 'Définir les processus<br>Créer les canaux<br>Assurer la circulation', 1, 0, 1, NOW(), NOW()),
(429, 130, 932, '1', 'Optimiser l\\'organisation', 'Développer les processus<br>Optimiser les canaux<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(430, 130, 932, '2', 'Excellence organisation', 'Maîtriser la communication<br>Optimiser les processus<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 933: Clarté des messages
(431, 130, 933, '0', 'Communiquer clairement', 'Définir les messages clés<br>Adapter aux audiences<br>Assurer la compréhension', 1, 0, 1, NOW(), NOW()),
(432, 130, 933, '1', 'Optimiser les messages', 'Développer les messages clés<br>Adapter aux cibles<br>Communiquer efficacement', 2, 0, 1, NOW(), NOW()),
(433, 130, 933, '2', 'Excellence communication', 'Maîtriser les messages<br>Optimiser la communication<br>Créer l\\'impact', 3, 0, 1, NOW(), NOW()),

-- Question 934: Utilisation des canaux
(434, 130, 934, '0', 'Utiliser les canaux', 'Choisir les canaux adaptés<br>Communiquer efficacement<br>Suivre l\\'impact', 1, 0, 1, NOW(), NOW()),
(435, 130, 934, '1', 'Optimiser les canaux', 'Développer les canaux<br>Adapter aux audiences<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(436, 130, 934, '2', 'Excellence canaux', 'Maîtriser les canaux<br>Optimiser la communication<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 935: Suivi de l\\'efficacité
(437, 130, 935, '0', 'Suivre l\\'efficacité', 'Mesurer l\\'impact<br>Analyser les résultats<br>Adapter la stratégie', 1, 0, 1, NOW(), NOW()),
(438, 130, 935, '1', 'Optimiser le suivi', 'Développer les indicateurs<br>Analyser les tendances<br>Optimiser les actions', 2, 0, 1, NOW(), NOW()),
(439, 130, 935, '2', 'Excellence suivi', 'Maîtriser les indicateurs<br>Piloter par les données<br>Maximiser l\\'impact', 3, 0, 1, NOW(), NOW()),

-- Question 936: Alignement sur la stratégie
(440, 130, 936, '0', 'Aligner sur la stratégie', 'Communiquer la stratégie<br>Aligner les messages<br>Assurer la cohérence', 1, 0, 1, NOW(), NOW()),
(441, 130, 936, '1', 'Optimiser l\\'alignement', 'Développer l\\'alignement stratégique<br>Optimiser les messages<br>Renforcer la cohérence', 2, 0, 1, NOW(), NOW()),
(442, 130, 936, '2', 'Excellence alignement', 'Maîtriser l\\'alignement stratégique<br>Optimiser la communication<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 937: Posture communicationnelle
(443, 130, 937, '0', 'Communicateur réactif', 'Réagir aux besoins<br>Communiquer en urgence<br>Manque de vision', 1, 0, 1, NOW(), NOW()),
(444, 130, 937, '1', 'Communicateur proactif', 'Anticiper les besoins<br>Planifier la communication<br>Vision émergente', 2, 0, 1, NOW(), NOW()),
(445, 130, 937, '2', 'Stratège communication', 'Piloter la communication stratégiquement<br>Développer la vision<br>Leadership communication', 3, 0, 1, NOW(), NOW()),

-- Question 938: Posture dominante
(446, 130, 938, '0', 'Réactif communication', 'Réagir aux événements<br>S\\'adapter aux situations<br>Manque de stratégie', 1, 0, 1, NOW(), NOW()),
(447, 130, 938, '1', 'Proactif communication', 'Anticiper les événements<br>Planifier les actions<br>Stratégie émergente', 2, 0, 1, NOW(), NOW()),
(448, 130, 938, '2', 'Stratège communication', 'Piloter les événements<br>Créer les opportunités<br>Leadership communication', 3, 0, 1, NOW(), NOW()),

-- Question 939: Excellence communication
(449, 130, 939, '0', 'Communiquer efficacement', 'Communiquer clairement<br>Être compris<br>Atteindre les objectifs', 1, 0, 1, NOW(), NOW()),
(450, 130, 939, '1', 'Optimiser la communication', 'Communiquer efficacement<br>Influencer positivement<br>Créer l\\'impact', 2, 0, 1, NOW(), NOW()),
(451, 130, 939, '2', 'Excellence communication', 'Maîtriser la communication<br>Influencer stratégiquement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 929: Image et communication externe
(3033, 130, 929, '0', 'Définir l\\'image', 'Créer une identité visuelle<br>Définir les messages clés<br>Communiquer cohéremment', 1, 0, 1, NOW(), NOW()),
(3034, 130, 929, '1', 'Optimiser l\\'image', 'Développer la notoriété<br>Gérer la réputation<br>Utiliser les médias', 2, 0, 1, NOW(), NOW()),
(3035, 130, 929, '2', 'Stratégie d\\'image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 3, 0, 1, NOW(), NOW()),

-- Module 140: FONCTION 7 - COMMERCIAL (Type 2)
-- Question 930: Stratégie commerciale
(3036, 140, 930, '0', 'Structurer la vente', 'Définir les processus de vente<br>Identifier les prospects<br>Mettre en place le suivi', 1, 0, 1, NOW(), NOW()),
(3037, 140, 930, '1', 'Optimiser la vente', 'Analyser les performances<br>Développer les compétences<br>Mettre en place les outils', 2, 0, 1, NOW(), NOW()),
(3038, 140, 930, '2', 'Excellence commerciale', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 931: Relation client
(3039, 140, 931, '0', 'Développer les clients', 'Identifier les prospects<br>Développer le portefeuille<br>Suivre les relations', 1, 0, 1, NOW(), NOW()),
(3040, 140, 931, '1', 'Optimiser les relations', 'Mettre en place un CRM<br>Développer la fidélisation<br>Analyser la satisfaction', 2, 0, 1, NOW(), NOW()),
(3041, 140, 931, '2', 'Stratégie relation client', 'Piloter par la satisfaction<br>Optimiser l\\'expérience<br>Créer la valeur par la relation', 3, 0, 1, NOW(), NOW()),

-- Module 141: FONCTION 8 - OPÉRATIONS (Type 2)
-- Question 932: Organisation opérationnelle
(3042, 141, 932, '0', 'Structurer les opérations', 'Définir les processus clés<br>Organiser les flux de travail<br>Mettre en place les contrôles', 1, 0, 1, NOW(), NOW()),
(3043, 141, 932, '1', 'Optimiser les opérations', 'Analyser l\\'efficacité<br>Améliorer les processus<br>Mettre en place les indicateurs', 2, 0, 1, NOW(), NOW()),
(3044, 141, 932, '2', 'Excellence opérationnelle', 'Piloter par la performance<br>Optimiser continuellement<br>Innover dans les processus', 3, 0, 1, NOW(), NOW()),

-- Question 933: Qualité et amélioration
(3045, 141, 933, '0', 'Assurer la qualité', 'Définir les standards<br>Mettre en place les contrôles<br>Traiter les problèmes', 1, 0, 1, NOW(), NOW()),
(3046, 141, 933, '1', 'Optimiser la qualité', 'Analyser les retours clients<br>Améliorer les processus<br>Mettre en place l\\'amélioration continue', 2, 0, 1, NOW(), NOW()),
(3047, 141, 933, '2', 'Excellence qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Créer la valeur par la qualité', 3, 0, 1, NOW(), NOW()),

-- Module 142: FONCTION 9 - DIGITAL (Type 2)
-- Question 934: Stratégie digitale
(3048, 142, 934, '0', 'Démarrer le digital', 'Choisir les outils de base<br>Créer une présence en ligne<br>Former l\\'équipe', 1, 0, 1, NOW(), NOW()),
(3049, 142, 934, '1', 'Optimiser le digital', 'Analyser l\\'efficacité<br>Développer les compétences<br>Mettre en place les stratégies', 2, 0, 1, NOW(), NOW()),
(3050, 142, 934, '2', 'Excellence digitale', 'Piloter par le digital<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 935: Outils et automatisation
(3051, 142, 935, '0', 'Utiliser les outils', 'Choisir les logiciels adaptés<br>Former les utilisateurs<br>Mettre en place les bases', 1, 0, 1, NOW(), NOW()),
(3052, 142, 935, '1', 'Optimiser les outils', 'Analyser l\\'utilisation<br>Développer l\\'automatisation<br>Intégrer les systèmes', 2, 0, 1, NOW(), NOW()),
(3053, 142, 935, '2', 'Stratégie digitale', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 3, 0, 1, NOW(), NOW()),

-- Module 143: FONCTION 10 - ADMINISTRATION (Type 2)
-- Question 936: Organisation administrative
(3054, 143, 936, '0', 'Structurer l\\'admin', 'Organiser les documents<br>Mettre en place les procédures<br>Créer les archives', 1, 0, 1, NOW(), NOW()),
(3055, 143, 936, '1', 'Optimiser l\\'admin', 'Analyser l\\'efficacité<br>Développer les procédures<br>Mettre en place les contrôles', 2, 0, 1, NOW(), NOW()),
(3056, 143, 936, '2', 'Excellence administrative', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur par l\\'admin', 3, 0, 1, NOW(), NOW()),

-- Question 937: Conformité et sécurité
(3057, 143, 937, '0', 'Assurer la conformité', 'Identifier les obligations<br>Mettre en place les procédures<br>Suivre les échéances', 1, 0, 1, NOW(), NOW()),
(3058, 143, 937, '1', 'Optimiser la conformité', 'Analyser les risques<br>Développer les contrôles<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(3059, 143, 937, '2', 'Stratégie administrative', 'Piloter par la conformité<br>Optimiser la sécurité<br>Créer la valeur par l\\'admin', 3, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 - BLOCS ÉMERGENTS (modules 48-57)

-- Module 48: Bloc 1 - Stratégie (Émergente)
-- Question 650: Vision stratégique
(4000, 48, 650, '0', 'Initier la vision', 'Formaliser l\\'activité principale<br>Définir 2-3 objectifs clés<br>Partager avec les proches', 1, 0, 1, NOW(), NOW()),
(4001, 48, 650, '1', 'Structurer la vision', 'Documenter le modèle économique<br>Définir les indicateurs simples<br>Créer un plan de base', 2, 0, 1, NOW(), NOW()),
(4002, 48, 650, '2', 'Piloter par la vision', 'Utiliser la vision quotidiennement<br>Suivre les indicateurs mensuellement<br>Ajuster trimestriellement', 3, 0, 1, NOW(), NOW()),

-- Question 651: Modèle d\\'affaires
(4003, 48, 651, '0', 'Comprendre le modèle', 'Lister les revenus et coûts<br>Identifier la valeur ajoutée<br>Analyser la rentabilité simple', 1, 0, 1, NOW(), NOW()),
(4004, 48, 651, '1', 'Optimiser le modèle', 'Analyser la rentabilité par activité<br>Identifier les leviers de croissance<br>Tester des améliorations', 2, 0, 1, NOW(), NOW()),
(4005, 48, 651, '2', 'Développer le modèle', 'Explorer de nouvelles sources<br>Développer l\\'offre existante<br>Préparer l\\'expansion', 3, 0, 1, NOW(), NOW()),

-- Module 49: Bloc 2 - Finance & Comptabilité (Émergente)
-- Question 652: Suivi financier
(4006, 49, 652, '0', 'Démarrer la comptabilité', 'Choisir un outil simple<br>Enregistrer les opérations<br>Produire les états de base', 1, 0, 1, NOW(), NOW()),
(4007, 49, 652, '1', 'Structurer le suivi', 'Catégoriser les dépenses<br>Analyser les tendances<br>Prendre décisions financières', 2, 0, 1, NOW(), NOW()),
(4008, 49, 652, '2', 'Piloter financièrement', 'Utiliser les ratios financiers<br>Optimiser la rentabilité<br>Financer la croissance', 3, 0, 1, NOW(), NOW()),

-- Question 653: Gestion de trésorerie
(4009, 49, 653, '0', 'Maîtriser le cash', 'Suivre les flux quotidiens<br>Anticiper les besoins<br>Éviter les ruptures', 1, 0, 1, NOW(), NOW()),
(4010, 49, 653, '1', 'Planifier la trésorerie', 'Faire des prévisions<br>Optimiser les délais<br>Gérer les financements', 2, 0, 1, NOW(), NOW()),
(4011, 49, 653, '2', 'Optimiser financièrement', 'Utiliser des outils avancés<br>Piloter proactivement<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Module 50: Bloc 3 - Juridique (Émergente)
-- Question 654: Conformité légale
(4012, 50, 654, '0', 'Vérifier la base légale', 'Identifier les obligations<br>Consulter les informations<br>Régulariser les urgences', 1, 0, 1, NOW(), NOW()),
(4013, 50, 654, '1', 'Structurer la conformité', 'Créer un calendrier<br>Mettre à jour les documents<br>Suivre les échéances', 2, 0, 1, NOW(), NOW()),
(4014, 50, 654, '2', 'Anticiper juridiquement', 'Mettre en place la veille<br>Optimiser la structure<br>Prévenir les risques', 3, 0, 1, NOW(), NOW()),

-- Question 655: Structure juridique
(4015, 50, 655, '0', 'Sécuriser la structure', 'Vérifier la conformité<br>Mettre à jour les statuts<br>Régulariser les obligations', 1, 0, 1, NOW(), NOW()),
(4016, 50, 655, '1', 'Optimiser la structure', 'Analyser l\\'adéquation<br>Préparer les évolutions<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(4017, 50, 655, '2', 'Gouvernance juridique', 'Intégrer le juridique au pilotage<br>Anticiper les évolutions<br>Optimiser la protection', 3, 0, 1, NOW(), NOW()),

-- Module 51: Bloc 4 - Ressources humaines (Émergente)
-- Question 656: Organisation équipe
(4018, 51, 656, '0', 'Structurer l\\'équipe', 'Définir les rôles principaux<br>Clarifier les responsabilités<br>Communiquer l\\'organisation', 1, 0, 1, NOW(), NOW()),
(4019, 51, 656, '1', 'Optimiser l\\'organisation', 'Créer des fiches de poste<br>Mettre en place les processus<br>Développer la collaboration', 2, 0, 1, NOW(), NOW()),
(4020, 51, 656, '2', 'Piloter RH stratégiquement', 'Aligner l\\'organisation sur la stratégie<br>Développer les compétences<br>Optimiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 657: Gestion des talents
(4021, 51, 657, '0', 'Développer les compétences', 'Identifier les besoins de formation<br>Planifier les formations<br>Suivre les progrès', 1, 0, 1, NOW(), NOW()),
(4022, 51, 657, '1', 'Optimiser les talents', 'Mettre en place des évaluations<br>Développer les plans de carrière<br>Gérer la performance', 2, 0, 1, NOW(), NOW()),
(4023, 51, 657, '2', 'Capital humain stratégique', 'Aligner les compétences sur la stratégie<br>Développer le leadership<br>Optimiser l\\'engagement', 3, 0, 1, NOW(), NOW()),

-- Module 52: Bloc 5 - Marketing (Émergente)
-- Question 658: Positionnement
(4024, 52, 658, '0', 'Définir le positionnement', 'Identifier les clients cibles<br>Définir la proposition de valeur<br>Communiquer l\\'offre', 1, 0, 1, NOW(), NOW()),
(4025, 52, 658, '1', 'Optimiser le marketing', 'Analyser le marché<br>Développer les messages<br>Mettre en place les actions', 2, 0, 1, NOW(), NOW()),
(4026, 52, 658, '2', 'Excellence marketing', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 659: Communication marketing
(4027, 52, 659, '0', 'Communiquer l\\'offre', 'Créer des supports de base<br>Présenter les produits/services<br>Collecter les retours', 1, 0, 1, NOW(), NOW()),
(4028, 52, 659, '1', 'Optimiser la communication', 'Développer les messages clés<br>Utiliser plusieurs canaux<br>Mesurer l\\'impact', 2, 0, 1, NOW(), NOW()),
(4029, 52, 659, '2', 'Stratégie communication', 'Piloter par les données<br>Optimiser les canaux<br>Personnaliser les messages', 3, 0, 1, NOW(), NOW()),

-- Module 53: Bloc 6 - Communication (Émergente)
-- Question 660: Communication interne
(4030, 53, 660, '0', 'Organiser la communication', 'Mettre en place des réunions<br>Partager les informations clés<br>Créer les canaux de base', 1, 0, 1, NOW(), NOW()),
(4031, 53, 660, '1', 'Optimiser la communication', 'Structurer les messages<br>Utiliser les bons canaux<br>Suivre l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(4032, 53, 660, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Aligner sur la stratégie', 3, 0, 1, NOW(), NOW()),

-- Question 661: Image externe
(4033, 53, 661, '0', 'Définir l\\'image', 'Créer une identité visuelle<br>Définir les messages clés<br>Communiquer cohéremment', 1, 0, 1, NOW(), NOW()),
(4034, 53, 661, '1', 'Optimiser l\\'image', 'Développer la notoriété<br>Gérer la réputation<br>Utiliser les médias', 2, 0, 1, NOW(), NOW()),
(4035, 53, 661, '2', 'Stratégie d\\'image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 3, 0, 1, NOW(), NOW()),

-- Module 54: Bloc 7 - Commercial (Émergente)
-- Question 662: Stratégie commerciale
(4036, 54, 662, '0', 'Structurer la vente', 'Définir les processus de vente<br>Identifier les prospects<br>Mettre en place le suivi', 1, 0, 1, NOW(), NOW()),
(4037, 54, 662, '1', 'Optimiser la vente', 'Analyser les performances<br>Développer les compétences<br>Mettre en place les outils', 2, 0, 1, NOW(), NOW()),
(4038, 54, 662, '2', 'Excellence commerciale', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 663: Relation client
(4039, 54, 663, '0', 'Développer les clients', 'Identifier les prospects<br>Développer le portefeuille<br>Suivre les relations', 1, 0, 1, NOW(), NOW()),
(4040, 54, 663, '1', 'Optimiser les relations', 'Mettre en place un CRM<br>Développer la fidélisation<br>Analyser la satisfaction', 2, 0, 1, NOW(), NOW()),
(4041, 54, 663, '2', 'Stratégie relation client', 'Piloter par la satisfaction<br>Optimiser l\\'expérience<br>Créer la valeur par la relation', 3, 0, 1, NOW(), NOW()),

-- Module 140: FONCTION 7 - COMMERCIAL (Type 2) - COMPLET
-- Question 930: Stratégie commerciale
(452, 140, 930, '0', 'Structurer la vente', 'Définir les processus de vente<br>Identifier les prospects<br>Mettre en place le suivi', 1, 0, 1, NOW(), NOW()),
(453, 140, 930, '1', 'Optimiser la vente', 'Analyser les performances<br>Développer les compétences<br>Mettre en place les outils', 2, 0, 1, NOW(), NOW()),
(454, 140, 930, '2', 'Excellence commerciale', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 931: Relation client
(455, 140, 931, '0', 'Développer les clients', 'Identifier les prospects<br>Développer le portefeuille<br>Suivre les relations', 1, 0, 1, NOW(), NOW()),
(456, 140, 931, '1', 'Optimiser les relations', 'Mettre en place un CRM<br>Développer la fidélisation<br>Analyser la satisfaction', 2, 0, 1, NOW(), NOW()),
(457, 140, 931, '2', 'Stratégie relation client', 'Piloter par la satisfaction<br>Optimiser l\\'expérience<br>Créer la valeur par la relation', 3, 0, 1, NOW(), NOW()),

-- Question 932: Organisation commerciale
(458, 140, 932, '0', 'Organiser la vente', 'Définir les processus<br>Organiser les équipes<br>Mettre en place les contrôles', 1, 0, 1, NOW(), NOW()),
(459, 140, 932, '1', 'Optimiser l\\'organisation', 'Développer les processus<br>Optimiser les flux<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(460, 140, 932, '2', 'Excellence commerciale', 'Piloter par la performance<br>Optimiser continuellement<br>Innover dans les processus', 3, 0, 1, NOW(), NOW()),

-- Question 933: Qualité et amélioration
(461, 140, 933, '0', 'Assurer la qualité', 'Définir les standards<br>Mettre en place les contrôles<br>Traiter les problèmes', 1, 0, 1, NOW(), NOW()),
(462, 140, 933, '1', 'Optimiser la qualité', 'Analyser les retours clients<br>Améliorer les processus<br>Mettre en place l\\'amélioration continue', 2, 0, 1, NOW(), NOW()),
(463, 140, 933, '2', 'Excellence qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Créer la valeur par la qualité', 3, 0, 1, NOW(), NOW()),

-- Question 934: Organisation opérationnelle
(464, 140, 934, '0', 'Organiser les opérations', 'Définir les processus clés<br>Organiser les flux de travail<br>Mettre en place les contrôles', 1, 0, 1, NOW(), NOW()),
(465, 140, 934, '1', 'Optimiser les opérations', 'Analyser l\\'efficacité<br>Améliorer les processus<br>Mettre en place les indicateurs', 2, 0, 1, NOW(), NOW()),
(466, 140, 934, '2', 'Excellence opérationnelle', 'Piloter par la performance<br>Optimiser continuellement<br>Innover dans les processus', 3, 0, 1, NOW(), NOW()),

-- Question 935: Organisation du travail
(467, 140, 935, '0', 'Organiser le travail', 'Définir les tâches<br>Organiser les flux<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(468, 140, 935, '1', 'Optimiser le travail', 'Optimiser les processus<br>Développer l\\'efficacité<br>Améliorer la collaboration', 2, 0, 1, NOW(), NOW()),
(469, 140, 935, '2', 'Excellence travail', 'Maîtriser l\\'organisation<br>Optimiser l\\'efficacité<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 936: Gestion des fournisseurs
(470, 140, 936, '0', 'Gérer les fournisseurs', 'Sélectionner les fournisseurs<br>Négocier les conditions<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(471, 140, 936, '1', 'Optimiser les fournisseurs', 'Développer les relations<br>Optimiser les conditions<br>Assurer la performance', 2, 0, 1, NOW(), NOW()),
(472, 140, 936, '2', 'Excellence fournisseurs', 'Maîtriser les relations<br>Optimiser la performance<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 937: Gestion des stocks
(473, 140, 937, '0', 'Gérer les stocks', 'Suivre les niveaux<br>Éviter les ruptures<br>Assurer la disponibilité', 1, 0, 1, NOW(), NOW()),
(474, 140, 937, '1', 'Optimiser les stocks', 'Optimiser les niveaux<br>Réduire les coûts<br>Améliorer la rotation', 2, 0, 1, NOW(), NOW()),
(475, 140, 937, '2', 'Excellence stocks', 'Maîtriser les stocks<br>Optimiser la rotation<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 938: Organisation logistique
(476, 140, 938, '0', 'Organiser la logistique', 'Définir les processus<br>Organiser les flux<br>Assurer la livraison', 1, 0, 1, NOW(), NOW()),
(477, 140, 938, '1', 'Optimiser la logistique', 'Développer les processus<br>Optimiser les flux<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(478, 140, 938, '2', 'Excellence logistique', 'Maîtriser la logistique<br>Optimiser les flux<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 939: Organisation de la production
(479, 140, 939, '0', 'Organiser la production', 'Planifier la production<br>Organiser les ressources<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(480, 140, 939, '1', 'Optimiser la production', 'Optimiser les processus<br>Développer l\\'efficacité<br>Améliorer la qualité', 2, 0, 1, NOW(), NOW()),
(481, 140, 939, '2', 'Excellence production', 'Maîtriser la production<br>Optimiser l\\'efficacité<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 940: Organisation commerciale
(482, 140, 940, '0', 'Organiser la vente', 'Définir les processus<br>Organiser les équipes<br>Mettre en place les contrôles', 1, 0, 1, NOW(), NOW()),
(483, 140, 940, '1', 'Optimiser l\\'organisation', 'Développer les processus<br>Optimiser les flux<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(484, 140, 940, '2', 'Excellence organisationnelle', 'Maîtriser l\\'organisation<br>Optimiser l\\'efficacité<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 941: Posture commerciale
(485, 140, 941, '0', 'Opérateur commercial', 'Exécuter les ventes<br>Suivre les instructions<br>Manque de vision', 1, 0, 1, NOW(), NOW()),
(486, 140, 941, '1', 'Manager commercial', 'Gérer les ventes<br>Optimiser les processus<br>Vision émergente', 2, 0, 1, NOW(), NOW()),
(487, 140, 941, '2', 'Stratège commercial', 'Piloter la stratégie commerciale<br>Développer la vision<br>Leadership commercial', 3, 0, 1, NOW(), NOW()),

-- Question 942: Posture dominante
(488, 140, 942, '0', 'Réactif commercial', 'Réagir aux opportunités<br>S\\'adapter au marché<br>Manque de stratégie', 1, 0, 1, NOW(), NOW()),
(489, 140, 942, '1', 'Proactif commercial', 'Anticiper les opportunités<br>Planifier les actions<br>Stratégie émergente', 2, 0, 1, NOW(), NOW()),
(490, 140, 942, '2', 'Stratège commercial', 'Piloter les opportunités<br>Créer l\\'innovation<br>Leadership commercial', 3, 0, 1, NOW(), NOW()),

-- Question 943: Excellence commerciale
(491, 140, 943, '0', 'Vendre efficacement', 'Atteindre les objectifs<br>Assurer la satisfaction<br>Maximiser les revenus', 1, 0, 1, NOW(), NOW()),
(492, 140, 943, '1', 'Optimiser la vente', 'Développer les compétences<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(493, 140, 943, '2', 'Excellence commerciale', 'Maîtriser la vente<br>Optimiser la performance<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- MODULE 141: FONCTION 8 - OPÉRATIONS (Type 2) - COMPLET
-- Question 932: Organisation opérationnelle
(494, 141, 932, '0', 'Structurer les opérations', 'Définir les processus clés<br>Organiser les flux de travail<br>Mettre en place les contrôles', 1, 0, 1, NOW(), NOW()),
(495, 141, 932, '1', 'Optimiser les opérations', 'Analyser l\\'efficacité<br>Améliorer les processus<br>Mettre en place les indicateurs', 2, 0, 1, NOW(), NOW()),
(496, 141, 932, '2', 'Excellence opérationnelle', 'Piloter par la performance<br>Optimiser continuellement<br>Innover dans les processus', 3, 0, 1, NOW(), NOW()),

-- Question 933: Organisation du travail
(497, 141, 933, '0', 'Organiser le travail', 'Définir les tâches<br>Organiser les flux<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(498, 141, 933, '1', 'Optimiser le travail', 'Optimiser les processus<br>Développer l\\'efficacité<br>Améliorer la collaboration', 2, 0, 1, NOW(), NOW()),
(499, 141, 933, '2', 'Excellence travail', 'Maîtriser l\\'organisation<br>Optimiser l\\'efficacité<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 934: Organisation de la production
(500, 141, 934, '0', 'Organiser la production', 'Planifier la production<br>Organiser les ressources<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(501, 141, 934, '1', 'Optimiser la production', 'Optimiser les processus<br>Développer l\\'efficacité<br>Améliorer la qualité', 2, 0, 1, NOW(), NOW()),
(502, 141, 934, '2', 'Excellence production', 'Maîtriser la production<br>Optimiser l\\'efficacité<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 935: Gestion des fournisseurs
(503, 141, 935, '0', 'Gérer les fournisseurs', 'Sélectionner les fournisseurs<br>Négocier les conditions<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(504, 141, 935, '1', 'Optimiser les fournisseurs', 'Développer les relations<br>Optimiser les conditions<br>Assurer la performance', 2, 0, 1, NOW(), NOW()),
(505, 141, 935, '2', 'Excellence fournisseurs', 'Maîtriser les relations<br>Optimiser la performance<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 936: Gestion des stocks
(506, 141, 936, '0', 'Gérer les stocks', 'Suivre les niveaux<br>Éviter les ruptures<br>Assurer la disponibilité', 1, 0, 1, NOW(), NOW()),
(507, 141, 936, '1', 'Optimiser les stocks', 'Optimiser les niveaux<br>Réduire les coûts<br>Améliorer la rotation', 2, 0, 1, NOW(), NOW()),
(508, 141, 936, '2', 'Excellence stocks', 'Maîtriser les stocks<br>Optimiser la rotation<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 937: Organisation logistique
(509, 141, 937, '0', 'Organiser la logistique', 'Définir les processus<br>Organiser les flux<br>Assurer la livraison', 1, 0, 1, NOW(), NOW()),
(510, 141, 937, '1', 'Optimiser la logistique', 'Développer les processus<br>Optimiser les flux<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(511, 141, 937, '2', 'Excellence logistique', 'Maîtriser la logistique<br>Optimiser les flux<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 938: Organisation de la maintenance
(512, 141, 938, '0', 'Organiser la maintenance', 'Planifier la maintenance<br>Organiser les interventions<br>Assurer la disponibilité', 1, 0, 1, NOW(), NOW()),
(513, 141, 938, '1', 'Optimiser la maintenance', 'Développer les processus<br>Optimiser les interventions<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(514, 141, 938, '2', 'Excellence maintenance', 'Maîtriser la maintenance<br>Optimiser les interventions<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 939: Organisation administrative
(515, 141, 939, '0', 'Organiser l\\'admin', 'Organiser les documents<br>Mettre en place les procédures<br>Créer les archives', 1, 0, 1, NOW(), NOW()),
(516, 141, 939, '1', 'Optimiser l\\'admin', 'Analyser l\\'efficacité<br>Développer les procédures<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(517, 141, 939, '2', 'Excellence administrative', 'Maîtriser l\\'administration<br>Optimiser les processus<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 940: Posture opérationnelle
(518, 141, 940, '0', 'Opérateur opérationnel', 'Exécuter les tâches<br>Suivre les instructions<br>Manque de vision', 1, 0, 1, NOW(), NOW()),
(519, 141, 940, '1', 'Manager opérationnel', 'Gérer les opérations<br>Optimiser les processus<br>Vision émergente', 2, 0, 1, NOW(), NOW()),
(520, 141, 940, '2', 'Stratège opérationnel', 'Piloter les opérations<br>Développer la vision<br>Leadership opérationnel', 3, 0, 1, NOW(), NOW()),

-- Question 941: Posture dominante
(521, 141, 941, '0', 'Réactif opérationnel', 'Réagir aux problèmes<br>S\\'adapter aux situations<br>Manque de stratégie', 1, 0, 1, NOW(), NOW()),
(522, 141, 941, '1', 'Proactif opérationnel', 'Anticiper les problèmes<br>Planifier les actions<br>Stratégie émergente', 2, 0, 1, NOW(), NOW()),
(523, 141, 941, '2', 'Stratège opérationnel', 'Piloter les opérations<br>Créer les opportunités<br>Leadership opérationnel', 3, 0, 1, NOW(), NOW()),

-- Question 942: Excellence opérationnelle
(524, 141, 942, '0', 'Opérer efficacement', 'Atteindre les objectifs<br>Assurer la qualité<br>Maximiser l\\'efficacité', 1, 0, 1, NOW(), NOW()),
(525, 141, 942, '1', 'Optimiser l\\'opération', 'Développer les compétences<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(526, 141, 942, '2', 'Excellence opérationnelle', 'Maîtriser les opérations<br>Optimiser la performance<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- MODULE 142: FONCTION 9 - DIGITAL (Type 2) - COMPLET
-- Question 934: Stratégie digitale
(527, 142, 934, '0', 'Démarrer le digital', 'Choisir les outils de base<br>Créer une présence en ligne<br>Former l\\'équipe', 1, 0, 1, NOW(), NOW()),
(528, 142, 934, '1', 'Optimiser le digital', 'Analyser l\\'efficacité<br>Développer les compétences<br>Mettre en place les stratégies', 2, 0, 1, NOW(), NOW()),
(529, 142, 934, '2', 'Excellence digitale', 'Piloter par le digital<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 935: Outils et automatisation
(530, 142, 935, '0', 'Utiliser les outils', 'Choisir les logiciels adaptés<br>Former les utilisateurs<br>Mettre en place les bases', 1, 0, 1, NOW(), NOW()),
(531, 142, 935, '1', 'Optimiser les outils', 'Analyser l\\'utilisation<br>Développer l\\'automatisation<br>Intégrer les systèmes', 2, 0, 1, NOW(), NOW()),
(532, 142, 935, '2', 'Stratégie digitale', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 3, 0, 1, NOW(), NOW()),

-- Question 936: Transformation digitale
(533, 142, 936, '0', 'Commencer la transformation', 'Identifier les opportunités<br>Développer les projets<br>Lancer la transformation', 1, 0, 1, NOW(), NOW()),
(534, 142, 936, '1', 'Optimiser la transformation', 'Développer les projets<br>Optimiser les processus<br>Accélérer la transformation', 2, 0, 1, NOW(), NOW()),
(535, 142, 936, '2', 'Excellence digitale', 'Maîtriser la transformation<br>Optimiser les processus<br>Maximiser la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 937: Innovation digitale
(536, 142, 937, '0', 'Commencer l\\'innovation', 'Identifier les opportunités<br>Développer les idées<br>Lancer l\\'innovation', 1, 0, 1, NOW(), NOW()),
(537, 142, 937, '1', 'Optimiser l\\'innovation', 'Développer les projets<br>Optimiser les processus<br>Accélérer l\\'innovation', 2, 0, 1, NOW(), NOW()),
(538, 142, 937, '2', 'Excellence digitale', 'Maîtriser l\\'innovation<br>Optimiser les processus<br>Créer la disruption', 3, 0, 1, NOW(), NOW()),

-- Question 938: Stratégie digitale
(539, 142, 938, '0', 'Définir la stratégie', 'Définir la vision digitale<br>Identifier les objectifs<br>Planifier les actions', 1, 0, 1, NOW(), NOW()),
(540, 142, 938, '1', 'Optimiser la stratégie', 'Développer la stratégie digitale<br>Optimiser les actions<br>Aligner sur la vision', 2, 0, 1, NOW(), NOW()),
(541, 142, 938, '2', 'Excellence digitale', 'Maîtriser la stratégie digitale<br>Optimiser les actions<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 939: Posture digitale
(542, 142, 939, '0', 'Utilisateur digital', 'Utiliser les outils digitaux<br>Être à l\\'aise<br>Manque de vision', 1, 0, 1, NOW(), NOW()),
(543, 142, 939, '1', 'Manager digital', 'Gérer les outils digitaux<br>Optimiser l\\'utilisation<br>Vision émergente', 2, 0, 1, NOW(), NOW()),
(544, 142, 939, '2', 'Stratège digital', 'Piloter par le digital<br>Développer la vision<br>Leadership digital', 3, 0, 1, NOW(), NOW()),

-- Question 940: Excellence digitale
(545, 142, 940, '0', 'Maîtriser les outils', 'Maîtriser les outils digitaux<br>Optimiser l\\'utilisation<br>Maximiser l\\'efficacité', 1, 0, 1, NOW(), NOW()),
(546, 142, 940, '1', 'Optimiser les outils', 'Développer les compétences<br>Optimiser l\\'écosystème<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(547, 142, 940, '2', 'Excellence digitale', 'Maîtriser l\\'écosystème<br>Optimiser la performance<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- MODULE 143: FONCTION 10 - ADMINISTRATION (Type 2) - COMPLET
-- Question 936: Organisation administrative
(548, 143, 936, '0', 'Structurer l\\'admin', 'Organiser les documents<br>Mettre en place les procédures<br>Créer les archives', 1, 0, 1, NOW(), NOW()),
(549, 143, 936, '1', 'Optimiser l\\'admin', 'Analyser l\\'efficacité<br>Développer les procédures<br>Améliorer l\\'efficacité', 2, 0, 1, NOW(), NOW()),
(550, 143, 936, '2', 'Excellence administrative', 'Maîtriser l\\'administration<br>Optimiser les processus<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 937: Conformité et sécurité
(551, 143, 937, '0', 'Assurer la conformité', 'Identifier les obligations<br>Mettre en place les procédures<br>Suivre les échéances', 1, 0, 1, NOW(), NOW()),
(552, 143, 937, '1', 'Optimiser la conformité', 'Analyser les risques<br>Développer les contrôles<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(553, 143, 937, '2', 'Excellence administrative', 'Intégrer la conformité dans la stratégie<br>Anticiper les évolutions<br>Optimiser la sécurité', 3, 0, 1, NOW(), NOW()),

-- Question 938: Organisation des archives
(554, 143, 938, '0', 'Organiser les archives', 'Créer les archives<br>Organiser les documents<br>Assurer la conservation', 1, 0, 1, NOW(), NOW()),
(555, 143, 938, '1', 'Optimiser les archives', 'Développer les processus<br>Optimiser la conservation<br>Faciliter l\\'accès', 2, 0, 1, NOW(), NOW()),
(556, 143, 938, '2', 'Excellence archivage', 'Maîtriser les archives<br>Optimiser la conservation<br>Maximiser la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 939: Gestion des informations
(557, 143, 939, '0', 'Gérer les informations', 'Organiser les informations<br>Assurer la confidentialité<br>Faciliter l\\'accès', 1, 0, 1, NOW(), NOW()),
(558, 143, 939, '1', 'Optimiser les informations', 'Développer les processus<br>Optimiser la confidentialité<br>Améliorer l\\'accessibilité', 2, 0, 1, NOW(), NOW()),
(559, 143, 939, '2', 'Excellence information', 'Maîtriser les informations<br>Optimiser la confidentialité<br>Maximiser la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 940: Posture administrative
(560, 143, 940, '0', 'Administrateur opérationnel', 'Exécuter les tâches administratives<br>Suivre les procédures<br>Manque de vision', 1, 0, 1, NOW(), NOW()),
(561, 143, 940, '1', 'Manager administratif', 'Gérer l\\'administration<br>Optimiser les processus<br>Vision émergente', 2, 0, 1, NOW(), NOW()),
(562, 143, 940, '2', 'Stratège administrative', 'Piloter l\\'administration<br>Développer la vision<br>Leadership administratif', 3, 0, 1, NOW(), NOW()),

-- Question 941: Posture dominante
(563, 143, 941, '0', 'Réactif administratif', 'Réagir aux besoins<br>S\\'adapter aux situations<br>Manque de stratégie', 1, 0, 1, NOW(), NOW()),
(564, 143, 941, '1', 'Proactif administratif', 'Anticiper les besoins<br>Planifier les actions<br>Stratégie émergente', 2, 0, 1, NOW(), NOW()),
(565, 143, 941, '2', 'Stratège administrative', 'Piloter l\\'administration<br>Développer la vision<br>Leadership administratif', 3, 0, 1, NOW(), NOW()),

-- Question 942: Excellence administrative
(566, 143, 942, '0', 'Administrer efficacement', 'Atteindre les objectifs<br>Assurer la qualité<br>Maximiser l\\'efficacité', 1, 0, 1, NOW(), NOW()),
(567, 143, 942, '1', 'Optimiser l\\'administration', 'Développer les compétences<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(568, 143, 942, '2', 'Excellence administrative', 'Maîtriser l\\'administration<br>Optimiser la performance<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 - BLOCS ÉMERGENTS (modules 48-57) - COMPLET
-- Module 48: Bloc 1 - Stratégie (Émergent)
-- Question 650: Vision stratégique
(6000, 48, 650, '0', 'Initier la vision', 'Formaliser la mission principale<br>Identifier 2-3 objectifs clés<br>Partager avec les proches', 1, 0, 1, NOW(), NOW()),
(6001, 48, 650, '1', 'Structurer la vision', 'Documenter le modèle économique<br>Définir les indicateurs simples<br>Créer un plan de base', 2, 0, 1, NOW(), NOW()),
(6002, 48, 650, '2', 'Piloter par la vision', 'Utiliser la vision quotidiennement<br>Suivre les indicateurs mensuellement<br>Ajuster trimestriellement', 3, 0, 1, NOW(), NOW()),

-- Question 651: Modèle d\\'affaires
(6003, 48, 651, '0', 'Comprendre le modèle', 'Lister les revenus et coûts<br>Identifier la valeur ajoutée<br>Analyser la rentabilité simple', 1, 0, 1, NOW(), NOW()),
(6004, 48, 651, '1', 'Optimiser le modèle', 'Analyser la rentabilité par activité<br>Identifier les leviers de croissance<br>Tester des améliorations', 2, 0, 1, NOW(), NOW()),
(6005, 48, 651, '2', 'Développer le modèle', 'Explorer de nouvelles sources<br>Développer l\\'offre existante<br>Préparer l\\'expansion', 3, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 - BLOCS ÉLITE (modules 101-110) - COMPLET
-- Module 101: Bloc 1 - Stratégie (ÉLITE)
-- Question 700: Vision stratégique avancée
(5000, 101, 700, '0', 'Maîtriser la vision', 'Documenter la vision stratégique<br>Définir les indicateurs avancés<br>Aligner l\\'organisation', 1, 0, 1, NOW(), NOW()),
(5001, 101, 700, '1', 'Optimiser la vision', 'Utiliser la vision pour décider<br>Suivre les indicateurs mensuellement<br>Ajuster trimestriellement', 2, 0, 1, NOW(), NOW()),
(5002, 101, 700, '2', 'Excellence stratégique', 'Piloter par la vision<br>Optimiser continuellement<br>Innover stratégiquement', 3, 0, 1, NOW(), NOW()),

-- Question 701: Modèle économique avancé
(5003, 101, 701, '0', 'Maîtriser le modèle', 'Analyser la rentabilité fine<br>Identifier les leviers stratégiques<br>Optimiser la performance', 1, 0, 1, NOW(), NOW()),
(5004, 101, 701, '1', 'Optimiser le modèle', 'Développer de nouvelles sources<br>Innover dans l\\'offre<br>Préparer l\\'échelle', 2, 0, 1, NOW(), NOW()),
(5005, 101, 701, '2', 'Excellence économique', 'Piloter par le modèle<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Module 102: Bloc 2 - Finance & Comptabilité (ÉLITE)
-- Question 702: Pilotage financier avancé
(5006, 102, 702, '0', 'Maîtriser la finance', 'Utiliser les ratios avancés<br>Analyser les tendances<br>Prendre décisions stratégiques', 1, 0, 1, NOW(), NOW()),
(5007, 102, 702, '1', 'Optimiser la finance', 'Piloter par les données<br>Optimiser la rentabilité<br>Financer la croissance', 2, 0, 1, NOW(), NOW()),
(5008, 102, 702, '2', 'Excellence financière', 'Utiliser des outils avancés<br>Piloter proactivement<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 703: Gestion de trésorerie avancée
(5009, 102, 703, '0', 'Maîtriser le cash', 'Utiliser des outils de prévision<br>Gérer proactivement la trésorerie<br>Optimiser les flux', 1, 0, 1, NOW(), NOW()),
(5010, 102, 703, '1', 'Optimiser le cash', 'Développer les stratégies avancées<br>Optimiser la structure financière<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(5011, 102, 703, '2', 'Excellence en trésorerie', 'Piloter par la trésorerie<br>Optimiser continuellement<br>Innover financièrement', 3, 0, 1, NOW(), NOW()),

-- Module 103: Bloc 3 - Juridique (ÉLITE)
-- Question 704: Gouvernance juridique
(5012, 103, 704, '0', 'Maîtriser le juridique', 'Intégrer le juridique au pilotage<br>Anticiper les évolutions<br>Optimiser la protection', 1, 0, 1, NOW(), NOW()),
(5013, 103, 704, '1', 'Optimiser le juridique', 'Développer la gouvernance<br>Optimiser la structure<br>Prévenir les risques', 2, 0, 1, NOW(), NOW()),
(5014, 103, 704, '2', 'Excellence juridique', 'Piloter par le juridique<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 705: Stratégie contractuelle
(5015, 103, 705, '0', 'Maîtriser les contrats', 'Utiliser les contrats stratégiquement<br>Piloter les partenariats<br>Anticiper les risques', 1, 0, 1, NOW(), NOW()),
(5016, 103, 705, '1', 'Optimiser les contrats', 'Développer la stratégie contractuelle<br>Optimiser les partenariats<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5017, 103, 705, '2', 'Excellence contractuelle', 'Piloter par les contrats<br>Optimiser continuellement<br>Innover contractuellement', 3, 0, 1, NOW(), NOW()),

-- Module 104: Bloc 4 - Ressources humaines (ÉLITE)
-- Question 706: Pilotage RH avancé
(5018, 104, 706, '0', 'Maîtriser le RH', 'Aligner l\\'organisation sur la stratégie<br>Développer les compétences<br>Optimiser la performance', 1, 0, 1, NOW(), NOW()),
(5019, 104, 706, '1', 'Optimiser le RH', 'Développer le leadership<br>Optimiser l\\'engagement<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(5020, 104, 706, '2', 'Excellence RH', 'Piloter par le capital humain<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 707: Capital humain stratégique
(5021, 104, 707, '0', 'Maîtriser les talents', 'Aligner les compétences sur la stratégie<br>Développer le leadership<br>Optimiser l\\'engagement', 1, 0, 1, NOW(), NOW()),
(5022, 104, 707, '1', 'Optimiser les talents', 'Développer les plans de carrière avancés<br>Optimiser la performance<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5023, 104, 707, '2', 'Capital humain stratégique', 'Aligner les compétences sur la stratégie<br>Développer le leadership<br>Optimiser l\\'engagement', 3, 0, 1, NOW(), NOW()),

-- Module 105: Bloc 5 - Marketing (ÉLITE)
-- Question 708: Excellence marketing
(5024, 105, 708, '0', 'Maîtriser le marketing', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 1, 0, 1, NOW(), NOW()),
(5025, 105, 708, '1', 'Optimiser le marketing', 'Développer les stratégies avancées<br>Optimiser les canaux<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(5026, 105, 708, '2', 'Excellence marketing', 'Piloter par le marketing<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 709: Stratégie communication avancée
(5027, 105, 709, '0', 'Maîtriser la communication', 'Piloter par les données<br>Optimiser les canaux<br>Personnaliser les messages', 1, 0, 1, NOW(), NOW()),
(5028, 105, 709, '1', 'Optimiser la communication', 'Développer les stratégies avancées<br>Optimiser les messages<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(5029, 105, 709, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Innover dans la communication', 3, 0, 1, NOW(), NOW()),

-- Module 106: Bloc 6 - Communication (ÉLITE)
-- Question 710: Excellence en communication
(5030, 106, 710, '0', 'Maîtriser la communication', 'Piloter par la communication<br>Optimiser continuellement<br>Aligner sur la stratégie', 1, 0, 1, NOW(), NOW()),
(5031, 106, 710, '1', 'Optimiser la communication', 'Développer les stratégies avancées<br>Optimiser les canaux<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(5032, 106, 710, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 711: Stratégie d\\'image avancée
(5033, 106, 711, '0', 'Maîtriser l\\'image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 1, 0, 1, NOW(), NOW()),
(5034, 106, 711, '1', 'Optimiser l\\'image', 'Développer les stratégies avancées<br>Optimiser la perception<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5035, 106, 711, '2', 'Excellence en image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 3, 0, 1, NOW(), NOW()),

-- Module 107: Bloc 7 - Commercial (ÉLITE)
-- Question 712: Excellence commerciale
(5036, 107, 712, '0', 'Maîtriser la vente', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 1, 0, 1, NOW(), NOW()),
(5037, 107, 712, '1', 'Optimiser la vente', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(5038, 107, 712, '2', 'Excellence commerciale', 'Piloter par la vente<br>Optimiser continuellement<br>Innover dans la vente', 3, 0, 1, NOW(), NOW()),

-- Question 713: Stratégie relation client avancée
(5039, 107, 713, '0', 'Maîtriser les relations', 'Piloter par la satisfaction<br>Optimiser l\\'expérience<br>Créer la valeur par la relation', 1, 0, 1, NOW(), NOW()),
(5040, 107, 713, '1', 'Optimiser les relations', 'Développer les stratégies avancées<br>Optimiser l\\'expérience<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5041, 107, 713, '2', 'Excellence relationnelle', 'Piloter par les relations<br>Optimiser continuellement<br>Innover dans les relations', 3, 0, 1, NOW(), NOW()),

-- Module 108: Bloc 8 - Opérations (ÉLITE)
-- Question 714: Excellence opérationnelle
(5042, 108, 714, '0', 'Maîtriser les opérations', 'Piloter par la performance<br>Optimiser continuellement<br>Innover dans les processus', 1, 0, 1, NOW(), NOW()),
(5043, 108, 714, '1', 'Optimiser les opérations', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(5044, 108, 714, '2', 'Excellence opérationnelle', 'Piloter par les opérations<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 715: Qualité et amélioration avancées
(5045, 108, 715, '0', 'Maîtriser la qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Créer la valeur par la qualité', 1, 0, 1, NOW(), NOW()),
(5046, 108, 715, '1', 'Optimiser la qualité', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5047, 108, 715, '2', 'Excellence qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Innover dans la qualité', 3, 0, 1, NOW(), NOW()),

-- Module 109: Bloc 9 - Digital (ÉLITE)
-- Question 716: Excellence digitale
(5048, 109, 716, '0', 'Maîtriser le digital', 'Piloter par le digital<br>Optimiser continuellement<br>Innover dans l\\'approche', 1, 0, 1, NOW(), NOW()),
(5049, 109, 716, '1', 'Optimiser le digital', 'Développer les stratégies avancées<br>Optimiser l\\'écosystème<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(5050, 109, 716, '2', 'Excellence digitale', 'Piloter par le digital<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 717: Stratégie digitale avancée
(5051, 109, 717, '0', 'Maîtriser les outils', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 1, 0, 1, NOW(), NOW()),
(5052, 109, 717, '1', 'Optimiser les outils', 'Développer les stratégies avancées<br>Optimiser l\\'intégration<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(5053, 109, 717, '2', 'Excellence digitale', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 3, 0, 1, NOW(), NOW()),

-- Module 110: Bloc 10 - Administration (ÉLITE)
-- Question 718: Excellence administrative
(5054, 110, 718, '0', 'Maîtriser l\\'admin', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur par l\\'admin', 1, 0, 1, NOW(), NOW()),
(5055, 110, 718, '1', 'Optimiser l\\'admin', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5056, 110, 718, '2', 'Excellence administrative', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 719: Stratégie administrative avancée
(5057, 110, 719, '0', 'Maîtriser la conformité', 'Piloter par la conformité<br>Optimiser la sécurité<br>Créer la valeur par l\\'admin', 1, 0, 1, NOW(), NOW()),
(5058, 110, 719, '1', 'Optimiser la conformité', 'Développer les stratégies avancées<br>Optimiser la sécurité<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(5059, 110, 719, '2', 'Excellence administrative', 'Piloter par la conformité<br>Optimiser continuellement<br>Innover dans l\\'administration', 3, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 - BLOCS ÉMERGENTS (modules 48-57) - COMPLET
-- Module 49: Bloc 2 - Finance & Comptabilité (Émergent)
-- Question 652: Gestion financière de base
(6006, 49, 652, '0', 'Démarrer la finance', 'Ouvrir un compte bancaire<br>Suivre les revenus/dépenses<br>Faire les factures simples', 1, 0, 1, NOW(), NOW()),
(6007, 49, 652, '1', 'Structurer la finance', 'Mettre en place la comptabilité<br>Analyser les coûts<br>Optimiser la trésorerie', 2, 0, 1, NOW(), NOW()),
(6008, 49, 652, '2', 'Optimiser la finance', 'Utiliser les ratios financiers<br>Piloter par les indicateurs<br>Prendre décisions stratégiques', 3, 0, 1, NOW(), NOW()),

-- Question 653: Gestion de trésorerie
(6009, 49, 653, '0', 'Gérer le cash', 'Suivre le flux de trésorerie<br>Anticiper les besoins<br>Éviter les découverts', 1, 0, 1, NOW(), NOW()),
(6010, 49, 653, '1', 'Optimiser le cash', 'Faire des prévisions<br>Négocier les délais<br>Optimiser les flux', 2, 0, 1, NOW(), NOW()),
(6011, 49, 653, '2', 'Excellence en trésorerie', 'Utiliser des outils avancés<br>Piloter proactivement<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Module 50: Bloc 3 - Juridique (Émergent)
-- Question 654: Conformité juridique
(6012, 50, 654, '0', 'Démarrer le juridique', 'Choisir la structure juridique<br>Faire les immatriculations<br>Assurer la conformité de base', 1, 0, 1, NOW(), NOW()),
(6013, 50, 654, '1', 'Structurer le juridique', 'Mettre en place les contrats<br>Protéger la propriété intellectuelle<br>Anticiper les risques', 2, 0, 1, NOW(), NOW()),
(6014, 50, 654, '2', 'Optimiser le juridique', 'Intégrer le juridique au pilotage<br>Anticiper les évolutions<br>Optimiser la protection', 3, 0, 1, NOW(), NOW()),

-- Question 655: Gestion des contrats
(6015, 50, 655, '0', 'Gérer les contrats', 'Utiliser des modèles standards<br>Suivre les échéances<br>Archiver les documents', 1, 0, 1, NOW(), NOW()),
(6016, 50, 655, '1', 'Optimiser les contrats', 'Développer des modèles adaptés<br>Négocier les termes<br>Suivre les performances', 2, 0, 1, NOW(), NOW()),
(6017, 50, 655, '2', 'Excellence contractuelle', 'Utiliser les contrats stratégiquement<br>Piloter les partenariats<br>Anticiper les risques', 3, 0, 1, NOW(), NOW()),

-- Module 51: Bloc 4 - Ressources humaines (Émergent)
-- Question 656: Gestion des équipes
(6018, 51, 656, '0', 'Démarrer le RH', 'Recruter les premiers collaborateurs<br>Définir les rôles<br>Mettre en place la paie', 1, 0, 1, NOW(), NOW()),
(6019, 51, 656, '1', 'Structurer le RH', 'Développer les compétences<br>Mettre en place l\\'évaluation<br>Optimiser la performance', 2, 0, 1, NOW(), NOW()),
(6020, 51, 656, '2', 'Optimiser le RH', 'Aligner l\\'organisation sur la stratégie<br>Développer les compétences<br>Optimiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 657: Développement des compétences
(6021, 51, 657, '0', 'Développer les bases', 'Former les collaborateurs<br>Développer les compétences clés<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(6022, 51, 657, '1', 'Optimiser les compétences', 'Mettre en place des plans de formation<br>Développer le leadership<br>Optimiser l\\'engagement', 2, 0, 1, NOW(), NOW()),
(6023, 51, 657, '2', 'Excellence RH', 'Piloter par le capital humain<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Module 52: Bloc 5 - Marketing (Émergent)
-- Question 658: Stratégie marketing
(6024, 52, 658, '0', 'Démarrer le marketing', 'Identifier les clients cibles<br>Créer une offre simple<br>Communiquer localement', 1, 0, 1, NOW(), NOW()),
(6025, 52, 658, '1', 'Structurer le marketing', 'Développer la stratégie<br>Optimiser les canaux<br>Mesurer les résultats', 2, 0, 1, NOW(), NOW()),
(6026, 52, 658, '2', 'Optimiser le marketing', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 659: Communication marketing
(6027, 52, 659, '0', 'Communiquer simplement', 'Utiliser les réseaux sociaux<br>Créer du contenu simple<br>Engager la communauté', 1, 0, 1, NOW(), NOW()),
(6028, 52, 659, '1', 'Optimiser la communication', 'Développer la stratégie de contenu<br>Optimiser les canaux<br>Personnaliser les messages', 2, 0, 1, NOW(), NOW()),
(6029, 52, 659, '2', 'Excellence marketing', 'Piloter par les données<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Module 53: Bloc 6 - Communication (Émergent)
-- Question 660: Stratégie de communication
(6030, 53, 660, '0', 'Démarrer la communication', 'Définir le message clé<br>Utiliser les canaux simples<br>Créer une identité', 1, 0, 1, NOW(), NOW()),
(6031, 53, 660, '1', 'Structurer la communication', 'Développer la stratégie<br>Optimiser les canaux<br>Mesurer l\\'impact', 2, 0, 1, NOW(), NOW()),
(6032, 53, 660, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 661: Gestion de l\\'image
(6033, 53, 661, '0', 'Créer l\\'image', 'Définir l\\'identité visuelle<br>Communiquer les valeurs<br>Assurer la cohérence', 1, 0, 1, NOW(), NOW()),
(6034, 53, 661, '1', 'Optimiser l\\'image', 'Développer la stratégie d\\'image<br>Optimiser la perception<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6035, 53, 661, '2', 'Excellence en image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 3, 0, 1, NOW(), NOW()),

-- Module 54: Bloc 7 - Commercial (Émergent)
-- Question 662: Développement commercial
(6036, 54, 662, '0', 'Démarrer les ventes', 'Identifier les premiers clients<br>Développer l\\'offre<br>Assurer la satisfaction', 1, 0, 1, NOW(), NOW()),
(6037, 54, 662, '1', 'Structurer les ventes', 'Développer les processus<br>Optimiser les performances<br>Mettre en place les outils', 2, 0, 1, NOW(), NOW()),
(6038, 54, 662, '2', 'Excellence commerciale', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 663: Relation client
(6039, 54, 663, '0', 'Développer les clients', 'Identifier les prospects<br>Développer le portefeuille<br>Suivre les relations', 1, 0, 1, NOW(), NOW()),
(6040, 54, 663, '1', 'Optimiser les relations', 'Mettre en place un CRM<br>Développer la fidélisation<br>Analyser la satisfaction', 2, 0, 1, NOW(), NOW()),
(6041, 54, 663, '2', 'Excellence relationnelle', 'Piloter par les relations<br>Optimiser continuellement<br>Innover dans les relations', 3, 0, 1, NOW(), NOW()),

-- Module 55: Bloc 8 - Opérations (Émergent)
-- Question 664: Organisation opérationnelle
(6042, 55, 664, '0', 'Démarrer les opérations', 'Définir les processus clés<br>Organiser les flux de travail<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(6043, 55, 664, '1', 'Structurer les opérations', 'Développer les processus<br>Optimiser les flux<br>Mettre en place les indicateurs', 2, 0, 1, NOW(), NOW()),
(6044, 55, 664, '2', 'Excellence opérationnelle', 'Piloter par la performance<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 665: Qualité et amélioration
(6045, 55, 665, '0', 'Assurer la qualité', 'Définir les standards<br>Mettre en place les contrôles<br>Traiter les problèmes', 1, 0, 1, NOW(), NOW()),
(6046, 55, 665, '1', 'Optimiser la qualité', 'Analyser les retours clients<br>Améliorer les processus<br>Mettre en place l\\'amélioration continue', 2, 0, 1, NOW(), NOW()),
(6047, 55, 665, '2', 'Excellence qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Innover dans la qualité', 3, 0, 1, NOW(), NOW()),

-- Module 56: Bloc 9 - Digital (Émergent)
-- Question 666: Transformation digitale
(6048, 56, 666, '0', 'Démarrer le digital', 'Choisir les outils de base<br>Créer une présence en ligne<br>Former l\\'équipe', 1, 0, 1, NOW(), NOW()),
(6049, 56, 666, '1', 'Structurer le digital', 'Développer la stratégie digitale<br>Optimiser les outils<br>Mettre en place les processus', 2, 0, 1, NOW(), NOW()),
(6050, 56, 666, '2', 'Excellence digitale', 'Piloter par le digital<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 667: Outils et automatisation
(6051, 56, 667, '0', 'Utiliser les outils', 'Choisir les logiciels adaptés<br>Former les utilisateurs<br>Mettre en place les bases', 1, 0, 1, NOW(), NOW()),
(6052, 56, 667, '1', 'Optimiser les outils', 'Analyser l\\'utilisation<br>Développer l\\'automatisation<br>Intégrer les systèmes', 2, 0, 1, NOW(), NOW()),
(6053, 56, 667, '2', 'Excellence digitale', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 3, 0, 1, NOW(), NOW()),

-- Module 57: Bloc 10 - Administration (Émergent)
-- Question 668: Organisation administrative
(6054, 57, 668, '0', 'Démarrer l\\'admin', 'Organiser les documents<br>Mettre en place les procédures<br>Créer les archives', 1, 0, 1, NOW(), NOW()),
(6055, 57, 668, '1', 'Structurer l\\'admin', 'Développer les processus<br>Optimiser l\\'efficacité<br>Mettre en place les contrôles', 2, 0, 1, NOW(), NOW()),
(6056, 57, 668, '2', 'Excellence administrative', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 669: Conformité et sécurité
(6057, 57, 669, '0', 'Assurer la conformité', 'Identifier les obligations<br>Mettre en place les procédures<br>Suivre les échéances', 1, 0, 1, NOW(), NOW()),
(6058, 57, 669, '1', 'Optimiser la conformité', 'Analyser les risques<br>Développer les contrôles<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(6059, 57, 669, '2', 'Excellence administrative', 'Piloter par la conformité<br>Optimiser la sécurité<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 - BLOCS ÉMERGENTS (modules 38-47) - COMPLET
-- Module 38: Bloc 1 - Stratégie (Émergent)
-- Question 600: Vision stratégique initiale
(6060, 38, 600, '0', 'Initier la vision', 'Formaliser la mission principale<br>Identifier 2-3 objectifs clés<br>Partager avec les proches', 1, 0, 1, NOW(), NOW()),
(6061, 38, 600, '1', 'Structurer la vision', 'Documenter le modèle économique<br>Définir les indicateurs simples<br>Créer un plan de base', 2, 0, 1, NOW(), NOW()),
(6062, 38, 600, '2', 'Piloter par la vision', 'Utiliser la vision quotidiennement<br>Suivre les indicateurs mensuellement<br>Ajuster trimestriellement', 3, 0, 1, NOW(), NOW()),

-- Question 601: Modèle d\\'affaires simple
(6063, 38, 601, '0', 'Comprendre le modèle', 'Lister les revenus et coûts<br>Identifier la valeur ajoutée<br>Analyser la rentabilité simple', 1, 0, 1, NOW(), NOW()),
(6064, 38, 601, '1', 'Optimiser le modèle', 'Analyser la rentabilité par activité<br>Identifier les leviers de croissance<br>Tester des améliorations', 2, 0, 1, NOW(), NOW()),
(6065, 38, 601, '2', 'Développer le modèle', 'Explorer de nouvelles sources<br>Développer l\\'offre existante<br>Préparer l\\'expansion', 3, 0, 1, NOW(), NOW()),

-- Module 39: Bloc 2 - Finance & Comptabilité (Émergent)
-- Question 602: Gestion financière de base
(6066, 39, 602, '0', 'Démarrer la finance', 'Ouvrir un compte bancaire<br>Suivre les revenus/dépenses<br>Faire les factures simples', 1, 0, 1, NOW(), NOW()),
(6067, 39, 602, '1', 'Structurer la finance', 'Mettre en place la comptabilité<br>Analyser les coûts<br>Optimiser la trésorerie', 2, 0, 1, NOW(), NOW()),
(6068, 39, 602, '2', 'Optimiser la finance', 'Utiliser les ratios financiers<br>Piloter par les indicateurs<br>Prendre décisions stratégiques', 3, 0, 1, NOW(), NOW()),

-- Question 603: Gestion de trésorerie
(6069, 39, 603, '0', 'Gérer le cash', 'Suivre le flux de trésorerie<br>Anticiper les besoins<br>Éviter les découverts', 1, 0, 1, NOW(), NOW()),
(6070, 39, 603, '1', 'Optimiser le cash', 'Faire des prévisions<br>Négocier les délais<br>Optimiser les flux', 2, 0, 1, NOW(), NOW()),
(6071, 39, 603, '2', 'Excellence en trésorerie', 'Utiliser des outils avancés<br>Piloter proactivement<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Module 40: Bloc 3 - Juridique (Émergent)
-- Question 604: Conformité juridique
(6072, 40, 604, '0', 'Démarrer le juridique', 'Choisir la structure juridique<br>Faire les immatriculations<br>Assurer la conformité de base', 1, 0, 1, NOW(), NOW()),
(6073, 40, 604, '1', 'Structurer le juridique', 'Mettre en place les contrats<br>Protéger la propriété intellectuelle<br>Anticiper les risques', 2, 0, 1, NOW(), NOW()),
(6074, 40, 604, '2', 'Optimiser le juridique', 'Intégrer le juridique au pilotage<br>Anticiper les évolutions<br>Optimiser la protection', 3, 0, 1, NOW(), NOW()),

-- Question 605: Gestion des contrats
(6075, 40, 605, '0', 'Gérer les contrats', 'Utiliser des modèles standards<br>Suivre les échéances<br>Archiver les documents', 1, 0, 1, NOW(), NOW()),
(6076, 40, 605, '1', 'Optimiser les contrats', 'Développer des modèles adaptés<br>Négocier les termes<br>Suivre les performances', 2, 0, 1, NOW(), NOW()),
(6077, 40, 605, '2', 'Excellence contractuelle', 'Utiliser les contrats stratégiquement<br>Piloter les partenariats<br>Anticiper les risques', 3, 0, 1, NOW(), NOW()),

-- Module 41: Bloc 4 - Ressources humaines (Émergent)
-- Question 606: Gestion des équipes
(6078, 41, 606, '0', 'Démarrer le RH', 'Recruter les premiers collaborateurs<br>Définir les rôles<br>Mettre en place la paie', 1, 0, 1, NOW(), NOW()),
(6079, 41, 606, '1', 'Structurer le RH', 'Développer les compétences<br>Mettre en place l\\'évaluation<br>Optimiser la performance', 2, 0, 1, NOW(), NOW()),
(6080, 41, 606, '2', 'Optimiser le RH', 'Aligner l\\'organisation sur la stratégie<br>Développer les compétences<br>Optimiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 607: Développement des compétences
(6081, 41, 607, '0', 'Développer les bases', 'Former les collaborateurs<br>Développer les compétences clés<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(6082, 41, 607, '1', 'Optimiser les compétences', 'Mettre en place des plans de formation<br>Développer le leadership<br>Optimiser l\\'engagement', 2, 0, 1, NOW(), NOW()),
(6083, 41, 607, '2', 'Excellence RH', 'Piloter par le capital humain<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Module 42: Bloc 5 - Marketing (Émergent)
-- Question 608: Stratégie marketing
(6084, 42, 608, '0', 'Démarrer le marketing', 'Identifier les clients cibles<br>Créer une offre simple<br>Communiquer localement', 1, 0, 1, NOW(), NOW()),
(6085, 42, 608, '1', 'Structurer le marketing', 'Développer la stratégie<br>Optimiser les canaux<br>Mesurer les résultats', 2, 0, 1, NOW(), NOW()),
(6086, 42, 608, '2', 'Optimiser le marketing', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 609: Communication marketing
(6087, 42, 609, '0', 'Communiquer simplement', 'Utiliser les réseaux sociaux<br>Créer du contenu simple<br>Engager la communauté', 1, 0, 1, NOW(), NOW()),
(6088, 42, 609, '1', 'Optimiser la communication', 'Développer la stratégie de contenu<br>Optimiser les canaux<br>Personnaliser les messages', 2, 0, 1, NOW(), NOW()),
(6089, 42, 609, '2', 'Excellence marketing', 'Piloter par les données<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Module 43: Bloc 6 - Communication (Émergent)
-- Question 610: Stratégie de communication
(6090, 43, 610, '0', 'Démarrer la communication', 'Définir le message clé<br>Utiliser les canaux simples<br>Créer une identité', 1, 0, 1, NOW(), NOW()),
(6091, 43, 610, '1', 'Structurer la communication', 'Développer la stratégie<br>Optimiser les canaux<br>Mesurer l\\'impact', 2, 0, 1, NOW(), NOW()),
(6092, 43, 610, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 611: Gestion de l\\'image
(6093, 43, 611, '0', 'Créer l\\'image', 'Définir l\\'identité visuelle<br>Communiquer les valeurs<br>Assurer la cohérence', 1, 0, 1, NOW(), NOW()),
(6094, 43, 611, '1', 'Optimiser l\\'image', 'Développer la stratégie d\\'image<br>Optimiser la perception<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6095, 43, 611, '2', 'Excellence en image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 3, 0, 1, NOW(), NOW()),

-- Module 44: Bloc 7 - Commercial (Émergent)
-- Question 612: Développement commercial
(6096, 44, 612, '0', 'Démarrer les ventes', 'Identifier les premiers clients<br>Développer l\\'offre<br>Assurer la satisfaction', 1, 0, 1, NOW(), NOW()),
(6097, 44, 612, '1', 'Structurer les ventes', 'Développer les processus<br>Optimiser les performances<br>Mettre en place les outils', 2, 0, 1, NOW(), NOW()),
(6098, 44, 612, '2', 'Excellence commerciale', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 3, 0, 1, NOW(), NOW()),

-- Question 613: Relation client
(6099, 44, 613, '0', 'Développer les clients', 'Identifier les prospects<br>Développer le portefeuille<br>Suivre les relations', 1, 0, 1, NOW(), NOW()),
(6100, 44, 613, '1', 'Optimiser les relations', 'Mettre en place un CRM<br>Développer la fidélisation<br>Analyser la satisfaction', 2, 0, 1, NOW(), NOW()),
(6101, 44, 613, '2', 'Excellence relationnelle', 'Piloter par les relations<br>Optimiser continuellement<br>Innover dans les relations', 3, 0, 1, NOW(), NOW()),

-- Module 45: Bloc 8 - Opérations (Émergent)
-- Question 614: Organisation opérationnelle
(6102, 45, 614, '0', 'Démarrer les opérations', 'Définir les processus clés<br>Organiser les flux de travail<br>Assurer la qualité', 1, 0, 1, NOW(), NOW()),
(6103, 45, 614, '1', 'Structurer les opérations', 'Développer les processus<br>Optimiser les flux<br>Mettre en place les indicateurs', 2, 0, 1, NOW(), NOW()),
(6104, 45, 614, '2', 'Excellence opérationnelle', 'Piloter par la performance<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 615: Qualité et amélioration
(6105, 45, 615, '0', 'Assurer la qualité', 'Définir les standards<br>Mettre en place les contrôles<br>Traiter les problèmes', 1, 0, 1, NOW(), NOW()),
(6106, 45, 615, '1', 'Optimiser la qualité', 'Analyser les retours clients<br>Améliorer les processus<br>Mettre en place l\\'amélioration continue', 2, 0, 1, NOW(), NOW()),
(6107, 45, 615, '2', 'Excellence qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Innover dans la qualité', 3, 0, 1, NOW(), NOW()),

-- Module 46: Bloc 9 - Digital (Émergent)
-- Question 616: Transformation digitale
(6108, 46, 616, '0', 'Démarrer le digital', 'Choisir les outils de base<br>Créer une présence en ligne<br>Former l\\'équipe', 1, 0, 1, NOW(), NOW()),
(6109, 46, 616, '1', 'Structurer le digital', 'Développer la stratégie digitale<br>Optimiser les outils<br>Mettre en place les processus', 2, 0, 1, NOW(), NOW()),
(6110, 46, 616, '2', 'Excellence digitale', 'Piloter par le digital<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 617: Outils et automatisation
(6111, 46, 617, '0', 'Utiliser les outils', 'Choisir les logiciels adaptés<br>Former les utilisateurs<br>Mettre en place les bases', 1, 0, 1, NOW(), NOW()),
(6112, 46, 617, '1', 'Optimiser les outils', 'Analyser l\\'utilisation<br>Développer l\\'automatisation<br>Intégrer les systèmes', 2, 0, 1, NOW(), NOW()),
(6113, 46, 617, '2', 'Excellence digitale', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 3, 0, 1, NOW(), NOW()),

-- Module 47: Bloc 10 - Administration (Émergent)
-- Question 618: Organisation administrative
(6114, 47, 618, '0', 'Démarrer l\\'admin', 'Organiser les documents<br>Mettre en place les procédures<br>Créer les archives', 1, 0, 1, NOW(), NOW()),
(6115, 47, 618, '1', 'Structurer l\\'admin', 'Développer les processus<br>Optimiser l\\'efficacité<br>Mettre en place les contrôles', 2, 0, 1, NOW(), NOW()),
(6116, 47, 618, '2', 'Excellence administrative', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 619: Conformité et sécurité
(6117, 47, 619, '0', 'Assurer la conformité', 'Identifier les obligations<br>Mettre en place les procédures<br>Suivre les échéances', 1, 0, 1, NOW(), NOW()),
(6118, 47, 619, '1', 'Optimiser la conformité', 'Analyser les risques<br>Développer les contrôles<br>Mettre en place la veille', 2, 0, 1, NOW(), NOW()),
(6119, 47, 619, '2', 'Excellence administrative', 'Piloter par la conformité<br>Optimiser la sécurité<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- MODULES DE TYPE 2 - BLOCS INTERMÉDIAIRES (modules 58-100) - COMPLET
-- Module 58: Bloc 1 - Stratégie (Intermédiaire)
-- Question 620: Vision stratégique développée
(6120, 58, 620, '0', 'Développer la vision', 'Documenter la vision stratégique<br>Définir les indicateurs avancés<br>Aligner l\\'organisation', 1, 0, 1, NOW(), NOW()),
(6121, 58, 620, '1', 'Optimiser la vision', 'Utiliser la vision pour décider<br>Suivre les indicateurs mensuellement<br>Ajuster trimestriellement', 2, 0, 1, NOW(), NOW()),
(6122, 58, 620, '2', 'Excellence stratégique', 'Piloter par la vision<br>Optimiser continuellement<br>Innover stratégiquement', 3, 0, 1, NOW(), NOW()),

-- Question 621: Modèle économique avancé
(6123, 58, 621, '0', 'Développer le modèle', 'Analyser la rentabilité fine<br>Identifier les leviers stratégiques<br>Optimiser la performance', 1, 0, 1, NOW(), NOW()),
(6124, 58, 621, '1', 'Optimiser le modèle', 'Développer de nouvelles sources<br>Innover dans l\\'offre<br>Préparer l\\'échelle', 2, 0, 1, NOW(), NOW()),
(6125, 58, 621, '2', 'Excellence économique', 'Piloter par le modèle<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Module 59: Bloc 2 - Finance & Comptabilité (Intermédiaire)
-- Question 622: Pilotage financier avancé
(6126, 59, 622, '0', 'Développer la finance', 'Utiliser les ratios avancés<br>Analyser les tendances<br>Prendre décisions stratégiques', 1, 0, 1, NOW(), NOW()),
(6127, 59, 622, '1', 'Optimiser la finance', 'Piloter par les données<br>Optimiser la rentabilité<br>Financer la croissance', 2, 0, 1, NOW(), NOW()),
(6128, 59, 622, '2', 'Excellence financière', 'Utiliser des outils avancés<br>Piloter proactivement<br>Maximiser la performance', 3, 0, 1, NOW(), NOW()),

-- Question 623: Gestion de trésorerie avancée
(6129, 59, 623, '0', 'Développer le cash', 'Utiliser des outils de prévision<br>Gérer proactivement la trésorerie<br>Optimiser les flux', 1, 0, 1, NOW(), NOW()),
(6130, 59, 623, '1', 'Optimiser le cash', 'Développer les stratégies avancées<br>Optimiser la structure financière<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(6131, 59, 623, '2', 'Excellence en trésorerie', 'Piloter par la trésorerie<br>Optimiser continuellement<br>Innover financièrement', 3, 0, 1, NOW(), NOW()),

-- Module 60: Bloc 3 - Juridique (Intermédiaire)
-- Question 624: Gouvernance juridique
(6132, 60, 624, '0', 'Développer le juridique', 'Intégrer le juridique au pilotage<br>Anticiper les évolutions<br>Optimiser la protection', 1, 0, 1, NOW(), NOW()),
(6133, 60, 624, '1', 'Optimiser le juridique', 'Développer la gouvernance<br>Optimiser la structure<br>Prévenir les risques', 2, 0, 1, NOW(), NOW()),
(6134, 60, 624, '2', 'Excellence juridique', 'Piloter par le juridique<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 625: Stratégie contractuelle
(6135, 60, 625, '0', 'Développer les contrats', 'Utiliser les contrats stratégiquement<br>Piloter les partenariats<br>Anticiper les risques', 1, 0, 1, NOW(), NOW()),
(6136, 60, 625, '1', 'Optimiser les contrats', 'Développer la stratégie contractuelle<br>Optimiser les partenariats<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6137, 60, 625, '2', 'Excellence contractuelle', 'Piloter par les contrats<br>Optimiser continuellement<br>Innover contractuellement', 3, 0, 1, NOW(), NOW()),

-- Module 61: Bloc 4 - Ressources humaines (Intermédiaire)
-- Question 626: Pilotage RH avancé
(6138, 61, 626, '0', 'Développer le RH', 'Aligner l\\'organisation sur la stratégie<br>Développer les compétences<br>Optimiser la performance', 1, 0, 1, NOW(), NOW()),
(6139, 61, 626, '1', 'Optimiser le RH', 'Développer le leadership<br>Optimiser l\\'engagement<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(6140, 61, 626, '2', 'Excellence RH', 'Piloter par le capital humain<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 627: Capital humain stratégique
(6141, 61, 627, '0', 'Développer les talents', 'Aligner les compétences sur la stratégie<br>Développer le leadership<br>Optimiser l\\'engagement', 1, 0, 1, NOW(), NOW()),
(6142, 61, 627, '1', 'Optimiser les talents', 'Développer les plans de carrière avancés<br>Optimiser la performance<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6143, 61, 627, '2', 'Capital humain stratégique', 'Aligner les compétences sur la stratégie<br>Développer le leadership<br>Optimiser l\\'engagement', 3, 0, 1, NOW(), NOW()),

-- Module 62: Bloc 5 - Marketing (Intermédiaire)
-- Question 628: Excellence marketing
(6144, 62, 628, '0', 'Développer le marketing', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 1, 0, 1, NOW(), NOW()),
(6145, 62, 628, '1', 'Optimiser le marketing', 'Développer les stratégies avancées<br>Optimiser les canaux<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(6146, 62, 628, '2', 'Excellence marketing', 'Piloter par le marketing<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 629: Stratégie communication avancée
(6147, 62, 629, '0', 'Développer la communication', 'Piloter par les données<br>Optimiser les canaux<br>Personnaliser les messages', 1, 0, 1, NOW(), NOW()),
(6148, 62, 629, '1', 'Optimiser la communication', 'Développer les stratégies avancées<br>Optimiser les messages<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(6149, 62, 629, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Innover dans la communication', 3, 0, 1, NOW(), NOW()),

-- Module 63: Bloc 6 - Communication (Intermédiaire)
-- Question 630: Excellence en communication
(6150, 63, 630, '0', 'Développer la communication', 'Piloter par la communication<br>Optimiser continuellement<br>Aligner sur la stratégie', 1, 0, 1, NOW(), NOW()),
(6151, 63, 630, '1', 'Optimiser la communication', 'Développer les stratégies avancées<br>Optimiser les canaux<br>Maximiser l\\'impact', 2, 0, 1, NOW(), NOW()),
(6152, 63, 630, '2', 'Excellence communication', 'Piloter par la communication<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 631: Stratégie d\\'image avancée
(6153, 63, 631, '0', 'Développer l\\'image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 1, 0, 1, NOW(), NOW()),
(6154, 63, 631, '1', 'Optimiser l\\'image', 'Développer les stratégies avancées<br>Optimiser la perception<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6155, 63, 631, '2', 'Excellence en image', 'Piloter l\\'image stratégiquement<br>Optimiser la perception<br>Créer la valeur par l\\'image', 3, 0, 1, NOW(), NOW()),

-- Module 64: Bloc 7 - Commercial (Intermédiaire)
-- Question 632: Excellence commerciale
(6156, 64, 632, '0', 'Développer la vente', 'Piloter par les données<br>Optimiser continuellement<br>Innover dans l\\'approche', 1, 0, 1, NOW(), NOW()),
(6157, 64, 632, '1', 'Optimiser la vente', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(6158, 64, 632, '2', 'Excellence commerciale', 'Piloter par la vente<br>Optimiser continuellement<br>Innover dans la vente', 3, 0, 1, NOW(), NOW()),

-- Question 633: Stratégie relation client avancée
(6159, 64, 633, '0', 'Développer les relations', 'Piloter par la satisfaction<br>Optimiser l\\'expérience<br>Créer la valeur par la relation', 1, 0, 1, NOW(), NOW()),
(6160, 64, 633, '1', 'Optimiser les relations', 'Développer les stratégies avancées<br>Optimiser l\\'expérience<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6161, 64, 633, '2', 'Excellence relationnelle', 'Piloter par les relations<br>Optimiser continuellement<br>Innover dans les relations', 3, 0, 1, NOW(), NOW()),

-- Module 65: Bloc 8 - Opérations (Intermédiaire)
-- Question 634: Excellence opérationnelle
(6162, 65, 634, '0', 'Développer les opérations', 'Piloter par la performance<br>Optimiser continuellement<br>Innover dans les processus', 1, 0, 1, NOW(), NOW()),
(6163, 65, 634, '1', 'Optimiser les opérations', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(6164, 65, 634, '2', 'Excellence opérationnelle', 'Piloter par les opérations<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 635: Qualité et amélioration avancées
(6165, 65, 635, '0', 'Développer la qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Créer la valeur par la qualité', 1, 0, 1, NOW(), NOW()),
(6166, 65, 635, '1', 'Optimiser la qualité', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6167, 65, 635, '2', 'Excellence qualité', 'Piloter par la qualité<br>Optimiser continuellement<br>Innover dans la qualité', 3, 0, 1, NOW(), NOW()),

-- Module 66: Bloc 9 - Digital (Intermédiaire)
-- Question 636: Excellence digitale
(6168, 66, 636, '0', 'Développer le digital', 'Piloter par le digital<br>Optimiser continuellement<br>Innover dans l\\'approche', 1, 0, 1, NOW(), NOW()),
(6169, 66, 636, '1', 'Optimiser le digital', 'Développer les stratégies avancées<br>Optimiser l\\'écosystème<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(6170, 66, 636, '2', 'Excellence digitale', 'Piloter par le digital<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 637: Stratégie digitale avancée
(6171, 66, 637, '0', 'Développer les outils', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 1, 0, 1, NOW(), NOW()),
(6172, 66, 637, '1', 'Optimiser les outils', 'Développer les stratégies avancées<br>Optimiser l\\'intégration<br>Maximiser la performance', 2, 0, 1, NOW(), NOW()),
(6173, 66, 637, '2', 'Excellence digitale', 'Piloter par les outils<br>Optimiser l\\'écosystème<br>Créer la valeur par le digital', 3, 0, 1, NOW(), NOW()),

-- Module 67: Bloc 10 - Administration (Intermédiaire)
-- Question 638: Excellence administrative
(6174, 67, 638, '0', 'Développer l\\'admin', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur par l\\'admin', 1, 0, 1, NOW(), NOW()),
(6175, 67, 638, '1', 'Optimiser l\\'admin', 'Développer les stratégies avancées<br>Optimiser les processus<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6176, 67, 638, '2', 'Excellence administrative', 'Piloter par l\\'administration<br>Optimiser continuellement<br>Créer la valeur', 3, 0, 1, NOW(), NOW()),

-- Question 639: Stratégie administrative avancée
(6177, 67, 639, '0', 'Développer la conformité', 'Piloter par la conformité<br>Optimiser la sécurité<br>Créer la valeur par l\\'admin', 1, 0, 1, NOW(), NOW()),
(6178, 67, 639, '1', 'Optimiser la conformité', 'Développer les stratégies avancées<br>Optimiser la sécurité<br>Maximiser la valeur', 2, 0, 1, NOW(), NOW()),
(6179, 67, 639, '2', 'Excellence administrative', 'Piloter par la conformité<br>Optimiser continuellement<br>Innover dans l\\'administration', 3, 0, 1, NOW(), NOW());
