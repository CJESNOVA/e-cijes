-- Fonction 1 : STRATÉGIE - Diagnostic de Maturité Stratégique du Dirigeant

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(125,'FONCTION 1 : STRATÉGIE',1,'Diagnostic de Maturité Stratégique du Dirigeant',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(980,'Clarté et évolution du Modèle Économique (Business Model)',1,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(981,'Définition de la Mission et de la Vision',2,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(982,'Priorisation des Objectifs Stratégiques',3,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(983,'Traduction de la Vision en Feuille de Route',4,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(984,'Allocation des Ressources selon les Priorités',5,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(985,'Définition et Suivi des KPI Stratégiques',6,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(986,'Organisation des Revues Périodiques de Pilotage',7,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(987,'Alignement Stratégique des Équipes',8,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(988,'Analyse de l\'Environnement et Anticipation',9,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(989,'Posture de Dirigeant : Passer du "Faire" au "Piloter"',10,125,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 980
(4520,'Je n’ai pas de modèle clair ; nous vendons et encaissons les ventes au jour le jour sans vision de rentabilité globale.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',980,0,1,NOW(),NOW()),
(4521,'Le modèle est clair dans ma tête, mais il n\'est pas documenté ni partagé avec l\'équipe.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',980,0,1,NOW(),NOW()),
(4522,'Mon modèle est structuré (formalisé), mais il reste statique et n\'est pas remis en question.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',980,0,1,NOW(),NOW()),
(4523,'Mon modèle est visuel, évolutif, connu de l’équipe et réévalué régulièrement selon les opportunités et les menaces du marché.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',980,0,1,NOW(),NOW()),
-- Question 981
(4524,'Je me concentre uniquement sur la survie immédiate et les tâches opérationnelles.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',981,0,1,NOW(),NOW()),
(4525,'J\'ai des objectifs à court terme, mais aucune vision inspirante à 5 ou 10 ans.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',981,0,1,NOW(),NOW()),
(4526,'La vision est définie par écrit, mais elle n\'est pas utilisée comme boussole pour les décisions quotidiennes.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',981,0,1,NOW(),NOW()),
(4527,'La mission et la vision sont claires, écrites et servent de socle à chaque arbitrage stratégique.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',981,0,1,NOW(),NOW()),
-- Question 982
(4528,'Je traite les dossiers selon l\'ordre d\'arrivée ou l\'urgence perçue.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',982,0,1,NOW(),NOW()),
(4529,'Je confonds souvent l\'urgence (pression externe) avec l\'importance (valeurs et buts).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',982,0,1,NOW(),NOW()),
(4530,'Je distingue l\'important de l\'urgent, mais j\'ai du mal à dire "non" aux sollicitations sans valeur ajoutée.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',982,0,1,NOW(),NOW()),
(4531,'Je me focalise sur les activités à haut rendement (80/20) qui servent mes objectifs essentiels.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',982,0,1,NOW(),NOW()),
-- Question 983
(4532,'Il n\'y a pas de lien formalisé entre mes idées et le travail quotidien des équipes.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',983,0,1,NOW(),NOW()),
(4533,'Je donne des ordres ponctuels sans que l\'équipe comprenne le plan d\'ensemble.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',983,0,1,NOW(),NOW()),
(4534,'J\'ai un plan d\'action annuel, mais il est trop rigide pour s\'adapter aux imprévus.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',983,0,1,NOW(),NOW()),
(4535,'La vision est traduite en objectifs SMART et en étapes précises avec des échéanciers partagés.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',983,0,1,NOW(),NOW()),
-- Question 984
(4536,'Les ressources sont allouées en fonction des crises ou des demandes les plus fortes.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',984,0,1,NOW(),NOW()),
(4537,'Je garde la main sur toutes les ressources par peur de perdre le contrôle tactique.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',984,0,1,NOW(),NOW()),
(4538,'J\'alloue des moyens aux projets importants, mais sans critères de rentabilité ou d\'impact précis.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',984,0,1,NOW(),NOW()),
(4539,'J\'alloue mes ressources stratégiquement sur les leviers de profit les plus élevés.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',984,0,1,NOW(),NOW()),
-- Question 985
(4540,'Je ne suis aucun indicateur de façon formelle, je pilote "à l\'instinct".',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',985,0,1,NOW(),NOW()),
(4541,'Je regarde principalement le chiffre d\'affaires et le solde bancaire en fin de mois.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',985,0,1,NOW(),NOW()),
(4542,'Je suis quelques indicateurs de production et financiers mensuellement.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',985,0,1,NOW(),NOW()),
(4543,'Je pilote avec un tableau de bord équilibré (KPIs) incluant des mesures de performance et de satisfaction client.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',985,0,1,NOW(),NOW()),
-- Question 986
(4544,'Nous ne faisons pas de réunions de suivi stratégique, seulement de l\'opérationnel urgent.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',986,0,1,NOW(),NOW()),
(4545,'Le point est fait seulement lorsqu\'un problème grave survient.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',986,0,1,NOW(),NOW()),
(4546,'J\'organise des réunions mensuelles, mais elles dérivent souvent vers la résolution de problèmes techniques.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',986,0,1,NOW(),NOW()),
(4547,'J\'organise des revues périodiques structurées pour valider les progrès et pivoter si nécessaire.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',986,0,1,NOW(),NOW()),
-- Question 987
(4548,'Mon équipe exécute des tâches sans connaître les objectifs finaux de l\'entreprise.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',987,0,1,NOW(),NOW()),
(4549,'J\'explique la stratégie une fois par an, lors de l\'entretien annuel.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',987,0,1,NOW(),NOW()),
(4550,'Les cadres connaissent les objectifs, mais les employés n\'y voient pas leur contribution directe.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',987,0,1,NOW(),NOW()),
(4551,'Chaque membre peut expliquer comment son travail quotidien sert la vision globale de l\'entreprise.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',987,0,1,NOW(),NOW()),
-- Question 988
(4552,'Je subis les changements du marché sans les avoir anticipés.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',988,0,1,NOW(),NOW()),
(4553,'Je réagis aux évolutions de la concurrence après qu\'elles aient impacté mon CA.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',988,0,1,NOW(),NOW()),
(4554,'Je réalise des diagnostics (type SWOT) occasionnels, mais sans impact sur ma feuille de route.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',988,0,1,NOW(),NOW()),
(4555,'Je pratique une veille constante et j\'anticipe les tendances pour adapter mon orientation stratégique.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',988,0,1,NOW(),NOW()),
-- Question 989
(4556,'Je passe 95% de mon temps dans l\'opérationnel et l\'exécution pure.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',989,0,1,NOW(),NOW()),
(4557,'Je supervise chaque tâche technique pour m\'assurer que c\'est "bien fait".',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',989,0,1,NOW(),NOW()),
(4558,'Je commence à déléguer l\'opérationnel pour me libérer du temps de réflexion.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',989,0,1,NOW(),NOW()),
(4559,'Ma valeur est en dehors du système : je donne la direction, je supervise et je bâtis l\'avenir.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',989,0,1,NOW(),NOW());





-- Fonction 2 : FINANCE - Diagnostic de Maturité Financière

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(126,'FONCTION 2 : FINANCE',2,'DIAGNOSTIC : MATURITÉ FINANCIÈRE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(990,'Maîtrise des documents de base (Bilan et Compte de Résultat)',1,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(991,'Rentabilité et Seuil de rentabilité (Point Mort)',2,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(992,'Gestion de la Trésorerie (Le "Pouls" de l\'entreprise)',3,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(993,'Maîtrise du Besoin en Fonds de Roulement (BFR)',4,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(994,'Capacité d\'Autofinancement (CAF)',5,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(995,'Relation avec les banques et levier financier',6,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(996,'Arbitrage Réinvestissement vs Distribution',7,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(997,'Utilisation de Tableaux de Bord et Reporting',8,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(998,'Vision et Plan de Financement à long terme',9,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(999,'Posture : Dirigeant-Pilote ou Opérateur-Exécutant ?',10,126,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 990
(4560,'Je les vois une fois par an lors du bilan comptable et j\'ai du mal à les décrypter.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',990,0,1,NOW(),NOW()),
(4561,'Je regarde si le résultat est positif, mais je ne comprends pas l\'équilibre entre ce que je possède (Actif) et ce que je dois (Passif).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',990,0,1,NOW(),NOW()),
(4562,'Je vérifie régulièrement ma rentabilité et l\'évolution de mes fonds propres.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',990,0,1,NOW(),NOW()),
(4563,'Ce sont mes outils de pilotage : je valide l\'intégrité de ma structure et je sais expliquer comment chaque euro est utilisé.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',990,0,1,NOW(),NOW()),
-- Question 991
(4564,'Je l\'ignore ; je travaille au maximum en espérant qu\'il reste quelque chose à la fin.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',991,0,1,NOW(),NOW()),
(4565,'Je connais mon chiffre d\'affaires, mais je ne sais pas précisément quelles charges (fixes ou variables) impactent mon bénéfice.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',991,0,1,NOW(),NOW()),
(4566,'Je connais mon seuil de rentabilité en valeur (Euros) et je sais quand je l\'atteins dans l\'année.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',991,0,1,NOW(),NOW()),
(4567,'Je pilote ma marge brute par produit/service et j\'agis activement pour abaisser mon point mort (optimisation des coûts fixes).',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',991,0,1,NOW(),NOW()),
-- Question 992
(4568,'Je regarde mon solde bancaire au jour le jour pour savoir si je peux payer les salaires.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',992,0,1,NOW(),NOW()),
(4569,'Je réagis aux impasses de trésorerie quand elles arrivent, souvent en urgence.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',992,0,1,NOW(),NOW()),
(4570,'J\'utilise un plan de trésorerie mensuel pour anticiper les "trous" sur les 6 prochains mois.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',992,0,1,NOW(),NOW()),
(4571,'La trésorerie est mon "cri de guerre" : j\'anticipe les flux TTC, je prévois les décalages et j\'ai toujours un coup d\'avance.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',992,0,1,NOW(),NOW()),
-- Question 993
(4572,'Je ne sais pas ce que signifie le BFR ou comment le calculer.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',993,0,1,NOW(),NOW()),
(4573,'J\'ai conscience que mes clients payent tard, mais je n\'ai pas de stratégie pour réduire ce délai.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',993,0,1,NOW(),NOW()),
(4574,'Je mesure mon BFR (Stocks + Créances - Dettes fournisseurs) et j\'essaie de le stabiliser.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',993,0,1,NOW(),NOW()),
(4575,'J\'optimise mon BFR en exigeant des acomptes, en réduisant mes stocks et en négociant mes délais fournisseurs.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',993,0,1,NOW(),NOW()),
-- Question 994
(4576,'Je confonds mon bénéfice comptable avec l\'argent disponible en banque.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',994,0,1,NOW(),NOW()),
(4577,'Je ne sais pas comment calculer ma CAF ni à quoi elle sert précisément.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',994,0,1,NOW(),NOW()),
(4578,'Je connais ma CAF et je l\'utilise pour rembourser mes emprunts sans mettre l\'entreprise en danger.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',994,0,1,NOW(),NOW()),
(4579,'Je maximise ma CAF pour financer mes nouveaux investissements et garantir mon autonomie financière.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',994,0,1,NOW(),NOW()),
-- Question 995
(4580,'Je ne demande rien aux banques par peur ou par manque de garanties.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',995,0,1,NOW(),NOW()),
(4581,'Je n\'emprunte que lorsque je n\'ai plus le choix, souvent en position de faiblesse.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',995,0,1,NOW(),NOW()),
(4582,'J\'utilise le crédit pour mes investissements durables, en respectant la règle des 70% de financement maximum.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',995,0,1,NOW(),NOW()),
(4583,'Je pratique l\'endettement stratégique : j\'emprunte quand le rendement attendu est bien supérieur au coût du crédit.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',995,0,1,NOW(),NOW()),
-- Question 996
(4584,'Je l\'utilise principalement pour mes dépenses personnelles ou des achats "plaisir".',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',996,0,1,NOW(),NOW()),
(4585,'Je laisse l\'argent dormir sur le compte sans savoir s\'il vaut mieux investir ou épargner.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',996,0,1,NOW(),NOW()),
(4586,'Je réinvestis une partie de mes gains pour maintenir mon outil de production en état.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',996,0,1,NOW(),NOW()),
(4587,'Je réinvestis massivement (jusqu\'à 70%) dans de nouveaux actifs pour créer un "effet boule de neige".',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',996,0,1,NOW(),NOW()),
-- Question 997
(4588,'Sur mon intuition et mon ressenti du terrain uniquement.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',997,0,1,NOW(),NOW()),
(4589,'Sur quelques chiffres isolés (Chiffre d\'affaires de la semaine) sans vision globale.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',997,0,1,NOW(),NOW()),
(4590,'J\'ai un tableau de bord simple avec une dizaine d\'indicateurs clés que je mets à jour chaque mois.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',997,0,1,NOW(),NOW()),
(4591,'Je ne décide rien sans chiffres fiables : je compare le "Réel" au "Budget" pour corriger immédiatement mes trajectoires.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',997,0,1,NOW(),NOW()),
-- Question 998
(4592,'Non, je ne planifie rien au-delà du mois prochain.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',998,0,1,NOW(),NOW()),
(4593,'J\'ai un plan de financement initial, mais il n\'est jamais mis à jour après le lancement.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',998,0,1,NOW(),NOW()),
(4594,'J\'ai une vision de mes besoins et ressources sur 3 ans (Plan de financement à 3 ans).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',998,0,1,NOW(),NOW()),
(4595,'Ma trajectoire financière est claire : je prévois mes investissements futurs et je sais comment ils seront financés.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',998,0,1,NOW(),NOW()),
-- Question 999
(4596,'Je fais ma "paperasse" administrative et je cours après les factures moi-même.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',999,0,1,NOW(),NOW()),
(4597,'Je supervise la saisie comptable mais je n\'ai pas le temps d\'analyser les résultats.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',999,0,1,NOW(),NOW()),
(4598,'Je délègue l\'exécution (comptable, expert) et je me concentre sur l\'analyse des marges et des coûts.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',999,0,1,NOW(),NOW()),
(4599,'Je suis un pilote stratégique : ma valeur est dans l\'anticipation, la négociation et la construction d\'un système financier autonome.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',999,0,1,NOW(),NOW());






-- Fonction 3 : JURIDIQUE - Diagnostic de Maturité Juridique

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(127,'FONCTION 3 : JURIDIQUE',3,'DIAGNOSTIC : MATURITÉ JURIDIQUE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1000,'Gestion des engagements contractuels (Clients et Fournisseurs)',1,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1001,'Maîtrise de la conformité fiscale et sociale',2,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1002,'Intégrité Financière',3,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1003,'Risques de Dépendance Stratégique',4,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1004,'Sécurisation des relations de travail (RH)',5,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1005,'Protection de la propriété intellectuelle (PI)',6,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1006,'Sécurisation du bail et des locaux',7,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1007,'Risques Psychosociaux (RPS) et Harcèlement',8,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1008,'Prévention des conflits d\'intérêts et de l\'éthique',9,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1009,'Mise en place de règles internes (Savoir-faire-faire)',10,127,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1000
(4600,'Je m\'appuie souvent sur des accords oraux ou des "poignées de main" sans documents écrits.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1000,0,1,NOW(),NOW()),
(4601,'J\'utilise des devis simples, mais je n\'ai pas de Conditions Générales de Vente (CGV) ou d\'achat formalisées.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1000,0,1,NOW(),NOW()),
(4602,'J\'établis des contrats ou des bons de commande signés pour chaque affaire importante.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1000,0,1,NOW(),NOW()),
(4603,'Mes contrats incluent des clauses de paiement et de résolution de litiges, et sont régulièrement revus par un expert.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1000,0,1,NOW(),NOW()),
-- Question 1001
(4604,'Je découvre mes obligations lors de réceptions d\'amendes (redressement) ou de mises en demeure.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1001,0,1,NOW(),NOW()),
(4605,'Je délègue tout à mon comptable sans comprendre les échéances ni les risques encourus.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1001,0,1,NOW(),NOW()),
(4606,'Je respecte l\'agenda fiscal et social, et je m\'assure que les déclarations sont déposées en temps et en heure.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1001,0,1,NOW(),NOW()),
(4607,'Je pratique l\'audit de régularité : je vérifie périodiquement l\'absence d\'exposition aux sanctions par un contrôle interne strict.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1001,0,1,NOW(),NOW()),
-- Question 1002
(4608,'Mélange risqué : J\'utilise souvent la caisse de l\'entreprise pour mes dépenses personnelles courantes.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1002,0,1,NOW(),NOW()),
(4609,'Confusion des flux : Je n\'ai pas de salaire fixe et je pioche dans les comptes de la société selon mes besoins.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1002,0,1,NOW(),NOW()),
(4610,'Cadre sans suivi : J\'ai établi des règles de séparation écrites, mais j’ai du mal à respecter strictement ces sorties d\'argent.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1002,0,1,NOW(),NOW()),
(4611,'Étanchéité totale : Mes finances sont strictement séparées ; je reçois un salaire fixe et chaque dépense est justifiée.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1002,0,1,NOW(),NOW()),
-- Question 1003
(4612,'Je dépends à 80 % d\'un seul client ou d\'un fournisseur unique sans contrat de repli.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1003,0,1,NOW(),NOW()),
(4613,'Si mon fournisseur ou mon client principal me lâche, mon activité s\'arrête immédiatement.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1003,0,1,NOW(),NOW()),
(4614,'J\'ai identifié mes partenaires critiques, mais je n\'ai pas encore cherché d\'alternatives concrètes.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1003,0,1,NOW(),NOW()),
(4615,'Je diversifie mes sources et je dispose de solutions de repli (Plan B) déjà identifiées et testées.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1003,0,1,NOW(),NOW()),
-- Question 1004
(4616,'J\'embauche sans contrat écrit ou je tarde à formaliser les déclarations d\'embauche.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1004,0,1,NOW(),NOW()),
(4617,'J\'utilise des contrats types sans vérifier leur adéquation avec la Convention Collective ou le Code du Travail.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1004,0,1,NOW(),NOW()),
(4618,'Chaque salarié dispose d\'un contrat clair spécifiant ses missions, sa rémunération et ses horaires.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1004,0,1,NOW(),NOW()),
(4619,'Je sécurise mes actifs (clauses de non-concurrence, confidentialité) et je dispose d\'un conseil juridique permanent.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1004,0,1,NOW(),NOW()),
-- Question 1005
(4620,'Je n\'ai déposé ni ma marque, ni mes créations, pensant que personne ne me copiera.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1005,0,1,NOW(),NOW()),
(4621,'Mon nom commercial est utilisé, mais je n\'ai pas vérifié l\'antériorité auprès des autorités (OAPI/INPIT).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1005,0,1,NOW(),NOW()),
(4622,'Mes marques et logos principaux sont déposés et j\'utilise des accords de confidentialité (NDA).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1005,0,1,NOW(),NOW()),
(4623,'La protection est une arme : brevets et veille constante assurent mon avantage concurrentiel.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1005,0,1,NOW(),NOW()),
-- Question 1006
(4624,'Je n\'ai pas de bail écrit ou je ne connais pas la date d\'échéance de mon contrat de location.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1006,0,1,NOW(),NOW()),
(4625,'J\'ai un bail, mais je ne connais pas mes droits de renouvellement ou de cession d\'activité.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1006,0,1,NOW(),NOW()),
(4626,'Je maîtrise les conditions de mon bail commercial (durée, révision de loyer, obligations d\'entretien).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1006,0,1,NOW(),NOW()),
(4627,'Mes locaux sont sécurisés stratégiquement via des clauses de renouvellement "bétonnées" ou une structure dédiée (SCI).',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1006,0,1,NOW(),NOW()),
-- Question 1007
(4628,'Je ne m\'occupe pas de "l\'ambiance", je me concentre uniquement sur la production et les résultats.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1007,0,1,NOW(),NOW()),
(4629,'J\'ignore les rumeurs et les tensions entre collègues, pensant qu\'ils vont se débrouiller seuls.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1007,0,1,NOW(),NOW()),
(4630,'J\'ai conscience des risques, mais je n\'ai pas formalisé de plan de prévention contre le stress ou le harcèlement.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1007,0,1,NOW(),NOW()),
(4631,'J\'ai instauré une politique de "tolérance zéro" et je maintiens une veille constante sur la santé mentale de l\'équipe.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1007,0,1,NOW(),NOW()),
-- Question 1008
(4632,'Les décisions importantes sont prises seul, sans formalisme, ce qui crée des doutes chez mes partenaires.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1008,0,1,NOW(),NOW()),
(4633,'Je traite parfois avec des proches ou des amis sans mettre en place de règles de mise en concurrence.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1008,0,1,NOW(),NOW()),
(4634,'Je formalise les décisions sensibles par des Procès-Verbaux (PV) et je rends compte périodiquement à des mentors ou associés.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1008,0,1,NOW(),NOW()),
(4635,'L\'éthique est institutionnalisée : j\'ai mis en place des règles claires contre la corruption et l\'abus de biens sociaux.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1008,0,1,NOW(),NOW()),
-- Question 1009
(4636,'Toutes les règles sont dans ma tête ; rien n\'est écrit, ce qui crée du chaos en mon absence.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1009,0,1,NOW(),NOW()),
(4637,'Il existe quelques notes éparses, mais elles ne sont pas accessibles à tous les collaborateurs.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1009,0,1,NOW(),NOW()),
(4638,'J\'ai instauré des procédures simples pour les tâches critiques (facturation, accueil, sécurité).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1009,0,1,NOW(),NOW()),
(4639,'L\'entreprise dispose d\'un manuel de procédures clair et traçable, garantissant une autonomie en toute conformité.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1009,0,1,NOW(),NOW());




-- Fonction 4 : RESSOURCES HUMAINES - Diagnostic RH

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(128,'FONCTION 4 : RESSOURCES HUMAINES',4,'DIAGNOSTIC : RESSOURCES HUMAINES',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1100,'Définition des besoins et GPEC (Gestion Prévisionnelle)',1,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1101,'Structure du processus de recrutement',2,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1102,'Intégration des nouveaux collaborateurs (Onboarding)',3,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1103,'Clarté des rôles et responsabilités',4,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1104,'Fixation d’objectifs mesurables',5,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1105,'Système d’évaluation et feedback',6,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1106,'Délégation et contrôle',7,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1107,'Développement des compétences (Formation)',8,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1108,'Gestion des performances insuffisantes',9,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1109,'Savoir-faire-faire : Organisation responsable et performante',10,128,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1100
(4640,'J\'embauche uniquement dans l\'urgence quand le travail déborde et que je ne m\'en sors plus.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1100,0,1,NOW(),NOW()),
(4641,'Je définis les tâches à accomplir de manière floue juste au moment de rédiger l\'annonce.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1100,0,1,NOW(),NOW()),
(4642,'Je dispose de fiches de poste écrites qui listent les missions et les compétences pour chaque fonction.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1100,0,1,NOW(),NOW()),
(4643,'Ma stratégie RH est alignée sur mon business plan : j\'identifie les métiers de demain et je planifie les recrutements.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1100,0,1,NOW(),NOW()),
-- Question 1101
(4644,'Je recrute principalement à l\'intuition ou par recommandation, sans test ni critères précis.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1101,0,1,NOW(),NOW()),
(4645,'Je mène des entretiens classiques, sans grille de questions préparée ni comparaison objective.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1101,0,1,NOW(),NOW()),
(4646,'J\'utilise des entretiens structurés avec des questions situationnelles et des tests d\'aptitude technique.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1101,0,1,NOW(),NOW()),
(4647,'Mon processus est complet (marque employeur, mises en situation) et valide l\'adéquation aux valeurs.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1101,0,1,NOW(),NOW()),
-- Question 1102
(4648,'Le salarié est mis au travail immédiatement ; il doit "apprendre sur le tas".',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1102,0,1,NOW(),NOW()),
(4649,'Je remets un livret d\'accueil et je présente brièvement le nouvel arrivant à l\'équipe.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1102,0,1,NOW(),NOW()),
(4650,'Un parcours d\'intégration est défini (parrainage, formation) pour rendre le salarié opérationnel rapidement.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1102,0,1,NOW(),NOW()),
(4651,'Je réalise des points d\'étape formels durant la période d\'essai pour transmettre la culture d\'entreprise.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1102,0,1,NOW(),NOW()),
-- Question 1103
(4652,'Tout le monde est polyvalent par nécessité ; les rôles sont flous et les consignes orales.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1103,0,1,NOW(),NOW()),
(4653,'J\'ai un organigramme, mais il est rarement mis à jour et ne reflète pas les responsabilités réelles.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1103,0,1,NOW(),NOW()),
(4654,'Chaque collaborateur dispose d\'une fiche de fonction décrivant sa mission et ses rapports hiérarchiques.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1103,0,1,NOW(),NOW()),
(4655,'La structure est organisée par fonctions clés et non par personnalités, garantissant l\'ordre en mon absence.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1103,0,1,NOW(),NOW()),
-- Question 1104
(4656,'Les priorités changent chaque jour selon les urgences ou mon humeur du moment.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1104,0,1,NOW(),NOW()),
(4657,'Je donne des consignes globales ("fais de ton mieux") sans critères de mesure clairs.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1104,0,1,NOW(),NOW()),
(4658,'Je fixe des objectifs SMART lors de l\'entretien annuel de performance.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1104,0,1,NOW(),NOW()),
(4659,'Les objectifs individuels sont déclinés de la vision globale et suivis via un tableau de bord mensuel.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1104,0,1,NOW(),NOW()),
-- Question 1105
(4660,'Je n\'ai pas de système formel ; je ne fais de remarques que lorsque quelque chose ne va pas.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1105,0,1,NOW(),NOW()),
(4661,'Je réalise un entretien annuel obligatoire, mais il est vécu comme une corvée administrative sans suite.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1105,0,1,NOW(),NOW()),
(4662,'L\'entretien annuel est un vrai moment d\'échange sur les succès, les compétences et les besoins.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1105,0,1,NOW(),NOW()),
(4663,'Je pratique le feedback continu et des entretiens de mi-année pour agir comme un coach en temps réel.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1105,0,1,NOW(),NOW()),
-- Question 1106
(4664,'Je fais presque tout moi-même par peur que ce soit mal fait (micro-management).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1106,0,1,NOW(),NOW()),
(4665,'Je confie des tâches mais je les reprends dès qu\'il y a un problème (délégation inverse).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1106,0,1,NOW(),NOW()),
(4666,'Je délègue des missions entières à des personnes qualifiées avec des points de contrôle réguliers.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1106,0,1,NOW(),NOW()),
(4667,'Je délègue l\'autorité et la décision, me permettant de rester "au-dessus" pour piloter la stratégie.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1106,0,1,NOW(),NOW()),
-- Question 1107
(4668,'Je ne propose pas de formation ; les compétences sont figées lors de l\'embauche.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1107,0,1,NOW(),NOW()),
(4669,'Je forme les salariés uniquement par obligation légale ou changement d\'outil technique.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1107,0,1,NOW(),NOW()),
(4670,'J\'ai un plan de formation annuel lié aux lacunes identifiées lors des évaluations.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1107,0,1,NOW(),NOW()),
(4671,'Je favorise une culture d\'apprentissage permanent et de transmission interne pour viser l\'excellence.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1107,0,1,NOW(),NOW()),
-- Question 1108
(4672,'Je tolère la situation par peur du conflit ou je réagis par la colère sans méthode.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1108,0,1,NOW(),NOW()),
(4673,'Je multiplie les reproches informels sans jamais formaliser un plan d\'amélioration.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1108,0,1,NOW(),NOW()),
(4674,'Je mène des entretiens de recadrage factuels avec des délais de progression précis.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1108,0,1,NOW(),NOW()),
(4675,'Je diagnostique si le problème est lié à la compétence ou à la motivation, et j\'agis avec fermeté.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1108,0,1,NOW(),NOW()),
-- Question 1109
(4676,'L\'organisation est pyramidale et tout repose sur mes épaules ; le personnel est passif.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1109,0,1,NOW(),NOW()),
(4677,'La motivation de l\'équipe repose essentiellement sur la pression ou les primes financières.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1109,0,1,NOW(),NOW()),
(4678,'J\'encourage la prise d\'initiative et je reconnais publiquement les réussites de l\'équipe.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1109,0,1,NOW(),NOW()),
(4679,'J\'ai bâti une équipe autonome et responsable, alignée sur une vision commune et un plein potentiel.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1109,0,1,NOW(),NOW());





-- Fonction 5 : MARKETING - Diagnostic Marketing

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(129,'FONCTION 5 : MARKETING',5,'DIAGNOSTIC : MARKETING',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1200,'Votre connaissance du "terrain de jeu" (Le Marché)',1,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1201,'Votre différence face à la concurrence',2,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1202,'Segmentation de la clientèle',3,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1203,'Définition de la proposition de valeur',4,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1204,'Politique de prix (Fixation)',5,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1205,'La clarté de votre message commercial (Le Pitch)',6,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1206,'L\'adaptation de votre offre',7,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1207,'Vos points de contact avec le client (Mix Marketing)',8,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1208,'L\'alignement de vos équipes sur le "Cap"',9,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1209,'Votre rôle marketing : Opérateur ou Pilote ?',10,129,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1200
(4680,'À l\'aveugle : Je ne regarde pas ce qui se passe ailleurs, je me concentre uniquement sur mes commandes actuelles.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1200,0,1,NOW(),NOW()),
(4681,'Au flair : Je discute avec mes clients, mais je n\'ai pas de données précises sur les nouvelles tendances.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1200,0,1,NOW(),NOW()),
(4682,'Vigilant : Je réalise des analyses régulières (opportunités/menaces) pour ajuster mon offre au marché.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1200,0,1,NOW(),NOW()),
(4683,'Anticipateur : Je pratique une veille constante pour détecter les besoins futurs avant mes concurrents.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1200,0,1,NOW(),NOW()),
-- Question 1201
(4684,'Par hasard : On fait la même chose que les autres, souvent en essayant d\'être moins cher.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1201,0,1,NOW(),NOW()),
(4685,'Par sympathie : On mise sur le bon contact, mais notre offre reste techniquement banale.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1201,0,1,NOW(),NOW()),
(4686,'Par la qualité : Nos produits sont meilleurs ou plus robustes que la moyenne du marché.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1201,0,1,NOW(),NOW()),
(4687,'Par l\'unicité : Notre positionnement est clair et tranché ; personne ne résout le problème comme nous.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1201,0,1,NOW(),NOW()),
-- Question 1202
(4688,'Je vends à tout le monde sans distinction ; mon offre est identique pour tous.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1202,0,1,NOW(),NOW()),
(4689,'Je distingue quelques types de clients, mais mon discours reste très généraliste.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1202,0,1,NOW(),NOW()),
(4690,'J\'utilise des critères précis (géographiques, démographiques) pour découper mon marché.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1202,0,1,NOW(),NOW()),
(4691,'J\'ai créé des "Personas" détaillés pour chaque segment, me permettant d\'adapter mon offre chirurgicalement.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1202,0,1,NOW(),NOW()),
-- Question 1203
(4692,'Mon produit est standard ; je mise principalement sur ma disponibilité ou ma gentillesse.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1203,0,1,NOW(),NOW()),
(4693,'Mon offre apporte un bénéfice clair, mais elle ressemble beaucoup à celle de mes concurrents directs.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1203,0,1,NOW(),NOW()),
(4694,'Ma valeur ajoutée est clairement identifiée (gain de temps, sécurité) et répond à un problème précis.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1203,0,1,NOW(),NOW()),
(4695,'J\'ai un positionnement "Océan Bleu" : mon offre est si innovante que je suis l\'acteur incontournable de ma niche.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1203,0,1,NOW(),NOW()),
-- Question 1204
(4696,'Je m\'aligne sur les concurrents ou j\'ajoute une petite marge sans savoir si c\'est réellement rentable.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1204,0,1,NOW(),NOW()),
(4697,'Je fixe mes prix en fonction de mes coûts de revient, sans analyser la psychologie du client.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1204,0,1,NOW(),NOW()),
(4698,'Je prends en compte trois variables : mes coûts, les prix du marché et la valeur perçue.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1204,0,1,NOW(),NOW()),
(4699,'J\'utilise la méthode du "prix d\'acceptabilité" et je connais le prix maximum lié à la valeur que je délivre.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1204,0,1,NOW(),NOW()),
-- Question 1205
(4700,'Je parle trop technique ou je me perds dans les détails de "comment ça marche".',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1205,0,1,NOW(),NOW()),
(4701,'Je présente mon entreprise, mon historique et mes produits de manière factuelle.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1205,0,1,NOW(),NOW()),
(4702,'J\'utilise des messages clés et des phrases chocs pour marquer les esprits.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1205,0,1,NOW(),NOW()),
(4703,'Je raconte une histoire ou je pose une question qui captive immédiatement mon auditoire.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1205,0,1,NOW(),NOW()),
-- Question 1206
(4704,'Je vends la même chose depuis des années, c\'est au client de s\'adapter à mon offre.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1206,0,1,NOW(),NOW()),
(4705,'Je modifie mon offre seulement quand je commence à perdre trop de clients.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1206,0,1,NOW(),NOW()),
(4706,'Je demande régulièrement des avis pour améliorer mes services existants.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1206,0,1,NOW(),NOW()),
(4707,'J\'utilise les retours clients pour créer de nouveaux produits "Océan Bleu" en rupture.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1206,0,1,NOW(),NOW()),
-- Question 1207
(4708,'Uniquement par le bouche-à-oreille, sans aucun contrôle de ma part.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1207,0,1,NOW(),NOW()),
(4709,'Un peu de réseaux sociaux, un peu de flyers, mais sans réelle cohérence.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1207,0,1,NOW(),NOW()),
(4710,'Mon message est identique et cohérent sur tous mes supports (site, réseaux, bureaux).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1207,0,1,NOW(),NOW()),
(4711,'J\'ai un canal d\'acquisition clair qui génère des prospects de manière régulière.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1207,0,1,NOW(),NOW()),
-- Question 1208
(4712,'Ils exécutent des tâches sans comprendre l\'image que je veux projeter.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1208,0,1,NOW(),NOW()),
(4713,'Ils connaissent le logo et le slogan, mais pas forcément les valeurs profondes.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1208,0,1,NOW(),NOW()),
(4714,'Ils comprennent les besoins des clients et leur rôle dans leur satisfaction.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1208,0,1,NOW(),NOW()),
(4715,'Chaque membre incarne la vision et la différence de l\'entreprise au quotidien.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1208,0,1,NOW(),NOW()),
-- Question 1209
(4716,'Je bricole moi-même mes publicités ou mon site web pour économiser.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1209,0,1,NOW(),NOW()),
(4717,'Je valide chaque mot, mais je n\'ai pas de stratégie d\'ensemble.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1209,0,1,NOW(),NOW()),
(4718,'Je définis les objectifs (SMART) et je délègue la création technique.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1209,0,1,NOW(),NOW()),
(4719,'Je bâtis un système où l\'entreprise attire ses clients de manière autonome.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1209,0,1,NOW(),NOW());




-- Fonction 6 : COMMUNICATION - Diagnostic Communication & Image

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(130,'FONCTION 6 : COMMUNICATION',6,'DIAGNOSTIC : COMMUNICATION & IMAGE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1210,'Circulation de l\'information interne (Rituels)',1,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1211,'Clarté des consignes (Le "Qui fait Quoi")',2,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1212,'Boucles de contrôle (Briefing / Debriefing)',3,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1213,'Capacité d\'écoute et présence (MBWA)',4,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1214,'Supervision de la communication externe (Image de marque)',5,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1215,'Votre rôle d\'Ambassadeur (Le Pitch)',6,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1216,'Communication en situation de tension (Le Sphinx)',7,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1217,'Présence numérique (Web et Réseaux)',8,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1218,'Exemplarité (Walk the Talk)',9,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1219,'Savoir-faire-faire : Maintenance du système de communication',10,130,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1210
(4720,'L\'information circule par rumeur ; je ne communique que quand on me pose des questions.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1210,0,1,NOW(),NOW()),
(4721,'Je dis les choses quand je croise les gens, avec un risque élevé de distorsion du message.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1210,0,1,NOW(),NOW()),
(4722,'J\'organise des réunions fixes et formalisées pour partager les objectifs et les résultats.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1210,0,1,NOW(),NOW()),
(4723,'Les flux sont structurés (écrits, oraux, outils) ; chacun accède rapidement aux données pour décider.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1210,0,1,NOW(),NOW()),
-- Question 1211
(4724,'Je donne des ordres vagues ("Occupe-toi de ça") sans préciser le délai ni le résultat attendu.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1211,0,1,NOW(),NOW()),
(4725,'Je donne des consignes orales précises mais sans expliquer le "Pourquoi" (le sens).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1211,0,1,NOW(),NOW()),
(4726,'Je fixe des objectifs clairs et m\'assure que la méthode est identifiée (Qui, Quoi, Où, Quand, Comment, Pourquoi).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1211,0,1,NOW(),NOW()),
(4727,'Stratégique : Chaque consigne est SMART et explicitement reliée à la vision globale de l\'entreprise.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1211,0,1,NOW(),NOW()),
-- Question 1212
(4728,'Je ne communique que lorsqu\'un problème grave survient (mode "pompier").',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1212,0,1,NOW(),NOW()),
(4729,'Je demande des nouvelles de temps en temps, sans méthode de suivi systématique.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1212,0,1,NOW(),NOW()),
(4730,'J\'utilise des reportings réguliers pour suivre l\'avancement des projets et les indicateurs.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1212,0,1,NOW(),NOW()),
(4731,'Je pratique le briefing (cadrage) et le debriefing (bilan) pour corriger les dérives immédiatement.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1212,0,1,NOW(),NOW()),
-- Question 1213
(4732,'Je reste enfermé dans mon bureau ; je méconnais les préoccupations réelles de mes collaborateurs.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1213,0,1,NOW(),NOW()),
(4733,'Ma porte est ouverte, mais j\'attends passivement que l\'on vienne m\'informer.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1213,0,1,NOW(),NOW()),
(4734,'Je pratique une écoute empathique et je reformule pour valider la compréhension des besoins.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1213,0,1,NOW(),NOW()),
(4735,'Je circule sur le terrain pour voir, entendre et désamorcer les tensions.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1213,0,1,NOW(),NOW()),
-- Question 1214
(4736,'Nous n\'avons aucune politique de communication ; nous comptons sur le bouche-à-oreille passif.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1214,0,1,NOW(),NOW()),
(4737,'Nous communiquons sur nos produits/prix, sans identité visuelle ni message de valeur.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1214,0,1,NOW(),NOW()),
(4738,'Notre communication est cohérente sur tous les supports et valorise notre savoir-faire.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1214,0,1,NOW(),NOW()),
(4739,'Nous diffusons un discours et des valeurs qui nous distinguent radicalement de la concurrence.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1214,0,1,NOW(),NOW()),
-- Question 1215
(4740,'Je m\'embrouille dans les détails techniques et je perds mon auditeur.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1215,0,1,NOW(),NOW()),
(4741,'Je présente mes produits et mon historique de manière classique.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1215,0,1,NOW(),NOW()),
(4742,'J\'utilise un "Elevator Pitch" (moins de 2 minutes) centré sur le bénéfice client.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1215,0,1,NOW(),NOW()),
(4743,'Je raconte une histoire (storytelling) qui captive et donne envie de collaborer immédiatement.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1215,0,1,NOW(),NOW()),
-- Question 1216
(4744,'Je m\'énerve ou je coupe court à la discussion (posture explosive ou fuyante).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1216,0,1,NOW(),NOW()),
(4745,'Je cherche des excuses ou je rejette la faute sur les autres (posture défensive).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1216,0,1,NOW(),NOW()),
(4746,'Je prends du recul, je respire et je reste factuel pour désamorcer la tension.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1216,0,1,NOW(),NOW()),
(4747,'Je reste stable, j\'écoute sans interrompre et je transforme le conflit en problème à résoudre.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1216,0,1,NOW(),NOW()),
-- Question 1217
(4748,'Je n\'ai pas de site internet ou de page sur les RS, ou ils ne sont plus à jour depuis des années.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1217,0,1,NOW(),NOW()),
(4749,'J\'ai un site ou une page, mais ils ne me ramènent aucun contact et je ne surveille pas mon e-réputation.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1217,0,1,NOW(),NOW()),
(4750,'Mon site ou ma page est professionnel et je communique régulièrement sur les réseaux sociaux adaptés à ma cible.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1217,0,1,NOW(),NOW()),
(4751,'Internet est un levier d\'acquisition automatisé ; je réponds aux avis et je soigne mon image digitale quotidiennement.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1217,0,1,NOW(),NOW()),
-- Question 1218
(4752,'Mes actes contredisent souvent mes paroles (ex : exiger la ponctualité tout en étant en retard).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1218,0,1,NOW(),NOW()),
(4753,'Je suis exemplaire quand tout va bien, mais je craque sous la pression.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1218,0,1,NOW(),NOW()),
(4754,'Je m\'efforce d\'être en accord avec mes valeurs et je reconnais mes erreurs quand je m\'en éloigne.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1218,0,1,NOW(),NOW()),
(4755,'Mes gestes, mes paroles et mes décisions sont parfaitement alignés ; mon équipe peut se fier totalement à ma parole.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1218,0,1,NOW(),NOW()),
-- Question 1219
(4756,'Je suis le seul à détenir l\'information ; sans moi, l\'équipe est "aveugle".',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1219,0,1,NOW(),NOW()),
(4757,'Je demande aux autres de communiquer, mais sans définir de règles de validation.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1219,0,1,NOW(),NOW()),
(4758,'Des règles internes claires définissent qui doit être informé de quoi et comment (ex : matrice RACI).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1219,0,1,NOW(),NOW()),
(4759,'J\'ai bâti un système où chaque collaborateur est un ambassadeur formé, capable de transmettre la vision de manière autonome.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1219,0,1,NOW(),NOW());





-- Fonction 7 : COMMERCIAL - Diagnostic Maturité Commerciale

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(140,'FONCTION 7 : COMMERCIAL',7,'DIAGNOSTIC : MATURITÉ COMMERCIALE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1220,'Votre stratégie de conquête (Le "Cap")',1,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1221,'Le tunnel de vente (Le "Process")',2,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1222,'Pilotage du portefeuille clients',3,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1223,'Fixation des objectifs commerciaux',4,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1224,'Suivi des indicateurs de performance (KPIs)',5,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1225,'Maîtrise des négociations stratégiques',6,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1226,'Protection de la réputation et image de marque',7,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1227,'Gestion des impayés et crédit client',8,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1228,'Savoir-faire-faire : Système commercial reproductible',9,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1229,'Posture : Dirigeant-Pilote ou Commercial-Exécutant ?',10,140,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1220
(4760,'Je vends à toute personne qui se présente, sans cible précise ni stratégie écrite.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1220,0,1,NOW(),NOW()),
(4761,'Je connais mes concurrents, mais mon offre ressemble à la leur ; je me bats souvent sur les prix.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1220,0,1,NOW(),NOW()),
(4762,'J\'ai identifié des niches spécifiques (créneaux) que je sers mieux que les gros acteurs du marché.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1220,0,1,NOW(),NOW()),
(4763,'Mon positionnement est unique et différencié ; mon offre répond précisément aux frustrations de mon « client idéal ».',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1220,0,1,NOW(),NOW()),
-- Question 1221
(4764,'Chaque vente est une improvisation ; je ne sais pas précisément où en sont mes prospects.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1221,0,1,NOW(),NOW()),
(4765,'Je suis mes proformas en cours, mais je n\'ai pas de vision sur les étapes de détection des clients.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1221,0,1,NOW(),NOW()),
(4766,'J\'utilise un « pipe commercial » pour catégoriser mes prospects et anticiper les baisses d\'activité.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1221,0,1,NOW(),NOW()),
(4767,'Mon tunnel de vente est une procédure répétitive générant du profit qui fonctionne avec ou sans moi.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1221,0,1,NOW(),NOW()),
-- Question 1222
(4768,'Je ne recontacte mes clients que s\'ils m\'appellent ou pour une commande urgente.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1222,0,1,NOW(),NOW()),
(4769,'J\'ai un fichier client, mais je ne l\'utilise pas pour proposer de nouvelles offres.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1222,0,1,NOW(),NOW()),
(4770,'J\'applique la loi de Pareto (20 % des clients font 80 % du CA) et je soigne mes clients prioritaires.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1222,0,1,NOW(),NOW()),
(4771,'J\'utilise un CRM pour automatiser les relances, le cross-selling et transformer mes clients en ambassadeurs.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1222,0,1,NOW(),NOW()),
-- Question 1223
(4772,'Je n\'ai pas d\'objectifs chiffrés ; on essaye de vendre « le plus possible ».',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1223,0,1,NOW(),NOW()),
(4773,'Je fixe uniquement un objectif de chiffre d\'affaires global annuel.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1223,0,1,NOW(),NOW()),
(4774,'Mes objectifs sont Simples, Mesurables, Ambitieux, Réalistes et Temporels (SMART).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1223,0,1,NOW(),NOW()),
(4775,'Les objectifs sont déclinés par collaborateur, suivis et acceptés par l\'équipe comme un challenge.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1223,0,1,NOW(),NOW()),
-- Question 1224
(4776,'Je regarde seulement le solde en banque et le chiffre d\'affaires à la fin du mois.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1224,0,1,NOW(),NOW()),
(4777,'Je suis le montant total des devis envoyés et le nombre de rendez-vous effectués.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1224,0,1,NOW(),NOW()),
(4778,'Je pilote avec une dizaine de chiffres clés (taux de signature, panier moyen, délai de règlement).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1224,0,1,NOW(),NOW()),
(4779,'J\'analyse les causes d\'échec des ventes perdues pour ajuster ma stratégie en temps réel.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1224,0,1,NOW(),NOW()),
-- Question 1225
(4780,'Je cède souvent sur le prix par peur de perdre le client ou le contrat.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1225,0,1,NOW(),NOW()),
(4781,'Je parle beaucoup de mon produit mais j\'écoute peu les besoins réels du prospect.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1225,0,1,NOW(),NOW()),
(4782,'Je cherche des solutions « Gagnant-Gagnant » en traitant les objections avec méthode (ex: SONCAS).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1225,0,1,NOW(),NOW()),
(4783,'Je maîtrise ma solution de repli (MESORE) et je vends de la valeur/transformation plutôt qu\'un prix.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1225,0,1,NOW(),NOW()),
-- Question 1226
(4784,'On se concentre sur la vente immédiate sans se soucier de l\'image laissée au client.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1226,0,1,NOW(),NOW()),
(4785,'Les documents (devis, factures) sont corrects, mais l\'image de marque n\'est pas affirmée.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1226,0,1,NOW(),NOW()),
(4786,'Mon identité visuelle et mon discours sont harmonisés sur tous les supports.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1226,0,1,NOW(),NOW()),
(4787,'L\'entreprise est perçue comme un expert référent ; chaque collaborateur incarne la marque.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1226,0,1,NOW(),NOW()),
-- Question 1227
(4788,'Je réalise qu\'un client n\'a pas payé quand j\'ai un trou de trésorerie.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1227,0,1,NOW(),NOW()),
(4789,'Je relance mes clients de temps en temps, quand j\'y pense, sans procédure fixe.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1227,0,1,NOW(),NOW()),
(4790,'J\'exige des acomptes à la commande et j\'ai un système de relance avant échéance.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1227,0,1,NOW(),NOW()),
(4791,'Je vérifie la solvabilité avant de m’engager et j\'applique des indemnités de retard si nécessaire.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1227,0,1,NOW(),NOW()),
-- Question 1228
(4792,'Je suis le seul à savoir vendre ; si je m\'arrête, les revenus s\'arrêtent.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1228,0,1,NOW(),NOW()),
(4793,'J\'ai des commerciaux, mais je dois valider chaque offre et être présent aux rendez-vous clés.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1228,0,1,NOW(),NOW()),
(4794,'Mes méthodes de vente sont écrites (argumentaires, guides) et transmises à l\'équipe.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1228,0,1,NOW(),NOW()),
(4795,'J\'ai bâti un système autonome qui attire, convertit et fidélise les clients sans mon intervention.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1228,0,1,NOW(),NOW()),
-- Question 1229
(4796,'Je passe 95 % de mon temps à « faire » du commercial et de la prospection directe.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1229,0,1,NOW(),NOW()),
(4797,'Je gère l\'ordre commercial, mais je me sens obligé de tout contrôler par manque de confiance.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1229,0,1,NOW(),NOW()),
(4798,'Je consacre mon temps à organiser l\'équipe de vente et à analyser les résultats.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1229,0,1,NOW(),NOW()),
(4799,'Ma valeur est en dehors du système : je conçois et j\'améliore la machine qui crée la richesse.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1229,0,1,NOW(),NOW());





-- Fonction 8 : OPÉRATIONS - Diagnostic Maturité Opérationnelle

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(141,'FONCTION 8 : OPÉRATIONS',8,'DIAGNOSTIC : MATURITÉ OPÉRATIONNELLE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1230,'Cartographie de la chaîne de valeur (La vue d''ensemble)',1,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1231,'Optimisation des flux et « Goulots d''étranglement »',2,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1232,'Standardisation et procédures (SOP)',3,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1233,'Gestion et sécurisation des fournisseurs',4,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1234,'Analyse de la rentabilité opérationnelle',5,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1235,'Supervision de la qualité et « Zéro défaut »',6,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1236,'Réduction de la dépendance au dirigeant (Autopilote)',7,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1237,'Gestion de la Maintenance et des Outils de Travail',8,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1238,'Maîtrise des Approvisionnements et des Stocks',9,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1239,'Pilotage Quotidien et Rituels de Performance',10,141,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1230
(4800,'Je traite les tâches comme si elles n''avaient aucun rapport les unes avec les autres (vision parcellisée).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1230,0,1,NOW(),NOW()),
(4801,'Je connais les étapes, mais je passe mon temps à naviguer entre elles pour gérer le quotidien (vision linéaire).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1230,0,1,NOW(),NOW()),
(4802,'J''ai identifié mes activités clés (logistique, production, SAV) et leurs interactions.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1230,0,1,NOW(),NOW()),
(4803,'Je pilote un réseau de composants intégrés où chaque partie contribue à un résultat programmé.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1230,0,1,NOW(),NOW()),
-- Question 1231
(4804,'Je suis le goulot d''étranglement car je veux tout valider moi-même.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1231,0,1,NOW(),NOW()),
(4805,'Je cherche des solutions uniquement quand un problème de livraison ou de stock survient (réaction aux pannes).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1231,0,1,NOW(),NOW()),
(4806,'J''utilise des outils (type Kanban) pour visualiser le flux et réduire les délais d''attente.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1231,0,1,NOW(),NOW()),
(4807,'Je traque systématiquement les gaspillages (stocks, déplacements, défauts) pour maximiser l''efficience.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1231,0,1,NOW(),NOW()),
-- Question 1232
(4808,'Tout est dans ma tête ; sans moi, l''équipe est incapable de reproduire la qualité attendue.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1232,0,1,NOW(),NOW()),
(4809,'Les méthodes se transmettent oralement, avec un fort risque de dégradation au fil du temps.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1232,0,1,NOW(),NOW()),
(4810,'J''ai des procédures standard (SOP) écrites qui indiquent précisément comment le travail doit être fait.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1232,0,1,NOW(),NOW()),
(4811,'La documentation permet à des collaborateurs ordinaires d''obtenir des résultats extraordinaires.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1232,0,1,NOW(),NOW()),
-- Question 1233
(4812,'Je dépends d''un seul fournisseur sans contrat, ce qui met l''entreprise en danger.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1233,0,1,NOW(),NOW()),
(4813,'Je cherche le meilleur prix au coup par coup, sans vision de partenariat à long terme.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1233,0,1,NOW(),NOW()),
(4814,'J''ai plusieurs fournisseurs sélectionnés pour leur capacité à me soutenir dans les situations difficiles.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1233,0,1,NOW(),NOW()),
(4815,'Mes relations fournisseurs sont des partenariats stratégiques intégrés pour garantir la fluidité.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1233,0,1,NOW(),NOW()),
-- Question 1234
(4816,'Je ne sais pas si une opération spécifique est rentable avant la fin de l''année.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1234,0,1,NOW(),NOW()),
(4817,'Je connais ma marge brute moyenne, mais pas le détail précis par produit ou service.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1234,0,1,NOW(),NOW()),
(4818,'Je sais combien d''unités je dois produire pour couvrir mes charges fixes et baisser mon point mort.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1234,0,1,NOW(),NOW()),
(4819,'Je connais le coût de revient précis (matières, temps, énergie) de chaque prestation pour optimiser mes profits.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1234,0,1,NOW(),NOW()),
-- Question 1235
(4820,'Je m''aperçois des défauts quand le client se plaint (contrôle final réactif).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1235,0,1,NOW(),NOW()),
(4821,'Je repasse derrière tout le monde pour vérifier que c''est « bien fait » (inspection visuelle).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1235,0,1,NOW(),NOW()),
(4822,'J''ai intégré des vérifications à chaque étape critique du processus pour stopper les erreurs à la source.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1235,0,1,NOW(),NOW()),
(4823,'J''utilise le cycle « Planifier-Développer-Contrôler-Ajuster » (PDCA) pour éliminer les défauts durablement.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1235,0,1,NOW(),NOW()),
-- Question 1236
(4824,'Si je me retire, l''entreprise s''arrête instantanément (présence obligatoire).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1236,0,1,NOW(),NOW()),
(4825,'Je confie des tâches, mais je dois répondre à des questions toutes les 15 minutes.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1236,0,1,NOW(),NOW()),
(4826,'Mon équipe prend des décisions dans ses domaines respectifs grâce à des balises claires.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1236,0,1,NOW(),NOW()),
(4827,'J''ai bâti un système qui fonctionne pour moi mais sans moi ; mon rôle est de superviser et d''innover.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1236,0,1,NOW(),NOW()),
-- Question 1237
(4828,'Je n''interviens que lorsqu''une machine casse ou qu''un outil ne fonctionne plus (mode réactif).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1237,0,1,NOW(),NOW()),
(4829,'Je fais un entretien de temps en temps, mais sans calendrier précis (mode actif).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1237,0,1,NOW(),NOW()),
(4830,'J''ai mis en place un planning de maintenance régulier pour éviter les arrêts imprévus (mode proactif).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1237,0,1,NOW(),NOW()),
(4831,'Le patrimoine est un actif stratégique ; le matériel est à jour, sécurisé et suivi par des indicateurs.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1237,0,1,NOW(),NOW()),
-- Question 1238
(4832,'Je commande souvent dans l''urgence car j''ai oublié de vérifier mes stocks (mode chaos).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1238,0,1,NOW(),NOW()),
(4833,'J''ai des stocks importants qui dorment et coûtent cher en trésorerie sans être organisés (mode morcellement).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1238,0,1,NOW(),NOW()),
(4834,'J''ai identifié mes besoins réels et je gère mes commandes selon des seuils définis (mode structuré).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1238,0,1,NOW(),NOW()),
(4835,'La chaîne est fluide ; j''ai éliminé les traitements superflus pour ne stocker que le strict nécessaire (mode architecte).',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1238,0,1,NOW(),NOW()),
-- Question 1239
(4836,'Il n''y a aucune réunion opérationnelle ; je découvre les erreurs via les plaintes clients (mode silence).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1239,0,1,NOW(),NOW()),
(4837,'On se parle "à la volée" pour régler les problèmes, mais les consignes sont souvent oubliées (mode informel).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1239,0,1,NOW(),NOW()),
(4838,'J''organise des réunions régulières pour faire le point sur la production et les délais (mode ritualisé).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1239,0,1,NOW(),NOW()),
(4839,'Je pratique le Briefing le matin et le Débriefing le soir ; l''équipe corrige ses propres écarts (mode autopilote).',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1239,0,1,NOW(),NOW());





-- Fonction 9 : DIGITAL - Diagnostic Le Digital au service de votre performance

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(142,'FONCTION 9 : DIGITAL',9,'DIAGNOSTIC : LE DIGITAL AU SERVICE DE VOTRE PERFORMANCE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1240,'Vision et besoins prioritaires',1,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1241,'Messagerie et relation client (WhatsApp)',2,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1242,'La "Mémoire" de l''entreprise (Stockage)',3,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1243,'Gestion commerciale et facturation',4,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1244,'Organisation du travail et suivi des tâches',5,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1245,'Automatisation des tâches répétitives',6,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1246,'Maîtrise de la donnée (Aide à la décision)',7,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1247,'Visibilité et acquisition client',8,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1248,'Sécurité et pérennité numérique',9,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1249,'Savoir-faire-faire : Productivité par le système',10,142,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1240
(4840,'Je ne le fais que si je n''ai plus le choix (ex: banque, impôts).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1240,0,1,NOW(),NOW()),
(4841,'Je télécharge des outils parce qu''on m''en a parlé, sans savoir s''ils sont réellement utiles à mon métier.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1240,0,1,NOW(),NOW()),
(4842,'J''identifie les blocages (ex: trop de paperasse) et je cherche un outil spécifique pour gagner du temps.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1240,0,1,NOW(),NOW()),
(4843,'Chaque outil est choisi stratégiquement pour rendre mon entreprise autonome et capable de grandir sans moi.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1240,0,1,NOW(),NOW()),
-- Question 1241
(4844,'Mes messages personnels et professionnels sont mélangés ; je perds souvent le fil de mes commandes.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1241,0,1,NOW(),NOW()),
(4845,'J''utilise WhatsApp Business avec un catalogue, mais je traite tout manuellement sans base de données.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1241,0,1,NOW(),NOW()),
(4846,'J''utilise des réponses automatiques et des étiquettes pour classer rigoureusement mes prospects et clients.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1241,0,1,NOW(),NOW()),
(4847,'Mes échanges sont reliés à un logiciel de gestion (CRM) ; j''accède à l''historique client en un clic.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1241,0,1,NOW(),NOW()),
-- Question 1242
(4848,'Tout est dans des carnets ou dans ma tête ; si je m''absente, l''entreprise s''arrête.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1242,0,1,NOW(),NOW()),
(4849,'Les dossiers sont sur mon téléphone ou mon PC, mais c''est le désordre pour retrouver un document précis.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1242,0,1,NOW(),NOW()),
(4850,'J''utilise le Cloud (Dropbox, Drive) pour que mes documents soient accessibles partout et sauvegardés.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1242,0,1,NOW(),NOW()),
(4851,'Mes données sont centralisées, partagées avec l''équipe et accessibles instantanément par mot-clé.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1242,0,1,NOW(),NOW()),
-- Question 1243
(4852,'J''écris tout à la main ou sur Word sans aucun suivi automatique des règlements.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1243,0,1,NOW(),NOW()),
(4853,'J''utilise Excel, mais je dois souvent ressaisir les mêmes informations plusieurs fois (perte de temps).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1243,0,1,NOW(),NOW()),
(4854,'J''utilise un logiciel de facturation dédié qui suit mes paiements et génère mes relances.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1243,0,1,NOW(),NOW()),
(4855,'Ma facturation est une gestion intégrée (ERP) liée à mes stocks et à ma comptabilité en temps réel.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1243,0,1,NOW(),NOW()),
-- Question 1244
(4856,'On se donne des instructions à l''oral ou par SMS ; les oublis et les malentendus sont fréquents.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1244,0,1,NOW(),NOW()),
(4857,'J''utilise un agenda papier, mais je ne peux pas déléguer efficacement ou suivre l''avancée de l''équipe.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1244,0,1,NOW(),NOW()),
(4858,'J''utilise des outils collaboratifs (Trello, Todoist) pour lister les tâches et visualiser l''avancement.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1244,0,1,NOW(),NOW()),
(4859,'Le système crée seul les rappels et les échéances ; je pilote l''activité par exception.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1244,0,1,NOW(),NOW()),
-- Question 1245
(4860,'Chaque relance ou envoi de mail me prend du temps humain (100% manuel).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1245,0,1,NOW(),NOW()),
(4861,'J''utilise quelques rappels, mais l''essentiel de l''opérationnel consomme tout mon temps.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1245,0,1,NOW(),NOW()),
(4862,'Mes processus critiques (ex: accueil client) sont automatisés par des séquences numériques.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1245,0,1,NOW(),NOW()),
(4863,'Le système gère les flux standards, me libérant plus de 80% de mon temps pour la stratégie.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1245,0,1,NOW(),NOW()),
-- Question 1246
(4864,'Mes chiffres sont enterrés dans la paperasse ; je ne connais ma rentabilité qu''en fin d''année.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1246,0,1,NOW(),NOW()),
(4865,'Je regarde mon chiffre d''affaires une fois par mois, mais sans analyse détaillée.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1246,0,1,NOW(),NOW()),
(4866,'J''ai des tableaux de bord (KPI) simples pour suivre mes marges et mes ventes.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1246,0,1,NOW(),NOW()),
(4867,'Mes données me permettent de simuler l''avenir et d''identifier mes meilleurs leviers de profit.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1246,0,1,NOW(),NOW()),
-- Question 1247
(4868,'Je n''ai aucune vitrine numérique ; je dépends totalement de mon réseau physique.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1247,0,1,NOW(),NOW()),
(4869,'J''ai une page Facebook ou un site internet que je ne mets jamais à jour (présence passive).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1247,0,1,NOW(),NOW()),
(4870,'Je publie régulièrement et mon site internet me rapporte des contacts qualifiés.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1247,0,1,NOW(),NOW()),
(4871,'Mon système numérique attire, convertit et fidélise les clients de manière automatisée.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1247,0,1,NOW(),NOW()),
-- Question 1248
(4872,'Je perds tout ; mon entreprise s''arrête instantanément (crash total).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1248,0,1,NOW(),NOW()),
(4873,'J''ai une clé USB, mais je ne l''ai pas mise à jour depuis des mois.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1248,0,1,NOW(),NOW()),
(4874,'Toutes mes données sont synchronisées sur le Cloud et protégées par des mots de passe.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1248,0,1,NOW(),NOW()),
(4875,'J''ai un plan de secours ; je peux redémarrer mon activité de n''importe où en 2 heures.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1248,0,1,NOW(),NOW()),
-- Question 1249
(4876,'Sans moi, personne ne sait utiliser les outils ou accéder aux infos (dirigeant-centrique).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1249,0,1,NOW(),NOW()),
(4877,'Quelques employés utilisent des outils, mais il n''y a pas de règle de fonctionnement commune.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1249,0,1,NOW(),NOW()),
(4878,'J''ai mis en place des guides d''utilisation (SOP) pour nos outils numériques.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1249,0,1,NOW(),NOW()),
(4879,'Chaque membre est autonome grâce à la puissance du système (organisation apprenante).',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1249,0,1,NOW(),NOW());





-- Fonction 10 : ADMINISTRATION - Diagnostic Maturité Administrative

INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(143,'FONCTION 10 : ADMINISTRATION',10,'DIAGNOSTIC : MATURITÉ ADMINISTRATIVE',NULL,1,2,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

-- Questions
INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(1250,'Organisation du "Back-office" et Support',1,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1251,'Système d’Archivage et Mémoire de l''Entreprise',2,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1252,'Maîtrise des Obligations Légales et Fiscales',3,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1253,'Standards Opérationnels et Manuel de Procédures (SOP)',4,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1254,'Plan de Continuité d’Activité (PCA)',5,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1255,'Identification des Dépendances Critiques',6,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1256,'Analyse et Gestion des Risques Majeurs',7,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1257,'Supervision des Experts et Prestataires Externes',8,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1258,'Capitalisation du Savoir-faire (SOP et Procédures)',9,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(1259,'Stabilité et Gouvernance Organisationnelle',10,143,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

-- Réponses (4 par question)
INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
-- Question 1250
(4880,'Je traite l\'administratif seul le soir ou le week-end, négligeant ces fonctions par manque de temps.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1250,0,1,NOW(),NOW()),
(4881,'Les tâches sont floues et ne sont traitées que sous la pression de l\'urgence ou des pénalités.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1250,0,1,NOW(),NOW()),
(4882,'Le secrétariat ou l\'office management sont clairement définis et disposent d\'outils adaptés.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1250,0,1,NOW(),NOW()),
(4883,'Le support administratif est un levier stratégique qui fournit des rapports d\'aide à la décision.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1250,0,1,NOW(),NOW()),
-- Question 1251
(4884,'Les dossiers sont éparpillés entre carnets papier, fichiers isolés et ma propre mémoire (chaos documentaire).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1251,0,1,NOW(),NOW()),
(4885,'J\'utilise des classeurs physiques mais sans méthode de tri rigoureuse (perte de temps en recherche).',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1251,0,1,NOW(),NOW()),
(4886,'Les documents sont classés par catégories et sauvegardés sur un Cloud sécurisé (Google Drive, Dropbox).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1251,0,1,NOW(),NOW()),
(4887,'L\'archivage est numérisé, indexé et accessible instantanément, garantissant la conformité lors d\'un audit.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1251,0,1,NOW(),NOW()),
-- Question 1252
(4888,'Je découvre mes obligations lors de mises en demeure ou de retards de paiement (pilotage par la sanction).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1252,0,1,NOW(),NOW()),
(4889,'Je confie tout à mon expert-comptable sans comprendre les choix fiscaux ni vérifier l\'agenda social.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1252,0,1,NOW(),NOW()),
(4890,'Je tiens les registres légaux à jour et je respecte scrupuleusement le calendrier des déclarations.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1252,0,1,NOW(),NOW()),
(4891,'Je pratique une veille réglementaire et j\'utilise la fiscalité comme un instrument de développement de mon patrimoine.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1252,0,1,NOW(),NOW()),
-- Question 1253
(4892,'Tout est dans ma tête ; si je m\'absente, tout s\'arrête car personne ne sait comment procéder.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1253,0,1,NOW(),NOW()),
(4893,'Les méthodes de travail se transmettent oralement, entraînant des erreurs répétitives et une dégradation du système.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1253,0,1,NOW(),NOW()),
(4894,'J\'ai rédigé des procédures standard (SOP) pour les processus critiques (accueil, facturation, livraisons).',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1253,0,1,NOW(),NOW()),
(4895,'La documentation permet de former une recrue instantanément et d\'assurer une qualité constante sans mon intervention.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1253,0,1,NOW(),NOW()),
-- Question 1254
(4896,'Aucun plan n\'existe ; un incident grave signifierait l\'arrêt définitif de l\'entreprise.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1254,0,1,NOW(),NOW()),
(4897,'J\'ai quelques assurances mais pas de stratégie de redémarrage rapide de l\'activité.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1254,0,1,NOW(),NOW()),
(4898,'J\'ai identifié des solutions alternatives (Plan B) et des fonds de secours pour les crises.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1254,0,1,NOW(),NOW()),
(4899,'Le système permet de redémarrer l\'activité en quelques heures, protégeant structure et revenus.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1254,0,1,NOW(),NOW()),
-- Question 1255
(4900,'Je ne vois pas les risques de rupture (fournisseurs, outils) avant qu\'ils ne surviennent.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1255,0,1,NOW(),NOW()),
(4901,'Je sais quels outils sont clés, mais je n\'ai pas formalisé de solution de repli.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1255,0,1,NOW(),NOW()),
(4902,'J\'ai cartographié mes interdépendances et je gère activement mes partenariats.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1255,0,1,NOW(),NOW()),
(4903,'L\'organisation est structurée pour ne plus dépendre exclusivement d\'un tiers ou du dirigeant.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1255,0,1,NOW(),NOW()),
-- Question 1256
(4904,'Je considère que les problèmes n\'arrivent qu\'aux autres ; je ne fais aucun diagnostic.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1256,0,1,NOW(),NOW()),
(4905,'Je n\'analyse les risques (financiers, juridiques) qu\'après avoir subi un incident.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1256,0,1,NOW(),NOW()),
(4906,'J\'évalue mes zones de risques et j\'intègre des points de contrôle dans mes processus.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1256,0,1,NOW(),NOW()),
(4907,'L\'analyse des risques est au cœur de ma stratégie pour transformer chaque vulnérabilité en sécurité.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1256,0,1,NOW(),NOW()),
-- Question 1257
(4908,'Je me sens "prisonnier" de mes prestataires et ne comprends pas leurs travaux.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1257,0,1,NOW(),NOW()),
(4909,'Je les sollicite au coup par coup sans contrat ni objectifs de performance clairs.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1257,0,1,NOW(),NOW()),
(4910,'Je travaille en collaboration étroite, vérifie leurs rapports et m\'assure de leur responsabilité.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1257,0,1,NOW(),NOW()),
(4911,'Je pilote mes experts avec des missions précises et les intègre à ma vision de croissance.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1257,0,1,NOW(),NOW()),
-- Question 1258
(4912,'Tout est dans ma tête ; le savoir se perd à chaque départ de collaborateur.',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1258,0,1,NOW(),NOW()),
(4913,'Quelques notes de service existent mais elles sont souvent obsolètes.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1258,0,1,NOW(),NOW()),
(4914,'J\'ai mis en place un manuel de procédures (SOP) pour garantir la régularité du service.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1258,0,1,NOW(),NOW()),
(4915,'La documentation permet de former une recrue instantanément et assure une qualité constante.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1258,0,1,NOW(),NOW()),
-- Question 1259
(4916,'L\'entreprise est bousculée par la moindre urgence ; je navigue à vue (chaos permanent).',NULL,1,1,'f10a16e49-d975-4d63-b201-5aee5888ac44',1259,0,1,NOW(),NOW()),
(4917,'L\'ordre dépend uniquement de ma présence physique et de mon autorité directe.',NULL,2,2,'f10a16e49-d975-4d63-b201-5aee5888ac44',1259,0,1,NOW(),NOW()),
(4918,'Les rôles sont clairs via un organigramme et les priorités stratégiques sont respectées.',NULL,3,3,'f10a16e49-d975-4d63-b201-5aee5888ac44',1259,0,1,NOW(),NOW()),
(4919,'L\'organisation est résiliente, fonctionne en autopilote et reste alignée sur ma vision.',NULL,4,4,'f10a16e49-d975-4d63-b201-5aee5888ac44',1259,0,1,NOW(),NOW());




