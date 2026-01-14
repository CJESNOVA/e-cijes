


UPDATE diagnosticmodules
SET etat = 0
WHERE diagnosticmoduletype_id = 1;











INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (23, 'BLOC 1 — POSTURE DU DIRIGEANT & RESPONSABILITÉ PERSONNELLE', '', 1, 1, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(97, 'Prise de décision du dirigeant', 1, 23, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(98, 'Relations personnelles et décisions professionnelles', 2, 23, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(99, 'Règles internes et cadre de fonctionnement', 3, 23, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(100, 'Exemplarité du dirigeant', 4, 23, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(101, 'Rémunération du dirigeant', 5, 23, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Question 97 (8 réponses: pos=1-8, scores=A1=1,A2=1,B1=2,B2=2,C1=3,C2=3,D1=4,D2=4)
('Je préfère attendre un peu avant de décider', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('Je laisse parfois la situation évoluer avant de trancher', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('Je décide, puis j'ajuste ensuite en fonction de ce qui se passe', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('Il m'arrive de modifier une décision après l'avoir annoncée', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('Je prends un temps court pour réfléchir, puis je tranche', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('Je décide une fois que j'ai une vision suffisamment claire', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('Je tranche et je m'appuie sur cette décision dans la durée', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),
('J'ai une manière de décider qui me permet d'aller vite et d'assumer', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 97, 1, 0, NOW(), NOW()),

-- Question 98 (8 réponses)
('J'ai tendance à accéder à la demande pour préserver la relation', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('Je fais parfois passer la relation avant l'intérêt de l'entreprise', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('J'essaie de trouver un arrangement, même s'il n'est pas idéal', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('Je fais des exceptions selon les situations', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('Je pose des limites tout en restant ouvert à la discussion', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('Je traite la demande comme n'importe quelle autre demande professionnelle', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('Les décisions suivent des règles, quelle que soit la personne', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),
('Les relations personnelles n'influencent pas les décisions de l'entreprise', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 98, 1, 0, NOW(), NOW()),

-- Question 99 (8 réponses)
('Les règles existent surtout dans l'esprit, elles s'adaptent selon les cas', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('Le cadre change selon les situations ou les personnes', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('Il y a un cadre, mais je dois souvent intervenir pour le faire respecter', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('Le respect des règles dépend encore beaucoup de ma présence', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('Les règles sont globalement respectées', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('Chacun connaît ce qui est attendu de lui', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('Le cadre fonctionne même quand je ne suis pas là', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),
('L'entreprise avance sans que j'aie à rappeler constamment les règles', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 99, 1, 0, NOW(), NOW()),

-- Question 100 (8 réponses)
('Je fais parfois des exceptions pour moi-même', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('Il m'arrive de ne pas appliquer ce que je demande aux autres', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('J'essaie de montrer l'exemple, mais ce n'est pas toujours constant', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('Mon comportement dépend parfois de la situation ou de la période', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('Je fais attention à appliquer ce que je demande', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('Je m'impose les mêmes règles qu'aux autres', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('Mon comportement sert naturellement de référence', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),
('L'équipe s'appuie sur mon exemple sans rappel particulier', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 100, 1, 0, NOW(), NOW()),

-- Question 101 (8 réponses)
('Je me rémunère surtout en fonction de mes besoins personnels', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('Je me rémunère quand la trésorerie le permet', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('J'ai une idée de rémunération, mais elle varie selon les périodes', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('Ma rémunération s'adapte aux urgences du moment', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('Je me rémunère selon des règles simples liées à l'activité', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('Ma rémunération tient compte des résultats atteints', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('Ma rémunération suit des règles claires et connues', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW()),
('Ma rémunération est cohérente avec la performance de l'entreprise', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 101, 1, 0, NOW(), NOW());


-- =========================================================
-- MODULE : BLOC 2 — INTELLIGENCE ÉMOTIONNELLE & MATURITÉ DÉCISIONNELLE
-- =========================================================
INSERT INTO diagnosticmodules
(id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at)
VALUES
(24, 'BLOC 2 — INTELLIGENCE ÉMOTIONNELLE & MATURITÉ DÉCISIONNELLE', '', 1, 2, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- =========================================================
-- QUESTIONS (titres courts)
-- =========================================================
INSERT INTO diagnosticquestions
(id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at)
VALUES
(102, 'Réaction émotionnelle sous pression', 1, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(103, 'Décision sous émotion forte', 2, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(104, 'Compréhension des problèmes', 3, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(105, 'Analyse avant action', 4, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(106, 'Choix entre plusieurs options', 5, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(107, 'Vitesse et rationalité de décision', 6, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(108, 'Responsabilité et conséquences', 7, 24, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- =========================================================
-- RÉPONSES (textes bruts, 56 lignes)
-- =========================================================
INSERT INTO diagnosticreponses
(titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at)
VALUES
-- Q102 Réaction émotionnelle sous pression
('Je réagis immédiatement, selon ce que je ressens sur le moment', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('Je réponds souvent sous l’effet de la tension', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('Je prends conscience après coup que mes émotions ont influencé ma réaction', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('Il m’arrive de regretter certaines réactions à chaud', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('Je prends un court recul avant de réagir', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('J’essaie de garder le même comportement, même sous pression', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('Je sais reconnaître ce que je ressens et ajuster ma réaction', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),
('Même sous tension, mes réactions restent stables et prévisibles', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 102, 1, 0, NOW(), NOW()),

-- Q103 Décision sous émotion forte
('Je décide souvent dans l’instant, porté par l’émotion', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('Il m’arrive de décider sous colère, peur ou enthousiasme', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('Je décide rapidement, puis je prends du recul après', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('Je réalise parfois trop tard que l’émotion a pesé dans la décision', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('J’essaie de me calmer avant de décider', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('Je diffère brièvement la décision pour y voir plus clair', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('Je sais dissocier ce que je ressens de la décision à prendre', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),
('Mes décisions restent cohérentes, quel que soit mon état émotionnel', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 103, 1, 0, NOW(), NOW()),

-- Q104 Compréhension des problèmes
('Je traite surtout ce qui est visible en priorité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('Je règle le problème tel qu’il se présente', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('J’essaie de comprendre pourquoi ça arrive, sans aller très loin', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('Je teste des solutions jusqu’à ce que ça fonctionne', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('Je cherche ce qui se cache derrière le problème', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('J’essaie d’identifier ce qui déclenche réellement la situation', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('Je prends le temps d’analyser les causes profondes', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),
('Je corrige la cause du problème pour éviter qu’il ne revienne', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 104, 1, 0, NOW(), NOW()),

-- Q105 Analyse avant action
('J’agis rapidement pour régler la situation', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('Je me fie surtout à mon intuition', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('Je réfléchis, mais sans analyser toutes les implications', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('Je prends en compte quelques éléments clés', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('J’examine les impacts principaux avant d’agir', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('Je prends le temps de comprendre les conséquences possibles', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('J’analyse la situation dans son ensemble avant de décider', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),
('Je sais prioriser les informations utiles pour décider efficacement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 105, 1, 0, NOW(), NOW()),

-- Q106 Choix entre plusieurs options
('Je choisis la première solution qui me semble convenir', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('Je tranche rapidement pour avancer', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('Je compare quelques options, sans aller trop loin', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('Je choisis en fonction de ce qui paraît le plus simple', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('J’évalue plusieurs options avant de choisir', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('Je compare les avantages et inconvénients des solutions', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('J’analyse les options selon des critères précis', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),
('Je choisis la solution la plus cohérente à moyen terme', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 106, 1, 0, NOW(), NOW()),

-- Q107 Vitesse et rationalité de décision
('Je décide vite pour ne pas perdre de temps', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Je tranche sans trop réfléchir', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Je décide rapidement, puis j’ajuste si nécessaire', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Je prends une décision même si tout n’est pas clair', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Je prends un court moment pour réfléchir avant de décider', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Je combine rapidité et réflexion', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Je sais décider vite sans perdre en logique', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),
('Mes décisions rapides restent cohérentes et assumées', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 107, 1, 0, NOW(), NOW()),

-- Q108 Responsabilité et conséquences
('J’ai tendance à expliquer le résultat par le contexte ou les autres', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('Je mets en avant les circonstances extérieures', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('J’assume partiellement la décision', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('J’assume surtout quand le résultat est positif', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('J’assume la décision, même quand le résultat est mitigé', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('Je tire des enseignements de mes décisions', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('J’assume pleinement les conséquences de mes décisions', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW()),
('J’utilise les résultats pour améliorer mes décisions futures', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 108, 1, 0, NOW(), NOW());


-- =========================================================
-- MODULE : BLOC 3 — CONFORMITÉ ADMINISTRATIVE, FISCALE & SOCIALE
-- =========================================================
INSERT INTO diagnosticmodules
(id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at)
VALUES
(25, 'BLOC 3 — CONFORMITÉ ADMINISTRATIVE, FISCALE & SOCIALE', '', 1, 3, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- =========================================================
-- QUESTIONS (titres courts)
-- =========================================================
INSERT INTO diagnosticquestions
(id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at)
VALUES
(109, 'Régime juridique et implications', 1, 25, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(110, 'Obligations fiscales', 2, 25, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(111, 'Obligations sociales et sécurité sociale', 3, 25, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(112, 'Lecture des obligations et des risques', 4, 25, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(113, 'Relation avec les experts', 5, 25, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(114, 'Suivi personnel et anticipation', 6, 25, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- =========================================================
-- RÉPONSES (textes bruts, 48 lignes)
-- =========================================================
INSERT INTO diagnosticreponses
(titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at)
VALUES
-- Q109 Régime juridique et implications
('J’ai choisi un statut surtout pour pouvoir démarrer l’activité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('Le statut a été choisi sur recommandation, sans que je m’y attarde', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('J’en connais les grandes lignes, sans trop entrer dans les implications', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('Je sais qu’il y a des avantages, mais les contraintes restent floues', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('Je connais les principales obligations liées à ce statut', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('Je comprends ce que ce statut implique fiscalement et socialement', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('Ce statut a été choisi en fonction de mon activité et de ses enjeux', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),
('Je sais quand et pourquoi ce statut pourrait évoluer', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 109, 1, 0, NOW(), NOW()),

-- Q110 Obligations fiscales
('Je m’en occupe surtout lorsqu’un problème ou un contrôle survient', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('Je laisse le sujet au comptable ou au CGA, sans chercher à comprendre', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('Je sais qu’il existe des obligations régulières, mais je ne suis pas à l’aise avec ces sujets', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('Je connais certains impôts ou taxes, sans avoir une vision d’ensemble', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('Je connais les principales obligations fiscales liées à mon activité', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('Je sais ce qui doit être déclaré et à quel moment, même si je délègue', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('Je garde une visibilité claire sur le calendrier fiscal de l’entreprise', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),
('J’intègre les impacts fiscaux avant de prendre certaines décisions', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 110, 1, 0, NOW(), NOW()),

-- Q111 Obligations sociales et sécurité sociale
('Je m’y intéresse surtout lorsqu’un sujet se présente', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je découvre souvent les obligations au moment où elles apparaissent', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je sais qu’elles existent, mais elles restent difficiles à suivre', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je gère ces sujets au fur et à mesure, selon les situations', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je connais les principales obligations sociales de mon entreprise', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je sais ce qui doit être fait, même si ce n’est pas moi qui l’exécute', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je garde un suivi clair des points sociaux sensibles', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),
('Je mesure les conséquences sociales d’un retard ou d’un manquement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 111, 1, 0, NOW(), NOW()),

-- Q112 Lecture des obligations et des risques
('Il m’est difficile de distinguer ce qui est réellement obligatoire', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('Je découvre souvent les risques après coup', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('Je sais que certaines règles sont importantes, sans toujours savoir lesquelles', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('Je sais que certains choix peuvent poser problème, sans en mesurer la portée', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('Je distingue globalement ce qui est obligatoire et ce qui comporte un risque', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('Je fais attention aux décisions pouvant exposer l’entreprise', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('Je distingue clairement obligations, risques et marges légales', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),
('J’intègre ces éléments avant toute décision importante', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 112, 1, 0, NOW(), NOW()),

-- Q113 Relation avec les experts
('Je lui fais confiance sans chercher à comprendre', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je me contente d’exécuter ce qui m’est demandé', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je pose parfois des questions, sans toujours saisir l’ensemble', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je comprends certaines explications, pas toutes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je pose des questions ciblées pour comprendre l’essentiel', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je peux expliquer les grandes lignes des décisions prises', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je dialogue avec l’expert en comprenant les enjeux', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),
('Je décide en connaissance de cause après conseil', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 113, 1, 0, NOW(), NOW()),

-- Q114 Suivi personnel et anticipation
('Je réagis surtout lorsqu’un retard ou un problème apparaît', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('Je traite les situations au coup par coup', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('J’essaie de suivre, mais sans réelle visibilité globale', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('Je m’appuie beaucoup sur les autres pour ne pas oublier', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('Je garde un œil sur les points critiques', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('Je sais quand agir, même en ayant délégué', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('J’anticipe les échéances importantes', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW()),
('Je sécurise ces sujets pour éviter toute surprise', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 114, 1, 0, NOW(), NOW());


-- =========================================================
-- MODULE : BLOC 4 — INTELLIGENCE FINANCIÈRE & PILOTAGE DE L’ENTREPRISE
-- =========================================================
INSERT INTO diagnosticmodules
(id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at)
VALUES
(26, 'BLOC 4 — INTELLIGENCE FINANCIÈRE & PILOTAGE DE L’ENTREPRISE', '', 1, 4, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- =========================================================
-- QUESTIONS (titres courts)
-- =========================================================
INSERT INTO diagnosticquestions
(id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at)
VALUES
(115, 'Lecture des chiffres clés', 1, 26, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(116, 'Maîtrise des charges et de la trésorerie', 2, 26, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(117, 'Fixation des rémunérations', 3, 26, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(118, 'Suivi performance et attentes', 4, 26, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(119, 'Ajustement des décisions', 5, 26, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- =========================================================
-- RÉPONSES (textes bruts, 40 lignes)
-- =========================================================
INSERT INTO diagnosticreponses
(titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at)
VALUES
-- Q115 Lecture des chiffres clés
('Je regarde surtout le chiffre d’affaires', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('Je sais si l’argent entre ou sort, sans plus', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('J’ai une idée globale des chiffres, sans les suivre régulièrement', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('Je consulte les chiffres quand il y a une difficulté', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('Je connais les principaux chiffres de mon activité', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('Je comprends ce qu’ils disent de la situation de l’entreprise', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('Je suis régulièrement les chiffres clés', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),
('J’utilise ces chiffres pour orienter mes décisions', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 115, 1, 0, NOW(), NOW()),

-- Q116 Maîtrise des charges et de la trésorerie
('Je règle les dépenses quand il y a de l’argent', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('Je gère surtout en fonction des urgences', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('Je fais attention aux dépenses, sans vision précise', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('Je réduis les charges quand la trésorerie baisse', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('Je connais les charges principales de l’entreprise', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('Je fais le lien entre charges, trésorerie et activité', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('Je pilote les charges en fonction des capacités réelles', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),
('J’anticipe les tensions de trésorerie', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 116, 1, 0, NOW(), NOW()),

-- Q117 Fixation des rémunérations
('Les salaires sont fixés selon les besoins ou les habitudes', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('Je paie quand l’entreprise peut', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('Les salaires sont globalement définis, sans critères précis', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('Les montants fluctuent selon la situation du moment', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('Les salaires reposent sur des objectifs simples', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('Les rémunérations sont liées à ce qui est réellement produit', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('Les salaires sont fixés selon des objectifs clairs et mesurables', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),
('La rémunération est alignée sur la performance et les livrables', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 117, 1, 0, NOW(), NOW()),

-- Q118 Suivi performance et attentes
('Je n’ai pas vraiment d’objectifs chiffrés', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('Les attentes sont surtout dans ma tête', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('J’ai des objectifs, mais je les suis peu', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('Je regarde surtout le résultat final', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('Je compare régulièrement ce qui était prévu et ce qui est réalisé', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('Je sais expliquer les écarts', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('Je suis les performances avec des indicateurs clairs', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),
('Les écarts guident mes décisions', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 118, 1, 0, NOW(), NOW()),

-- Q119 Ajustement des décisions
('Je continue comme avant en espérant une amélioration', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('Je compense en travaillant davantage', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('Je fais quelques ajustements ponctuels', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('Je réagis surtout quand la situation devient critique', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('J’analyse ce qui n’a pas fonctionné', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('J’ajuste certaines décisions', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('J’adapte rapidement ma stratégie ou mon organisation', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW()),
('Les chiffres pilotent mes arbitrages', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 119, 1, 0, NOW(), NOW());


-- ============================================================
-- BLOC 5 — ORGANISATION, PLANIFICATION & GOUVERNANCE SIMPLIFIÉE
-- ============================================================

-- MODULE
INSERT INTO diagnosticmodules
(id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at)
VALUES
(27, 'BLOC 5 — ORGANISATION, PLANIFICATION & GOUVERNANCE SIMPLIFIÉE', '', 1, 5, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions
(id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at)
VALUES
(131, 'Planification des activités', 1, 27, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(132, 'Distinction des niveaux de décision', 2, 27, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(133, 'Positionnement du dirigeant dans l’exécution', 3, 27, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(134, 'Délégation et contrôle', 4, 27, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(135, 'Règles internes et gouvernance minimale', 5, 27, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- RÉPONSES
INSERT INTO diagnosticreponses
(titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at)
VALUES

-- Q1 Planification des activités
('Je fonctionne surtout au jour le jour', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('Les priorités changent souvent selon les urgences', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('J’ai une idée des mois à venir, sans plan formalisé', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('Je planifie certaines périodes clés, pas l’ensemble', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('J’ai des objectifs clairs pour l’année', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('Je sais quelles sont les priorités sur les prochains mois', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('Les activités sont planifiées sur au moins 12 mois', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),
('La planification guide réellement les actions quotidiennes', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 131, 1, 0, NOW(), NOW()),

-- Q2 Distinction des niveaux de décision
('Je traite toutes les questions au même niveau', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('Je passe beaucoup de temps sur des détails opérationnels', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('J’essaie de prioriser, sans toujours y parvenir', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('Je distingue certaines priorités, pas toutes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('Je sais différencier l’essentiel du reste', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('Je fais la différence entre décisions importantes et tâches courantes', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('Je distingue clairement stratégique, tactique et opérationnel', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),
('Mon temps est aligné avec mon rôle de dirigeant', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 132, 1, 0, NOW(), NOW()),

-- Q3 Positionnement du dirigeant
('Je fais moi-même l’essentiel des tâches', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('L’entreprise dépend fortement de ma présence', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('Je délègue ponctuellement, selon les situations', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('Je garde la main sur beaucoup de choses', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('Je sais ce que je dois faire moi-même', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('Je délègue certaines tâches clés', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('Mon rôle est centré sur la coordination et les décisions', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),
('L’entreprise peut fonctionner sans moi sur certaines périodes', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 133, 1, 0, NOW(), NOW()),

-- Q4 Délégation et contrôle
('Je délègue peu, par peur de perdre le contrôle', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('Je délègue, mais je reprends souvent la main', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('Je délègue, mais je vérifie constamment', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('Je délègue sans toujours préciser les attentes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('Je précise ce qui est attendu et je vérifie le résultat', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('Je fais confiance tout en gardant un suivi', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('La délégation repose sur des rôles clairs', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),
('Le contrôle se fait par le résultat, pas par la présence', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 134, 1, 0, NOW(), NOW()),

-- Q5 Gouvernance minimale
('Le fonctionnement repose surtout sur les habitudes', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Les règles sont implicites et s’adaptent selon les personnes', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Certaines règles existent, mais elles ne sont pas formalisées', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Les rôles ne sont pas toujours clairs', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Les rôles et responsabilités sont globalement définis', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Il existe un minimum de règles de fonctionnement', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Les rôles, responsabilités et règles sont clairs', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW()),
('Le reporting permet de suivre l’activité sans confusion', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 135, 1, 0, NOW(), NOW());


-- ============================================================
-- BLOC 6 — MANAGEMENT DES PERSONNES & RESSOURCES HUMAINES
-- ============================================================

-- MODULE
INSERT INTO diagnosticmodules
(id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at)
VALUES
(28, 'BLOC 6 — MANAGEMENT DES PERSONNES & RESSOURCES HUMAINES', '', 1, 6, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions
(id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at)
VALUES
(136, 'Recrutement et choix des profils', 1, 28, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(137, 'Écoute et feedback', 2, 28, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(138, 'Fixation des attentes', 3, 28, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(139, 'Suivi de la performance', 4, 28, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(140, 'Fin de collaboration', 5, 28, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- RÉPONSES
INSERT INTO diagnosticreponses
(titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at)
VALUES

-- Q1 Recrutement et choix des profils
('Je recrute surtout quand le besoin devient urgent', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Je recrute selon la disponibilité ou la proximité', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Je recrute en fonction de ce que je pense être nécessaire', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Le profil évolue souvent après le recrutement', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Je recrute en fonction d’un besoin identifié', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Je sais ce que j’attends du poste au moment du recrutement', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Le recrutement répond à un besoin précis et anticipé', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),
('Le profil recruté correspond clairement aux objectifs à atteindre', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 136, 1, 0, NOW(), NOW()),

-- Q2 Écoute et feedback
('J’ai du mal à écouter quand je ne suis pas d’accord', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('Je prends les remarques comme des critiques personnelles', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('J’écoute, mais je me justifie souvent', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('Je prends en compte certains retours, pas tous', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('J’écoute les retours avec attention', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('Je fais la part des choses entre l’émotion et le fond', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('Les feedbacks nourrissent mes décisions managériales', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),
('Je crée un climat où les retours peuvent être exprimés librement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 137, 1, 0, NOW(), NOW()),

-- Q3 Fixation des attentes
('Les tâches sont expliquées oralement, sans cadre précis', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Les attentes évoluent en cours de route', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Les missions sont claires au départ, puis s’ajustent', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Les résultats attendus ne sont pas toujours formalisés', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Les missions sont définies avec des attentes claires', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Les délais et résultats sont compris', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Les missions, résultats et délais sont clairement établis', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),
('Chacun sait ce qui est attendu et comment il sera évalué', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 138, 1, 0, NOW(), NOW()),

-- Q4 Suivi de la performance
('Je m’aperçois des problèmes quand ils sont visibles', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('Je corrige surtout quand ça ne va plus', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('Je fais des points de temps en temps', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('Je réagis en fonction des résultats immédiats', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('Je fais des points réguliers sur l’avancement', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('J’ajuste les consignes si nécessaire', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('Le suivi est structuré et régulier', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),
('Les ajustements sont faits à partir des résultats observés', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 139, 1, 0, NOW(), NOW()),

-- Q5 Fin de collaboration
('Je laisse la situation durer', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('J’évite d’aborder le sujet', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('J’essaie de m’adapter, même si la situation est difficile', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('Je repousse la décision autant que possible', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('J’aborde le sujet de manière directe et posée', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('Je cherche une solution claire', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('Je mets fin à la collaboration de façon professionnelle', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW()),
('La décision est expliquée et assumée, dans le respect des personnes', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 140, 1, 0, NOW(), NOW());


-- MODULE BLOC 7
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (29, 'BLOC 7 — APPROVISIONNEMENTS, FOURNISSEURS & OPÉRATIONS', '', 1, 7, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(249, 'Identification et suivi des fournisseurs', 1, 29, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(250, 'Comparaison prix, qualité et délais', 2, 29, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(251, 'Planification des approvisionnements', 3, 29, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(252, 'Gestion des ruptures et dépendances', 4, 29, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(253, 'Impact des opérations sur les coûts et l’activité', 5, 29, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q249
('Je travaille avec les fournisseurs que je connais ou qui sont disponibles', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('Je contacte les fournisseurs au moment du besoin', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('J’ai quelques fournisseurs habituels, sans suivi particulier', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('Je garde les contacts, sans réelle organisation', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('J’ai identifié mes fournisseurs clés', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('Je sais à qui m’adresser selon le besoin', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('Je dispose d’une base de fournisseurs à jour', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),
('Les fournisseurs sont classés selon leur rôle et fiabilité', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 249, 1, 0, NOW(), NOW()),

-- Q250
('Je choisis surtout en fonction du prix ou de la disponibilité', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Je prends celui qui peut livrer le plus vite', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Je compare parfois les prix', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Je fais attention à la qualité, sans méthode précise', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Je compare prix, qualité et délais', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Je fais des choix cohérents selon le besoin', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Les fournisseurs sont évalués selon plusieurs critères', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),
('Je sélectionne en fonction du meilleur équilibre coût–qualité–délai', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 250, 1, 0, NOW(), NOW()),

-- Q251
('J’achète quand le stock est presque fini', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('Je réagis surtout aux urgences', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('J’anticipe certains achats, pas tous', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('Je m’adapte selon la trésorerie du moment', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('Je planifie les achats selon les besoins prévus', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('Je prends en compte la trésorerie et l’activité', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('Les approvisionnements sont planifiés à l’avance', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),
('J’intègre la saisonnalité et les variations d’activité', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 251, 1, 0, NOW(), NOW()),

-- Q252
('Je gère les ruptures quand elles arrivent', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('Je dépends fortement de certains fournisseurs', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('Je sais qu’il existe des risques, sans plan précis', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('J’essaie de m’adapter quand un fournisseur pose problème', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('J’ai identifié les points sensibles', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('Je prévois des solutions alternatives', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('Les risques de rupture sont anticipés', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),
('Aucun fournisseur critique ne met l’activité en danger', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 252, 1, 0, NOW(), NOW()),

-- Q253
('Je découvre les surcoûts après coup', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('Les variations de coûts sont subies', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('Je fais attention aux coûts sans suivi précis', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('Je réagis lorsque les coûts augmentent trop', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('Je suis les coûts liés à mes activités', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('J’ajuste certains choix pour limiter les dépenses', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('Les décisions d’achat tiennent compte de leur impact global', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW()),
('Les opérations contribuent à la maîtrise durable des coûts', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 253, 1, 0, NOW(), NOW());


-- MODULE BLOC 8
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (30, 'BLOC 8 — ADMINISTRATION, DOCUMENTATION & TRAÇABILITÉ', '', 1, 8, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(254, 'Production des documents administratifs', 1, 30, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(255, 'Suivi des paiements', 2, 30, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(256, 'Recouvrement des créances', 3, 30, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(257, 'Archivage des documents', 4, 30, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(258, 'Traçabilité et accès à l’information', 5, 30, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q254
('Je produis ces documents de manière occasionnelle', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('Je m’appuie surtout sur des messages informels', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('Je produis ces documents quand c’est nécessaire', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('Les formats varient selon les situations', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('Je sais produire les documents requis', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('Les documents sont globalement cohérents et utilisables', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('Les documents sont standardisés', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),
('La production documentaire est fluide et régulière', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 254, 1, 0, NOW(), NOW()),

-- Q255
('Je constate les paiements quand l’argent arrive', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Je ne fais pas de suivi structuré', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Je sais qui me doit de l’argent, sans suivi précis', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Je relance de manière ponctuelle', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Je suis les paiements en cours', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Je sais quelles factures sont réglées ou non', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Le suivi des paiements est organisé', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),
('Les retards sont identifiés et traités rapidement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 255, 1, 0, NOW(), NOW()),

-- Q256
('J’attends que le client paie', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Je relance seulement si le retard devient important', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Je relance de temps en temps', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Je m’adapte selon le client', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Je relance de manière organisée', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Je garde une trace des relances', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Le recouvrement suit une procédure claire', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),
('Les délais de paiement sont maîtrisés', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 256, 1, 0, NOW(), NOW()),

-- Q257
('Les documents sont conservés sans organisation particulière', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('Je cherche souvent quand j’ai besoin d’un document', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('Les documents sont classés partiellement', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('Je retrouve certains documents plus facilement que d’autres', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('Les documents sont classés de manière logique', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('Je retrouve les documents importants sans difficulté majeure', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('L’archivage est structuré et cohérent', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),
('L’information est accessible rapidement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 257, 1, 0, NOW(), NOW()),

-- Q258
('Je dois souvent fouiller ou demander autour de moi', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('Je perds du temps à reconstituer l’information', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('Je retrouve l’information avec un peu d’effort', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('Certaines informations sont difficiles à retracer', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('Je retrouve l’information essentielle', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('Les données importantes sont accessibles', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('Les informations sont tracées et organisées', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW()),
('La traçabilité permet de décider rapidement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 258, 1, 0, NOW(), NOW());


-- MODULE BLOC 9
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (31, 'BLOC 9 — VENTE, PRIX & RELATION CLIENT', '', 1, 9, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(259, 'Capacité personnelle à vendre', 1, 31, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(260, 'Présence terrain et prospection', 2, 31, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(261, 'Canaux de distribution', 3, 31, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(262, 'Fixation des prix', 4, 31, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(263, 'Prise en compte des retours clients', 5, 31, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q259
('Je compte surtout sur le bouche-à-oreille', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je vends quand l’occasion se présente', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je sais vendre, mais sans méthode précise', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je vends surtout lorsque je suis sollicité', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je suis capable de présenter et vendre mon offre', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je sais répondre aux objections des clients', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je maîtrise un discours de vente clair et efficace', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),
('Je peux former quelqu’un d’autre à vendre mon offre', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 259, 1, 0, NOW(), NOW()),

-- Q260
('Je vais rarement vers les clients', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('J’attends surtout que les clients viennent', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('Je prospecte de manière irrégulière', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('Je me déplace surtout quand il y a une opportunité', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('Je vais régulièrement à la rencontre des clients', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('J’échange avec les prospects pour comprendre leurs besoins', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('La prospection fait partie de mon organisation', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),
('Je développe activement de nouveaux clients', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 260, 1, 0, NOW(), NOW()),

-- Q261
('Je vends principalement par un seul canal', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('Je n’ai pas vraiment réfléchi aux canaux', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('J’utilise plusieurs canaux sans stratégie claire', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('Certains canaux fonctionnent, d’autres non', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('Je sais quels canaux apportent des résultats', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('Je choisis mes canaux selon mon activité', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('Les canaux sont maîtrisés et complémentaires', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),
('Je teste et optimise mes canaux de vente', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 261, 1, 0, NOW(), NOW()),

-- Q262
('Je fixe mes prix surtout en fonction du marché', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('Je m’aligne sur ce que font les autres', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('Je tiens compte de mes coûts, sans calcul précis', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('J’ajuste mes prix selon les réactions des clients', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('Mes prix couvrent mes coûts et dégagent une marge', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('Je connais les prix pratiqués par mes concurrents', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('Les prix sont fixés à partir d’analyses réelles', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),
('Les prix soutiennent la rentabilité et le positionnement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 262, 1, 0, NOW(), NOW()),

-- Q263
('Je prends peu en compte les retours', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('Je change rarement mon offre', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('J’écoute certains retours, pas tous', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('J’ajuste ponctuellement', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('Les retours clients sont pris en compte', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('J’améliore certains aspects de l’offre', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('Les retours clients orientent l’évolution de l’offre', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW()),
('L’offre s’adapte continuellement au marché', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 263, 1, 0, NOW(), NOW());


-- MODULE BLOC 10
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (32, 'BLOC 10 — RÉSEAUTAGE & UTILISATION STRATÉGIQUE DU CARNET D’ADRESSES', '', 1, 10, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(264, 'Participation aux événements professionnels', 1, 32, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(265, 'Organisation du réseau', 2, 32, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(266, 'Mobilisation du réseau', 3, 32, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(267, 'Intention et timing', 4, 32, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(268, 'Transformation du réseau en opportunités', 5, 32, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q264
('J’y participe rarement', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('J’y vais surtout quand on m’y invite', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('Je participe à certains événements, sans objectif précis', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('Je choisis des événements selon les opportunités du moment', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('Je participe à des événements utiles pour mon activité', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('Je sélectionne les événements en fonction de mes besoins', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('Les événements sont choisis selon une stratégie claire', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),
('Chaque participation vise un objectif précis', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 264, 1, 0, NOW(), NOW()),

-- Q265
('Les contacts sont dispersés, sans organisation particulière', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('Je me fie surtout à ma mémoire ou à mon téléphone', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('J’ai des contacts clés, sans suivi structuré', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('Je sais globalement qui fait quoi', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('Mes contacts sont identifiés selon leur utilité', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('Je sais à qui m’adresser selon le besoin', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('Le réseau est organisé et tenu à jour', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),
('Les contacts sont classés par type d’opportunité', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 265, 1, 0, NOW(), NOW()),

-- Q266
('Je ne sais pas toujours qui contacter', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('Je contacte au hasard', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('J’ai une idée des personnes à contacter', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('Je teste plusieurs contacts', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('Je contacte les personnes pertinentes', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('Je choisis le mode de contact adapté', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('Je mobilise rapidement les bons contacts', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),
('La mobilisation du réseau est efficace et ciblée', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 266, 1, 0, NOW(), NOW()),

-- Q267
('Je contacte surtout quand j’ai un besoin urgent', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('Les échanges sont ponctuels', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('J’essaie de garder le contact de temps en temps', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('Je relance certains contacts selon les opportunités', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('J’entretiens des relations régulières', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('Les échanges ne sont pas uniquement opportunistes', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('Les relations sont entretenues dans la durée', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),
('Le réseau est activé au bon moment, avec une intention claire', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 267, 1, 0, NOW(), NOW()),

-- Q268
('Les échanges débouchent rarement sur des opportunités', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Je n’ai pas de retombées concrètes', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Certaines opportunités apparaissent de temps en temps', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Les résultats restent aléatoires', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Le réseau m’apporte des informations ou des contacts utiles', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Certaines opportunités sont concrétisées', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Le réseau génère régulièrement des opportunités', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW()),
('Les relations débouchent sur des marchés ou ressources concrètes', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 268, 1, 0, NOW(), NOW());


-- MODULE BLOC 11
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (33, 'BLOC 11 — AUTO-ÉVALUATION & REMISE EN QUESTION', '', 1, 11, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(269, 'Reconnaissance des erreurs', 1, 33, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(270, 'Capacité d’ajustement', 2, 33, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(271, 'Demande de conseil', 3, 33, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(272, 'Apprentissages tirés de l’expérience', 4, 33, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q269
('J’explique surtout le résultat par le contexte ou les circonstances', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('Je passe rapidement à autre chose', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('Je reconnais partiellement ma part de responsabilité', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('Je reconnais l’erreur, mais j’ai du mal à en parler', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('J’admets l’erreur et j’analyse ce qui n’a pas fonctionné', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('Je reconnais ma responsabilité sans me justifier longuement', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('Je reconnais clairement l’erreur et l’explique factuellement', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),
('Cette reconnaissance permet d’ajuster rapidement la suite', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 269, 1, 0, NOW(), NOW()),

-- Q270
('Je maintiens la décision initiale', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('J’attends que la situation se règle d’elle-même', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('J’ajuste seulement quand le problème devient visible', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('Je fais des ajustements tardifs', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('J’adapte la décision en tenant compte des nouveaux faits', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('Je réévalue la situation avant de poursuivre', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('L’ajustement fait partie de ma manière de décider', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),
('Les décisions évoluent naturellement avec les faits', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 270, 1, 0, NOW(), NOW()),

-- Q271
('Je préfère gérer seul', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('Je demande conseil seulement en dernier recours', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('Je demande conseil à des personnes de confiance', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('J’écoute les avis, sans toujours les intégrer', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('Je sollicite des avis pour éclairer mes décisions', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('Le conseil m’aide à prendre du recul', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('Demander conseil fait partie de mon fonctionnement', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),
('Les avis externes améliorent mes décisions', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 271, 1, 0, NOW(), NOW()),

-- Q272
('Je poursuis sans vraiment analyser', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('Les expériences s’enchaînent sans formalisation', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('Je tire quelques enseignements, sans méthode', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('Certains apprentissages restent informels', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('Je prends le temps de comprendre ce qui a fonctionné ou non', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('J’essaie de reproduire ce qui marche', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('Les enseignements sont intégrés dans mes pratiques', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW()),
('Chaque expérience renforce ma manière de diriger', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 272, 1, 0, NOW(), NOW());


-- MODULE BLOC 12
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (34, 'BLOC 12 — GESTION DES RISQUES OPÉRATIONNELS', '', 1, 12, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(273, 'Dépendances critiques', 1, 34, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(274, 'Anticipation des imprévus majeurs', 2, 34, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(275, 'Existence d’alternatives', 3, 34, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(276, 'Réaction face à la pression', 4, 34, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q273
('L’activité dépend fortement d’une ou deux personnes', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('Beaucoup de choses reposent sur moi ou sur un de mes collaborateurs', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('Je sais qu’il existe des dépendances importantes', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('Certaines personnes ou ressources sont difficiles à remplacer', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('J’ai identifié les dépendances sensibles', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('Je sais ce qui poserait problème en cas d’indisponibilité', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('Les dépendances critiques sont connues et suivies', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),
('L’activité ne repose pas sur une seule personne ou ressource', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 273, 1, 0, NOW(), NOW()),

-- Q274
('Je gère quand cela arrive', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('Je m’adapte au moment venu', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('J’y pense, sans préparation précise', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('J’anticipe certaines situations, pas toutes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('J’ai réfléchi aux principaux imprévus possibles', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('Je sais quelles situations pourraient bloquer l’activité', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('Les imprévus majeurs sont anticipés', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),
('Des réponses simples sont prévues à l’avance', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 274, 1, 0, NOW(), NOW()),

-- Q275
('L’activité ralentit ou s’arrête', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Je cherche une solution dans l’urgence', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Je trouve une solution après quelques ajustements', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Les alternatives sont improvisées', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Des solutions de remplacement sont identifiées', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Je sais vers qui ou quoi me tourner', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Des alternatives simples existent pour les points critiques', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),
('Les plans B permettent de continuer l’activité sans rupture', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 275, 1, 0, NOW(), NOW()),

-- Q276
('Je suis pris de court', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('La situation me déstabilise fortement', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('Je mets un peu de temps à réagir', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('Je réagis, mais dans la tension', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('Je reste concentré sur l’essentiel', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('Je prends des décisions pour stabiliser la situation', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('La réaction est rapide et structurée', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW()),
('L’activité est sécurisée malgré l’imprévu', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 276, 1, 0, NOW(), NOW());


-- MODULE BLOC 13
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (35, 'BLOC 13 — CAPACITÉ D’APPRENTISSAGE & ADAPTATION', '', 1, 13, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(277, 'Apprentissage par l’expérience', 1, 35, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(278, 'Amélioration continue des pratiques', 2, 35, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(279, 'Formalisation de ce qui fonctionne', 3, 35, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(280, 'Répétition ou correction des erreurs', 4, 35, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q277
('J’enchaîne les situations sans vraiment analyser', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('Les expériences s’accumulent, sans changement notable', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('J’en tire quelques leçons, sans toujours les appliquer', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('Certaines erreurs se reproduisent', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('J’analyse ce qui a fonctionné ou non', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('J’essaie d’améliorer ma manière de faire', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('Chaque expérience nourrit des ajustements concrets', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),
('L’expérience terrain renforce ma capacité à décider', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 277, 1, 0, NOW(), NOW()),

-- Q278
('Les pratiques évoluent peu', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('Je fais souvent comme avant', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('J’améliore certains points, sans continuité', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('Les changements sont ponctuels', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('J’améliore progressivement mes pratiques', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('J’ajuste ce qui ne fonctionne pas', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('L’amélioration est régulière et intentionnelle', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),
('Les pratiques évoluent avec les besoins de l’entreprise', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 278, 1, 0, NOW(), NOW()),

-- Q279
('Je continue sans formaliser', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('Tout reste dans ma tête', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('Je l’explique oralement à l’équipe', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('La formalisation reste limitée', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('Je note les éléments importants', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('Certaines pratiques sont documentées simplement', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('Ce qui fonctionne est formalisé et partagé', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),
('La formalisation permet de reproduire les résultats', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 279, 1, 0, NOW(), NOW()),

-- Q280
('Les mêmes problèmes reviennent', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('Les erreurs se répètent sous différentes formes', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('Je corrige temporairement', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('Les solutions ne durent pas toujours', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('Je cherche à corriger la cause du problème', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('Les erreurs sont moins fréquentes', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('Les erreurs structurelles sont corrigées durablement', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW()),
('L’entreprise apprend de ses erreurs', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 280, 1, 0, NOW(), NOW());


-- MODULE BLOC 14
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (36, 'BLOC 14 — CONSCIENCE DU RÔLE DU DIRIGEANT', '', 1, 14, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(281, 'Évolution du rôle', 1, 36, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(282, 'Choix entre faire, déléguer ou arrêter', 2, 36, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(283, 'Rapport à l’indispensabilité', 3, 36, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q281
('Mon rôle est resté globalement le même', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('Je continue à faire ce que j’ai toujours fait', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('Je sens que mon rôle devrait évoluer, sans savoir comment', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('J’ai commencé à changer certaines habitudes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('J’ai identifié ce qui doit changer dans mon rôle', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('J’adapte progressivement ma manière de travailler', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('Mon rôle a clairement évolué avec la croissance', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),
('Je me concentre de plus en plus sur le pilotage', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 281, 1, 0, NOW(), NOW()),

-- Q282
('Je fais encore l’essentiel moi-même', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('J’ai du mal à lâcher certaines tâches', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('Je délègue certaines choses, sans logique globale', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('J’hésite souvent entre faire et déléguer', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('Je sais ce que je dois garder ou déléguer', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('Certaines tâches ont été clairement transférées', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('Les tâches sont réparties selon leur valeur ajoutée', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),
('Je ne conserve que les tâches liées au pilotage', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 282, 1, 0, NOW(), NOW()),

-- Q283
('L’activité dépend fortement de ma présence', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('Beaucoup de décisions passent encore par moi', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('Je reste un point central, même si je délègue', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('Certaines choses avancent sans moi, pas toutes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('L’équipe peut fonctionner sans moi sur certaines tâches', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('Je ne suis pas impliqué dans chaque décision', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('L’entreprise fonctionne même en mon absence', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW()),
('Mon rôle est clairement distinct de l’exécution', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 283, 1, 0, NOW(), NOW());


-- MODULE BLOC 15
INSERT INTO diagnosticmodules (id, titre, description, diagnosticmoduletype_id, position, etat, spotlight, langue_id, created_at, updated_at) 
VALUES (37, 'BLOC 15 — ÉQUILIBRE VIE PRIVÉE – VIE PROFESSIONNELLE & CHARGE MENTALE', '', 1, 15, 1, 0, 'f9a16e49-d975-4d63-b201-5aee5888ac44', NOW(), NOW());

-- QUESTIONS
INSERT INTO diagnosticquestions (id, titre, position, diagnosticmodule_id, diagnosticquestiontype_id, langue_id, obligatoire, etat, spotlight, created_at, updated_at) VALUES
(284, 'Organisation globale du temps', 1, 37, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(285, 'Charge mentale et fatigue', 2, 37, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(286, 'Gestion des charges personnelles et domestiques (si applicable)', 3, 37, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(287, 'Pressions personnelles et continuité de l’entreprise', 4, 37, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW()),
(288, 'Capacité à se ressourcer', 5, 37, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 1, 1, 0, NOW(), NOW());

-- REPONSES
INSERT INTO diagnosticreponses (titre, position, score, langue_id, diagnosticquestion_id, etat, spotlight, created_at, updated_at) VALUES
-- Q284
('Le travail prend le dessus sur le reste', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('Les autres obligations passent après l’entreprise', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('J’essaie de concilier, sans réelle organisation', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('L’équilibre varie selon les périodes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('Je répartis mon temps entre les différentes sphères', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('J’anticipe certaines périodes chargées', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('Mon temps est organisé de manière cohérente', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),
('L’équilibre est globalement maîtrisé', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 284, 1, 0, NOW(), NOW()),

-- Q285
('Je me sens souvent débordé', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('La fatigue s’accumule', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('Je gère, mais avec tension', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('Les périodes de surcharge sont fréquentes', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('J’identifie quand la charge devient trop lourde', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('J’ajuste mon rythme quand nécessaire', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('La charge mentale est maîtrisée', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),
('Je préviens activement l’épuisement', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 285, 1, 0, NOW(), NOW()),

-- Q286
('Elles reposent principalement sur moi', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('Elles interfèrent souvent avec mon travail', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('Je m’organise au mieux, sans cadre clair', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('La répartition varie selon les situations', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('J’ai trouvé un équilibre fonctionnel', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('Certaines responsabilités sont déléguées ou partagées', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('La répartition est claire et assumée', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),
('Les charges personnelles n’affectent pas l’entreprise', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 286, 1, 0, NOW(), NOW()),

-- Q287
('L’entreprise est directement impactée et il faut du temps pour rétablir la situation', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('Mon niveau d’implication professionnelle baisse sensiblement', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('J’essaie de limiter l’impact, sans toujours y parvenir', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('L’activité est affectée, mais de manière temporaire', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('Je parviens à faire la part des choses sans délaisser l’entreprise', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('L’activité continue globalement à fonctionner', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('Des dispositions sont prévues pour protéger l’entreprise de ma vie personnelle', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),
('La continuité de l’activité est assurée sans désorganisation', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 287, 1, 0, NOW(), NOW()),

-- Q288
('Je consacre très peu de temps à moi-même', 1, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('Le repos passe souvent après les priorités professionnelles', 2, 1, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('Je me repose quand l’occasion se présente', 3, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('Les temps de récupération dépendent surtout de la période', 4, 2, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('J’ai identifié des moments pour souffler et prendre du recul', 5, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('Je fais attention à ne pas dépasser mes limites trop longtemps', 6, 3, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('Les temps de récupération sont intégrés à mon organisation', 7, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW()),
('Je gère volontairement mon énergie pour tenir dans la durée', 8, 4, 'f9a16e49-d975-4d63-b201-5aee5888ac44', 288, 1, 0, NOW(), NOW());
