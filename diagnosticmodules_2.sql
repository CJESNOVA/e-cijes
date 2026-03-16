INSERT INTO `diagnosticmodules` (`id`,`titre`,`position`,`description`,`vignette`,`diagnosticmoduletype_id`,`diagnosticmodulecategory_id`,`entrepriseprofil_id`,`parent`,`langue_id`,`pays_id`,`spotlight`,`etat`,`created_at`,`updated_at`,`est_bloquant`) VALUES (115,'Fonction 1 : Posture stratégique du dirigeant (Cap – Anticipation – Alignement)',1,'Cochez la réponse qui correspond le plus à votre réalité actuelle.',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO `diagnosticquestions` (`id`,`titre`,`position`,`diagnosticmodule_id`,`diagnosticquestiontype_id`,`diagnosticquestioncategorie_id`,`langue_id`,`obligatoire`,`parent`,`spotlight`,`etat`,`created_at`,`updated_at`) VALUES
(850,'1. Projection stratégique Si je vous demande : “Qu’essaie réellement de construire votre entreprise dans les 3 à 5 prochaines années ?” Vous répondez plutôt :',1,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(851,'2. Capacité à renoncer Imaginez qu’un client vous propose un contrat qui rapporte de l’argent rapidement…  mais ce travail ne correspond pas vraiment à ce que vous voulez construire pour votre entreprise. Concrètement, que faites-vous ?',2,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(852,'3. Allocation des ressources Quand vous devez utiliser votre temps, votre énergie ou votre argent,  comment décidez-vous où les mettre ?',3,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(853,'4. Rapport au marché Quand les choses changent progressivement autour de vous  (nouveaux concurrents, clients plus exigeants, hausse des prix, nouvelles taxes…) Dans la réalité, que faites-vous ?',4,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(854,'5. Rapport au risque Avant qu’un problème n’arrive vraiment  (perte d’un gros client, pénalité administrative, difficulté de trésorerie, départ d’un collaborateur clé…) Dans votre manière de diriger, vous êtes plutôt :',5,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(855,'6. Transmission du cap Si vous demandez à un collaborateur ou associé :  “Qu’est-ce que notre entreprise cherche vraiment à construire ?” Il répondrait plutôt :',6,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(856,'7. Rapport aux indicateurs Pour savoir si votre entreprise avance vraiment, vous regardez surtout :',7,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(857,'8. Capacité d’ajustement stratégique Quand les résultats montrent que votre activité perd en performance :',8,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(858,'9. Discipline stratégique (temps de recul) Dans votre semaine réelle, le temps consacré uniquement à réfléchir à l’avenir de l’entreprise est :',9,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(859,'10. Solidité du système Si vous vous absentez 30 jours sans intervenir :',10,115,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO `diagnosticreponses` (`id`,`titre`,`explication`,`position`,`score`,`langue_id`,`diagnosticquestion_id`,`spotlight`,`etat`,`created_at`,`updated_at`) VALUES
(3850,'Je parle surtout de mes activités actuelles ou de mes problèmes du moment.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',850,0,1,NOW(),NOW()),
(3851,'J’ai une ambition en tête, mais elle évolue selon les opportunités.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',850,0,1,NOW(),NOW()),
(3852,'Je décris une direction claire (marché, taille, positionnement), même si tout n’est pas formalisé.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',850,0,1,NOW(),NOW()),
(3853,'Je formule un cap précis, chiffré et cohérent, avec une trajectoire définie.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',850,0,1,NOW(),NOW()),
(3854,'J’accepte. L’argent passe avant le reste.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',851,0,1,NOW(),NOW()),
(3855,'J’hésite, mais si cela aide la trésorerie, je prends quand même.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',851,0,1,NOW(),NOW()),
(3856,'Je réfléchis à l’impact sur mon organisation et sur la direction que je veux donner à mon entreprise.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',851,0,1,NOW(),NOW()),
(3857,'Je refuse si cela m’éloigne de ma vision, même si l’argent est intéressant.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',851,0,1,NOW(),NOW()),
(3858,'Je traite d’abord les urgences du moment.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',852,0,1,NOW(),NOW()),
(3859,'Je choisis surtout ce qui peut rapporter de l’argent rapidement.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',852,0,1,NOW(),NOW()),
(3860,'Je privilégie ce qui renforce mon activité principale et la rend plus solide.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',852,0,1,NOW(),NOW()),
(3861,'Je me demande toujours : “Est-ce que cela me rapproche vraiment de ce que je veux construire dans 3 à 5 ans ?”',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',852,0,1,NOW(),NOW()),
(3862,'Je m’en rends compte seulement quand mes ventes ou mes marges baissent.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',853,0,1,NOW(),NOW()),
(3863,'Je réagis quand l’impact devient vraiment visible sur mon activité.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',853,0,1,NOW(),NOW()),
(3864,'Je reste attentif aux signaux (clients, prix, concurrents, réglementation) et j’ajuste progressivement.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',853,0,1,NOW(),NOW()),
(3865,'J’observe les tendances à l’avance et j’adapte mon offre ou mon organisation avant d’être sous pression.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',853,0,1,NOW(),NOW()),
(3866,'Je préfère ne pas y penser tant que tout semble aller bien.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',854,0,1,NOW(),NOW()),
(3867,'Je sais que cela peut arriver, mais je n’ai pas vraiment anticipé comment réagir.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',854,0,1,NOW(),NOW()),
(3868,'J’ai identifié les risques principaux et je reste vigilant.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',854,0,1,NOW(),NOW()),
(3869,'J’ai identifié les risques majeurs et préparé des solutions concrètes pour ne pas être pris au dépourvu.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',854,0,1,NOW(),NOW()),
(3870,'Il décrirait surtout ce qu’on fait au quotidien.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',855,0,1,NOW(),NOW()),
(3871,'Il parlerait d’objectifs à court terme (ventes, production, livraisons).',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',855,0,1,NOW(),NOW()),
(3872,'Il expliquerait la direction générale et les objectifs de l’année.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',855,0,1,NOW(),NOW()),
(3873,'Il saurait expliquer la vision à moyen terme et dire en quoi son travail y contribue.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',855,0,1,NOW(),NOW()),
(3874,'S’il reste de l’argent en caisse ou si les ventes du mois sont correctes.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',856,0,1,NOW(),NOW()),
(3875,'Le chiffre d’affaires et quelques chiffres de base.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',856,0,1,NOW(),NOW()),
(3876,'Les marges, la rentabilité, la satisfaction client et l’évolution régulière.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',856,0,1,NOW(),NOW()),
(3877,'Quelques indicateurs clés liés à votre vision (croissance, positionnement, rentabilité, part de marché) que vous analysez chaque mois pour décider.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',856,0,1,NOW(),NOW()),
(3878,'Je continue en espérant que la situation va s’améliorer.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',857,0,1,NOW(),NOW()),
(3879,'Je change quand je n’ai plus vraiment le choix.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',857,0,1,NOW(),NOW()),
(3880,'J’analyse les causes et j’ajuste progressivement.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',857,0,1,NOW(),NOW()),
(3881,'J’utilise les signaux faibles pour ajuster avant que la situation ne devienne critique.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',857,0,1,NOW(),NOW()),
(3882,'Aucun. Je suis absorbé par l’opérationnel.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',858,0,1,NOW(),NOW()),
(3883,'Occasionnel, quand l’activité ralentit ou qu’un problème survient.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',858,0,1,NOW(),NOW()),
(3884,'J’ai un moment régulier pour prendre du recul.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',858,0,1,NOW(),NOW()),
(3885,'J’ai des revues stratégiques planifiées (mensuelles ou trimestrielles) avec décisions formalisées.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',858,0,1,NOW(),NOW()),
(3886,'L’activité devient instable ou s’arrête.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',859,0,1,NOW(),NOW()),
(3887,'L’activité continue, mais aucune décision importante n’est prise.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',859,0,1,NOW(),NOW()),
(3888,'L’activité fonctionne, mais la progression ralentit.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',859,0,1,NOW(),NOW()),
(3889,'L’entreprise continue d’avancer selon un cap clair que l’équipe connaît.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',859,0,1,NOW(),NOW());



INSERT INTO `diagnosticmodules` (`id`,`titre`,`position`,`description`,`vignette`,`diagnosticmoduletype_id`,`diagnosticmodulecategory_id`,`entrepriseprofil_id`,`parent`,`langue_id`,`pays_id`,`spotlight`,`etat`,`created_at`,`updated_at`,`est_bloquant`) VALUES (116,'Fonction 2 : Influence relationnelle & Mobilisation stratégique (Clarté – Conviction – Alliances – Impact)',2,NULL,NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO `diagnosticquestions` (`id`,`titre`,`position`,`diagnosticmodule_id`,`diagnosticquestiontype_id`,`diagnosticquestioncategorie_id`,`langue_id`,`obligatoire`,`parent`,`spotlight`,`etat`,`created_at`,`updated_at`) VALUES
(860,'1. Quand vous donnez une consigne importante (Ex : nouvelle organisation, objectif à atteindre, projet à lancer) Dans la réalité, comment cela se passe le plus souvent ?',1,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(861,'2. Quand quelqu’un n’est pas d’accord avec vous (Un collaborateur, un associé, un partenaire) Votre réaction spontanée est plutôt :',2,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(862,'3. Quand vous devez convaincre quelqu’un d’important (Banque, partenaire, fournisseur, investisseur…) Comment vous préparez-vous vraiment ?',3,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(863,'4. Quand vous annoncez un changement à votre équipe (Nouvelle règle, nouvelle méthode, nouvelle organisation…) Dans la pratique :',4,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(864,'5. Circulation de l’information Dans votre entreprise, comment l’information importante circule-t-elle vraiment ?',5,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(865,'6. Votre manière de construire votre réseau Quand vous pensez à votre réseau professionnel (clients, partenaires, autorités, pairs…) :',6,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(866,'7. Pourquoi votre équipe vous suit-elle réellement ? Si vous observiez votre équipe sans parler, vous constateriez qu’elle agit surtout :',7,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(867,'8. Comment gérez-vous les tensions informelles ? Quand un malaise, une rumeur ou une incompréhension commence à circuler :',8,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(868,'9. Quand vous devez défendre un projet important (face à un partenaire, une banque, un investisseur, une autorité…) Votre manière de convaincre ressemble plutôt à :',9,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(869,'10. Quand vous prenez la parole devant un groupe (équipe, partenaires, public, clients…) Après votre intervention, il se passe généralement quoi ?',10,116,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO `diagnosticreponses` (`id`,`titre`,`explication`,`position`,`score`,`langue_id`,`diagnosticquestion_id`,`spotlight`,`etat`,`created_at`,`updated_at`) VALUES
(3890,'Je dis ce qu’il faut faire. Si ce n’est pas bien fait, je corrige après.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',860,0,1,NOW(),NOW()),
(3891,'J’explique ce que j’attends, mais je ne vérifie pas vraiment si la personne a bien compris.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',860,0,1,NOW(),NOW()),
(3892,'Je demande à la personne de reformuler pour être sûr que c’est clair.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',860,0,1,NOW(),NOW()),
(3893,'J’adapte mon explication selon la personne, je vérifie qu’elle a compris et je précise clairement le résultat attendu.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',860,0,1,NOW(),NOW()),
(3894,'Je mets fin à la discussion, c’est moi qui décide.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',861,0,1,NOW(),NOW()),
(3895,'J’écoute, mais je garde surtout mon point de vue.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',861,0,1,NOW(),NOW()),
(3896,'J’écoute vraiment pour comprendre ses arguments avant de décider.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',861,0,1,NOW(),NOW()),
(3897,'Je cherche à transformer le désaccord en une meilleure décision pour tout le monde.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',861,0,1,NOW(),NOW()),
(3898,'J’y vais comme ça, j’explique mon besoin et j’improvise.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',862,0,1,NOW(),NOW()),
(3899,'Je prépare quelques arguments, mais sans vraie stratégie.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',862,0,1,NOW(),NOW()),
(3900,'Je prépare mes arguments, mes chiffres et je clarifie mes limites avant la discussion.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',862,0,1,NOW(),NOW()),
(3901,'Je prépare mes arguments en pensant aussi aux intérêts de l’autre, et je cherche un accord gagnant pour les deux.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',862,0,1,NOW(),NOW()),
(3902,'J’annonce la décision. Ils doivent s’adapter.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',863,0,1,NOW(),NOW()),
(3903,'J’explique rapidement, mais je ne gère pas vraiment les réactions.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',863,0,1,NOW(),NOW()),
(3904,'J’explique le pourquoi du changement et les bénéfices attendus.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',863,0,1,NOW(),NOW()),
(3905,'J’explique le contexte, j’écoute les inquiétudes et j’implique l’équipe pour faciliter l’adhésion.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',863,0,1,NOW(),NOW()),
(3906,'L’information passe surtout par moi. Les autres savent seulement ce qui les concerne directement.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',864,0,1,NOW(),NOW()),
(3907,'L’information circule, mais de manière informelle, selon les discussions du moment.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',864,0,1,NOW(),NOW()),
(3908,'Les informations importantes sont partagées régulièrement (réunions, messages clairs, points d’équipe).',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',864,0,1,NOW(),NOW()),
(3909,'L’information est structurée, claire et accessible. Chacun sait où trouver ce dont il a besoin pour bien décider et agir.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',864,0,1,NOW(),NOW()),
(3910,'Je travaille surtout seul(e). Je sollicite les autres uniquement en cas d’urgence.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',865,0,1,NOW(),NOW()),
(3911,'J’appelle certains contacts quand j’ai un problème ou une opportunité ponctuelle.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',865,0,1,NOW(),NOW()),
(3912,'J’entretiens régulièrement mes relations, même sans besoin immédiat.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',865,0,1,NOW(),NOW()),
(3913,'Je développe volontairement des alliances utiles à ma vision et je cultive des relations stratégiques sur le long terme.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',865,0,1,NOW(),NOW()),
(3914,'Parce que vous contrôlez et vérifiez régulièrement.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',866,0,1,NOW(),NOW()),
(3915,'Parce qu’elle veut éviter les reproches ou les tensions.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',866,0,1,NOW(),NOW()),
(3916,'Parce qu’elle comprend la direction et voit l’utilité de son travail.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',866,0,1,NOW(),NOW()),
(3917,'Parce qu’elle adhère au projet, prend des initiatives et défend la vision même en votre absence.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',866,0,1,NOW(),NOW()),
(3918,'Vous laissez faire, en pensant que cela va se calmer seul.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',867,0,1,NOW(),NOW()),
(3919,'Vous intervenez quand le problème devient visible ou perturbe le travail.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',867,0,1,NOW(),NOW()),
(3920,'Vous clarifiez rapidement les faits et donnez un cadre d’échange.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',867,0,1,NOW(),NOW()),
(3921,'Vous identifiez très tôt les signaux faibles, vous ouvrez le dialogue et transformez la tension en amélioration collective.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',867,0,1,NOW(),NOW()),
(3922,'Je présente mon besoin et j’espère que cela suffira.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',868,0,1,NOW(),NOW()),
(3923,'Je défends mon idée avec énergie, mais sans stratégie claire.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',868,0,1,NOW(),NOW()),
(3924,'Je prépare mes arguments en fonction des intérêts de mon interlocuteur.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',868,0,1,NOW(),NOW()),
(3925,'Je construis mon discours autour des enjeux de l’autre, j’anticipe ses objections et je propose une solution alignée avec ses priorités.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',868,0,1,NOW(),NOW()),
(3926,'Les gens écoutent, mais peu de choses changent.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',869,0,1,NOW(),NOW()),
(3927,'Ils comprennent le message, mais l’engagement reste faible.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',869,0,1,NOW(),NOW()),
(3928,'Ils repartent avec une direction claire et des actions à mener.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',869,0,1,NOW(),NOW()),
(3929,'Ils repartent motivés, alignés et prêts à agir concrètement.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',869,0,1,NOW(),NOW());






INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(117,'FONCTION 3 : Leadership d’équipe & Développement des talents',1,'Capacité à structurer, encadrer et faire grandir les collaborateurs pour bâtir une organisation performante et autonome.',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(900,'Quand vous confiez une mission à un collaborateur, que faites-vous concrètement ?',1,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(901,'Les rôles et responsabilités dans votre équipe sont-ils clairement définis ?',2,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(902,'Concernant les décisions importantes (prix, recrutement, investissement…), comment cela se passe le plus souvent ?',3,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(903,'Quand un collaborateur progresse (plus autonome, propose des idées…), comment réagissez-vous concrètement ?',4,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(904,'Si vous êtes absent une semaine, que se passe-t-il ?',5,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(905,'Comment travaillent vos collaborateurs entre eux ?',6,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(906,'Qu’est-ce qui motive principalement votre équipe aujourd’hui ?',7,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(907,'Quand un conflit éclate entre deux collaborateurs, que faites-vous ?',8,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(908,'Quand un bon résultat est obtenu, que faites-vous concrètement ?',9,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(909,'Si on vous observe pendant une semaine de travail, vous êtes surtout :',10,117,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4200,'Je lui donne la tâche à exécuter, sans autre explication.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',900,0,1,NOW(),NOW()),
(4201,'Je précise clairement le résultat attendu et le délai.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',900,0,1,NOW(),NOW()),
(4202,'J’explique le résultat attendu, le délai et l’impact de cette mission sur l’activité actuelle.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',900,0,1,NOW(),NOW()),
(4203,'Je relie la mission au cap stratégique et je vérifie qu’il comprend sa marge de décision et les critères de réussite.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',900,0,1,NOW(),NOW()),

(4204,'Non, chacun fait un peu de tout selon les urgences.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',901,0,1,NOW(),NOW()),
(4205,'Chacun connaît sa mission principale, mais les limites restent floues.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',901,0,1,NOW(),NOW()),
(4206,'Les responsabilités sont écrites et chacun sait ce qu’il doit livrer.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',901,0,1,NOW(),NOW()),
(4207,'Chaque membre connaît son périmètre de décision et agit sans devoir vous consulter en permanence.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',901,0,1,NOW(),NOW()),

(4208,'Je décide seul(e) et j’informe ensuite l’équipe.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',902,0,1,NOW(),NOW()),
(4209,'Je demande l’avis des autres, mais la décision est déjà presque prise.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',902,0,1,NOW(),NOW()),
(4210,'J’écoute réellement les avis avant de trancher.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',902,0,1,NOW(),NOW()),
(4211,'Je délègue certaines décisions quand c’est possible et j’aide les autres à apprendre à décider par eux-mêmes.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',902,0,1,NOW(),NOW()),

(4212,'Je considère que c’est normal, il est payé pour ça.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',903,0,1,NOW(),NOW()),
(4213,'Je le félicite quand j’y pense.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',903,0,1,NOW(),NOW()),
(4214,'Je souligne ses progrès et je lui donne plus de responsabilités.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',903,0,1,NOW(),NOW()),
(4215,'Je cherche volontairement à le faire monter en compétence, même si cela signifie qu’il peut un jour me dépasser sur certains sujets.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',903,0,1,NOW(),NOW()),

(4216,'Les décisions sont bloquées car personne n’ose agir.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',904,0,1,NOW(),NOW()),
(4217,'Les décisions mineures avancent, les autres attendent.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',904,0,1,NOW(),NOW()),
(4218,'L’équipe avance avec prudence.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',904,0,1,NOW(),NOW()),
(4219,'L’équipe agit avec confiance car vous avez développé leur capacité de jugement.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',904,0,1,NOW(),NOW()),

(4220,'Chacun travaille de son côté.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',905,0,1,NOW(),NOW()),
(4221,'Ils coopèrent seulement quand c’est obligatoire.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',905,0,1,NOW(),NOW()),
(4222,'Ils s’entraident spontanément pour atteindre les objectifs.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',905,0,1,NOW(),NOW()),
(4223,'Le partage de compétences est organisé et valorisé.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',905,0,1,NOW(),NOW()),

(4224,'La peur de l’erreur ou du reproche.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',906,0,1,NOW(),NOW()),
(4225,'Le salaire et la sécurité.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',906,0,1,NOW(),NOW()),
(4226,'La reconnaissance et le respect.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',906,0,1,NOW(),NOW()),
(4227,'L’adhésion au projet et à la vision commune.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',906,0,1,NOW(),NOW()),

(4228,'J’évite le sujet ou j’impose une solution rapide.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',907,0,1,NOW(),NOW()),
(4229,'J’écoute brièvement puis je tranche.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',907,0,1,NOW(),NOW()),
(4230,'J’écoute les deux parties avant de décider.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',907,0,1,NOW(),NOW()),
(4231,'J’aide les deux personnes à comprendre le mécanisme du conflit et à progresser dans leur manière de collaborer.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',907,0,1,NOW(),NOW()),

(4232,'Je parle surtout de ce que j’ai fait pour que ça marche.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',908,0,1,NOW(),NOW()),
(4233,'Je remercie l’équipe rapidement, puis on passe à autre chose.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',908,0,1,NOW(),NOW()),
(4234,'Je cite clairement les personnes qui ont contribué et leur rôle précis.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',908,0,1,NOW(),NOW()),
(4235,'Je mets en valeur les talents de chacun, j’explique pourquoi leur contribution est importante et je renforce leur confiance pour les prochaines étapes.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',908,0,1,NOW(),NOW()),

(4236,'Celui/celle qui fait à la place des autres pour éviter les erreurs.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',909,0,1,NOW(),NOW()),
(4237,'Celui/celle qui contrôle, corrige et vérifie en permanence.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',909,0,1,NOW(),NOW()),
(4238,'Celui/celle qui explique, cadre et aide les autres à progresser.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',909,0,1,NOW(),NOW()),
(4239,'Celui/celle qui structure, délègue et développe une équipe capable d’avancer même en son absence.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',909,0,1,NOW(),NOW());





INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(118,'FONCTION 4 : Diagnostic – Maîtrise émotionnelle & Gestion des tensions',1,'Calme – Stabilité – Maturité relationnelle',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(910,'Quand une mauvaise nouvelle tombe (Perte d’argent, client en colère, erreur grave…)',1,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(911,'Quand on vous contredit : un collaborateur dit que votre décision n’est pas bonne.',2,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(912,'Quand un projet échoue (un marché important est perdu).',3,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(913,'Quand l’environnement devient instable (baisse des ventes, règles qui changent…).',4,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(914,'Votre image sous pression : votre équipe dirait que vous êtes',5,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(915,'Face à un client agressif (Un client élève la voix devant d’autres personnes)',6,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(916,'Lors d’un conflit interne (Deux collaborateurs sont en désaccord et la tension monte)',7,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(917,'Sous forte pression collective (Échéance proche, objectif non atteint, stress général)',8,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(918,'Comment les tensions sont-elles traitées dans votre entreprise ?',9,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(919,'L’image que vous projetez sous pression (Ex : perte d’un gros client, retard critique, tension financière)',10,118,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4240,'Je m’emporte immédiatement.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',910,0,1,NOW(),NOW()),
(4241,'Je me contrôle, mais ma tension se voit.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',910,0,1,NOW(),NOW()),
(4242,'Je demande calmement ce qui s’est passé.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',910,0,1,NOW(),NOW()),
(4243,'Je garde mon calme et je rassure les autres avant d’agir.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',910,0,1,NOW(),NOW()),

(4244,'Je mets fin à la discussion.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',911,0,1,NOW(),NOW()),
(4245,'J’écoute, mais je reste fermé intérieurement.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',911,0,1,NOW(),NOW()),
(4246,'Je demande des arguments précis.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',911,0,1,NOW(),NOW()),
(4247,'J’accueille la contradiction pour améliorer la décision.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',911,0,1,NOW(),NOW()),

(4248,'Je suis déstabilisé toute la journée.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',912,0,1,NOW(),NOW()),
(4249,'Je passe vite à autre chose sans analyser.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',912,0,1,NOW(),NOW()),
(4250,'Je prends du recul et je cherche la cause.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',912,0,1,NOW(),NOW()),
(4251,'J’identifie la cause et je corrige le système.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',912,0,1,NOW(),NOW()),

(4252,'Je change souvent de direction sous la pression.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',913,0,1,NOW(),NOW()),
(4253,'Je garde le cap, mais mon stress est visible.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',913,0,1,NOW(),NOW()),
(4254,'Je stabilise mes émotions et clarifie les priorités.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',913,0,1,NOW(),NOW()),
(4255,'Je reste stable, rassurant et transforme l’incertitude en plan d’action.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',913,0,1,NOW(),NOW()),

(4256,'Imprévisible ou nerveux.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',914,0,1,NOW(),NOW()),
(4257,'Sérieux mais souvent tendu.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',914,0,1,NOW(),NOW()),
(4258,'Calme et cohérent.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',914,0,1,NOW(),NOW()),
(4259,'Stable et rassurant, même dans la tempête.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',914,0,1,NOW(),NOW()),

(4260,'Je réagis immédiatement pour me défendre.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',915,0,1,NOW(),NOW()),
(4261,'Je coupe court à l’échange pour éviter que ça dégénère.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',915,0,1,NOW(),NOW()),
(4262,'Je reste calme, j’écoute et je propose une solution concrète.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',915,0,1,NOW(),NOW()),
(4263,'Je calme la situation, je protège l’image de l’entreprise et je transforme l’incident en opportunité de confiance.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',915,0,1,NOW(),NOW()),

(4264,'J’évite d’intervenir, ils doivent se débrouiller.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',916,0,1,NOW(),NOW()),
(4265,'Je tranche rapidement pour que ça s’arrête.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',916,0,1,NOW(),NOW()),
(4266,'J’écoute les deux versions avant de décider.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',916,0,1,NOW(),NOW()),
(4267,'J’utilise le conflit pour clarifier les règles et améliorer l’organisation.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',916,0,1,NOW(),NOW()),

(4268,'Mon stress se voit et l’équipe le ressent.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',917,0,1,NOW(),NOW()),
(4269,'Je reste ferme, mais l’ambiance devient tendue.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',917,0,1,NOW(),NOW()),
(4270,'Je donne des priorités claires et je rassure l’équipe.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',917,0,1,NOW(),NOW()),
(4271,'Je maintiens la sérénité tout en mobilisant l’équipe vers un plan précis.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',917,0,1,NOW(),NOW()),

(4272,'“Les problèmes restent non dits et finissent par ressortir de façon explosive.”',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',918,0,1,NOW(),NOW()),
(4273,'“On attend qu’un conflit éclate pour en parler.”',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',918,0,1,NOW(),NOW()),
(4274,'“Les désaccords sont exprimés ouvertement, mais il faut parfois un déclencheur.”',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',918,0,1,NOW(),NOW()),
(4275,'“Les tensions sont abordées rapidement, avec une volonté de trouver une solution qui améliore l’organisation.”',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',918,0,1,NOW(),NOW()),

(4276,'“On ne sait jamais comment il va réagir, l’ambiance devient tendue.”',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',919,0,1,NOW(),NOW()),
(4277,'“Il tient le cap, mais on sent fortement son stress.”',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',919,0,1,NOW(),NOW()),
(4278,'“Il reste calme et donne des consignes claires.”',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',919,0,1,NOW(),NOW()),
(4279,'“Il garde son calme, clarifie les priorités et protège l’équipe du stress inutile.”',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',919,0,1,NOW(),NOW());






INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(119,'FONCTION 5 : Décision & Discernement analytique',1,'Analyser – Comparer – Évaluer le risque – Arbitrer – Assumer',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(920,'Votre premier réflexe face à une décision importante (Investir, recruter, changer de fournisseur, refuser un client…)',1,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(921,'Quand vous manquez d’informations claires',2,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(922,'Quand une décision que VOUS avez prise se révèle être une erreur',3,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(923,'Face à des avis contradictoires',4,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(924,'Votre rapport au risque',5,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(925,'Après avoir pris une décision importante',6,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(926,'Capacité à trancher et décider',7,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(927,'Quand plusieurs options sont possibles',8,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(928,'En situation d’urgence (forte pression, délai court)',9,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(929,'Votre posture réelle face aux décisions importantes',10,119,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4280,'Je décide rapidement pour avancer, même sans avoir tout clarifié.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',920,0,1,NOW(),NOW()),
(4281,'Je demande quelques avis, mais je tranche surtout à l’intuition.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',920,0,1,NOW(),NOW()),
(4282,'Je prends un temps court pour réfléchir avant de décider.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',920,0,1,NOW(),NOW()),
(4283,'Je clarifie les enjeux, les conséquences possibles et je décide en cohérence avec mon cap.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',920,0,1,NOW(),NOW()),

(4284,'Je bloque et je reporte la décision.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',921,0,1,NOW(),NOW()),
(4285,'Je décide vite pour sortir de l’incertitude.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',921,0,1,NOW(),NOW()),
(4286,'Je décide avec les éléments disponibles en acceptant un risque mesuré.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',921,0,1,NOW(),NOW()),
(4287,'Je pose des hypothèses claires, j’identifie le risque principal et j’avance avec un plan de secours.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',921,0,1,NOW(),NOW()),

(4288,'J’explique surtout que le contexte était difficile ou que les autres n’ont pas bien exécuté.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',922,0,1,NOW(),NOW()),
(4289,'Je reconnais que je me suis trompé(e), mais je préfère passer rapidement à autre chose.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',922,0,1,NOW(),NOW()),
(4290,'Je prends le temps d’analyser précisément où mon raisonnement ou mes informations étaient insuffisants.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',922,0,1,NOW(),NOW()),
(4291,'J’analyse mon processus de décision (hypothèses, critères, signaux ignorés) et j’ajuste ma méthode pour ne pas reproduire la même erreur.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',922,0,1,NOW(),NOW()),

(4292,'Je rappelle que c’est moi qui décide et je tranche rapidement.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',923,0,1,NOW(),NOW()),
(4293,'J’écoute les avis, mais je choisis surtout celui qui me rassure ou confirme ce que je pensais déjà.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',923,0,1,NOW(),NOW()),
(4294,'J’écoute réellement les arguments, je pose des questions, puis je décide en fonction des faits.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',923,0,1,NOW(),NOW()),
(4295,'Je prends le temps d’évaluer les conséquences à court et long terme, je tranche clairement et j’explique ma décision, même si elle ne fait pas l’unanimité.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',923,0,1,NOW(),NOW()),

(4296,'Je décide sans analyser les risques. Je verrai bien ce qui se passe.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',924,0,1,NOW(),NOW()),
(4297,'Je pense rapidement aux conséquences possibles, surtout financières, puis j’avance.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',924,0,1,NOW(),NOW()),
(4298,'Je prends le temps d’identifier les principaux risques (argent, image, équipe, délais…) avant d’agir.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',924,0,1,NOW(),NOW()),
(4299,'J’identifie les risques majeurs, j’évalue leur impact possible et je prévois à l’avance quoi faire si l’un d’eux survient.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',924,0,1,NOW(),NOW()),

(4300,'Je passe à autre chose. Si personne ne se plaint, je considère que c’est bon.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',925,0,1,NOW(),NOW()),
(4301,'Je regarde rapidement si “ça semble marcher”, sans suivi précis.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',925,0,1,NOW(),NOW()),
(4302,'Je vérifie les résultats concrets par rapport à ce que j’attendais (délais, coûts, performance).',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',925,0,1,NOW(),NOW()),
(4303,'J’analyse les résultats, les écarts éventuels, et j’améliore ma façon de décider pour la prochaine fois.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',925,0,1,NOW(),NOW()),

(4304,'Souvent retardées par hésitation ou peur de se tromper.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',926,0,1,NOW(),NOW()),
(4305,'Prises rapidement sous pression, mais parfois sans analyse suffisante.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',926,0,1,NOW(),NOW()),
(4306,'Réfléchies, structurées et assumées, même si elles sont difficiles.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',926,0,1,NOW(),NOW()),
(4307,'Réfléchies, alignées avec la stratégie long terme et assumées fermement, même sous pression ou en cas d’opposition.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',926,0,1,NOW(),NOW()),

(4308,'Je choisis l’option la plus simple ou la plus rapide pour avancer.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',927,0,1,NOW(),NOW()),
(4309,'Je prends celle qui me semble la moins risquée à court terme, même si le gain est limité.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',927,0,1,NOW(),NOW()),
(4310,'Je compare clairement les avantages, les inconvénients et les impacts de chaque option avant de trancher.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',927,0,1,NOW(),NOW()),
(4311,'J’évalue les impacts financiers, humains, opérationnels et stratégiques avant d’arbitrer.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',927,0,1,NOW(),NOW()),

(4312,'Mettre en avant les circonstances ou les erreurs des autres pour expliquer ce qui s’est passé.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',928,0,1,NOW(),NOW()),
(4313,'Justifier longuement votre décision pour montrer que vous aviez de bonnes raisons.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',928,0,1,NOW(),NOW()),
(4314,'Assumer clairement votre décision et ses conséquences.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',928,0,1,NOW(),NOW()),
(4315,'Assumer publiquement, analyser ce qui doit évoluer et transformer l’erreur en apprentissage pour l’équipe.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',928,0,1,NOW(),NOW()),

(4316,'Je décide surtout sous pression, pour soulager la situation ou éviter que le problème ne dure.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',929,0,1,NOW(),NOW()),
(4317,'Je réfléchis un minimum, mais je me laisse souvent influencer par l’urgence, l’émotion ou l’avis dominant.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',929,0,1,NOW(),NOW()),
(4318,'Je prends le temps de comparer les options et de mesurer les conséquences avant de trancher.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',929,0,1,NOW(),NOW()),
(4319,'Je décide avec méthode et lucidité, en vérifiant la cohérence avec ma vision, les risques assumés et l’impact à moyen/long terme.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',929,0,1,NOW(),NOW());






INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(120,'FONCTION 6 : Adaptabilité & Conduite du changement',1,'Anticipation – Transition – Ajustement – Pilotage',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(930,'Quand l’environnement change (ex : nouvelle taxe, hausse du prix des matières premières, clients qui achètent moins, nouvelle règle administrative…)',1,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(931,'Quand votre manière de faire ne donne plus les résultats habituels',2,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(932,'Quand vous devez changer une façon de travailler',3,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(933,'Quand votre équipe résiste à un changement',4,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(934,'Quand vous devez changer de direction',5,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(935,'Après avoir lancé un changement important',6,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(936,'Face à un changement imprévu',7,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(937,'Quand vous annoncez un changement à votre équipe',8,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(938,'Quand vous décidez de changer quelque chose dans l’entreprise',9,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(939,'Votre posture dominante face au changement',10,120,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4320,'Je m’en rends compte quand ma trésorerie baisse ou que les ventes chutent déjà.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',930,0,1,NOW(),NOW()),
(4321,'Je vois que ça change, mais j’attends de sentir un vrai impact avant d’agir.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',930,0,1,NOW(),NOW()),
(4322,'Je surveille régulièrement les prix, les comportements clients et les décisions publiques pour ajuster progressivement.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',930,0,1,NOW(),NOW()),
(4323,'J’essaie de prévoir ce qui peut changer (coûts, concurrence, réglementation) et j’adapte mon organisation avant que cela ne me pénalise.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',930,0,1,NOW(),NOW()),

(4324,'Je continue pareil en espérant que le marché va repartir.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',931,0,1,NOW(),NOW()),
(4325,'Je change quelque chose rapidement pour “voir si ça marche”.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',931,0,1,NOW(),NOW()),
(4326,'Je prends le temps d’analyser ce qui bloque avant de modifier.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',931,0,1,NOW(),NOW()),
(4327,'Je teste un ajustement précis, j’observe les résultats, puis je décide de l’étendre ou non.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',931,0,1,NOW(),NOW()),

(4328,'Je préfère attendre, parce que changer risque de créer du désordre.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',932,0,1,NOW(),NOW()),
(4329,'J’annonce la nouvelle règle et je laisse chacun s’adapter comme il peut.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',932,0,1,NOW(),NOW()),
(4330,'J’explique pourquoi on change et j’accompagne les premières étapes.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',932,0,1,NOW(),NOW()),
(4331,'Je prépare le changement à l’avance : j’explique le contexte, je précise les étapes, je prévois un suivi et j’aide l’équipe à s’approprier la nouvelle méthode.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',932,0,1,NOW(),NOW()),

(4332,'Laisser tomber pour éviter les tensions.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',933,0,1,NOW(),NOW()),
(4333,'Maintenir la décision sans vraiment traiter les objections.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',933,0,1,NOW(),NOW()),
(4334,'Écouter les freins et expliquer à nouveau le sens du changement.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',933,0,1,NOW(),NOW()),
(4335,'Chercher les vraies peurs ou blocages, ajuster si nécessaire et aider l’équipe à dépasser la résistance durablement.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',933,0,1,NOW(),NOW()),

(4336,'Je change seulement quand la situation devient critique.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',934,0,1,NOW(),NOW()),
(4337,'Je modifie quelques éléments sans revoir l’ensemble du fonctionnement.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',934,0,1,NOW(),NOW()),
(4338,'Je redéfinis les priorités et j’ajuste les actions principales.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',934,0,1,NOW(),NOW()),
(4339,'Je prends le temps de clarifier le nouveau cap, d’expliquer le pourquoi, de fixer des étapes précises et d’aligner l’équipe avant d’avancer.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',934,0,1,NOW(),NOW()),

(4340,'Je passe rapidement à autre chose.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',935,0,1,NOW(),NOW()),
(4341,'Je regarde si “ça semble fonctionner”, sans suivi structuré.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',935,0,1,NOW(),NOW()),
(4342,'Je vérifie si les résultats correspondent à ce qui était prévu.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',935,0,1,NOW(),NOW()),
(4343,'J’analyse les écarts, j’écoute les retours du terrain et j’ajuste la méthode pour améliorer durablement.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',935,0,1,NOW(),NOW()),

(4344,'Je suis déstabilisé(e) et j’attends de voir comment ça évolue.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',936,0,1,NOW(),NOW()),
(4345,'Je m’adapte dans l’urgence pour limiter les dégâts.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',936,0,1,NOW(),NOW()),
(4346,'J’analyse l’impact réel et j’ajuste progressivement mon organisation.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',936,0,1,NOW(),NOW()),
(4347,'Je transforme la contrainte en opportunité et j’en profite pour améliorer mon positionnement ou mon offre.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',936,0,1,NOW(),NOW()),

(4348,'J’annonce la décision et chacun doit s’adapter.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',937,0,1,NOW(),NOW()),
(4349,'J’explique rapidement, mais sans gérer les réactions ou inquiétudes.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',937,0,1,NOW(),NOW()),
(4350,'J’explique le pourquoi, les impacts concrets et ce que chacun doit faire.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',937,0,1,NOW(),NOW()),
(4351,'J’expose le contexte, j’écoute les réactions, je clarifie les étapes et j’accompagne l’équipe jusqu’à l’adoption réelle.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',937,0,1,NOW(),NOW()),

(4352,'Le changement est annoncé, mais chacun l’interprète à sa manière.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',938,0,1,NOW(),NOW()),
(4353,'On commence avec motivation, puis l’élan retombe faute de suivi clair.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',938,0,1,NOW(),NOW()),
(4354,'Il y a des étapes définies, des responsables identifiés et un suivi régulier.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',938,0,1,NOW(),NOW()),
(4355,'Le changement est préparé, suivi, ajusté et intégré durablement dans les habitudes.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',938,0,1,NOW(),NOW()),

(4356,'Celui/celle qui subit et essaie de limiter les dégâts.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',939,0,1,NOW(),NOW()),
(4357,'Celui/celle qui s’adapte quand la pression devient forte.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',939,0,1,NOW(),NOW()),
(4358,'Celui/celle qui ajuste avec méthode et calme.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',939,0,1,NOW(),NOW()),
(4359,'Celui/celle qui anticipe, pilote la transition et transforme le mouvement en avantage stratégique.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',939,0,1,NOW(),NOW());





INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(121,'FONCTION 7 : Orientation client & Création de valeur',1,'Comprendre le marché – Adapter l’offre – Se différencier – Fidéliser',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(940,'Pourquoi, selon vous, vos clients vous choisissent réellement ?',1,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(941,'Comment comprenez-vous réellement les besoins de vos clients ?',2,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(942,'Quand un client important part et ne revient plus',3,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(943,'Comment décidez-vous du prix de vos produits ou services ?',4,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(944,'Qu’est-ce qui vous rend réellement différent sur votre marché ?',5,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(945,'Après la vente, que se passe-t-il réellement ?',6,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(946,'Quand un client exprime une insatisfaction',7,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(947,'Quand un concurrent baisse fortement ses prix',8,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(948,'Comment suivez-vous l’évolution de votre marché ?',9,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(949,'Quand vous développez une nouvelle offre',10,121,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4360,'“Parce que c’est moins cher” ou “c’est juste à côté.”',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',940,0,1,NOW(),NOW()),
(4361,'“Parce qu’on se connaît depuis longtemps.”',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',940,0,1,NOW(),NOW()),
(4362,'“Parce que son produit ou service répond bien à mon besoin.”',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',940,0,1,NOW(),NOW()),
(4363,'“Parce qu’il m’apporte une valeur spécifique que je ne trouve pas ailleurs.”',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',940,0,1,NOW(),NOW()),

(4364,'Je propose ce que je sais faire et je cherche des clients pour ça.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',941,0,1,NOW(),NOW()),
(4365,'J’écoute surtout quand il y a un problème ou une plainte.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',941,0,1,NOW(),NOW()),
(4366,'Je pose régulièrement des questions pour mieux comprendre leurs attentes.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',941,0,1,NOW(),NOW()),
(4367,'J’observe leurs comportements, j’analyse leurs habitudes d’achat et j’ajuste mon offre avant même qu’ils formulent une demande.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',941,0,1,NOW(),NOW()),

(4368,'“Il est parti pour moins cher ailleurs.”',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',942,0,1,NOW(),NOW()),
(4369,'Je le laisse partir sans chercher à comprendre.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',942,0,1,NOW(),NOW()),
(4370,'Je cherche à connaître la raison précise de son départ.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',942,0,1,NOW(),NOW()),
(4371,'J’analyse les causes, j’ajuste si nécessaire mon offre ou mon service et je mets en place des actions pour éviter que cela se reproduise.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',942,0,1,NOW(),NOW()),

(4372,'Je regarde les prix des concurrents et je m’aligne.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',943,0,1,NOW(),NOW()),
(4373,'Je fixe un prix qui me permet de vendre vite, même si la marge est faible.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',943,0,1,NOW(),NOW()),
(4374,'Je calcule précisément mes coûts et j’ajoute une marge cohérente.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',943,0,1,NOW(),NOW()),
(4375,'Je fixe mes prix en fonction de la valeur perçue par le client et du positionnement stratégique que je veux occuper sur le marché.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',943,0,1,NOW(),NOW()),

(4376,'Je propose la même chose que les autres.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',944,0,1,NOW(),NOW()),
(4377,'J’essaie d’être “un peu meilleur” (plus rapide, plus poli, un peu moins cher).',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',944,0,1,NOW(),NOW()),
(4378,'J’ai un élément distinctif clair (qualité, spécialisation, expertise, service…).',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',944,0,1,NOW(),NOW()),
(4379,'Mon positionnement est clair et assumé : je sais exactement pour qui je suis fait et pour qui je ne suis pas fait.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',944,0,1,NOW(),NOW()),

(4380,'Je passe au client suivant.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',945,0,1,NOW(),NOW()),
(4381,'Je réponds s’il me recontacte, mais je ne fais pas de suivi particulier.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',945,0,1,NOW(),NOW()),
(4382,'Je prends des nouvelles des clients importants pour vérifier leur satisfaction.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',945,0,1,NOW(),NOW()),
(4383,'J’ai une méthode claire de suivi : appel, message, feedback, proposition complémentaire ou demande de recommandation.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',945,0,1,NOW(),NOW()),

(4384,'Vous défendre immédiatement.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',946,0,1,NOW(),NOW()),
(4385,'Corriger le problème sans chercher plus loin.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',946,0,1,NOW(),NOW()),
(4386,'Écouter attentivement et comprendre la cause.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',946,0,1,NOW(),NOW()),
(4387,'Utiliser la remarque pour améliorer votre offre ou votre organisation.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',946,0,1,NOW(),NOW()),

(4388,'Je baisse mes prix pour ne pas perdre mes clients.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',947,0,1,NOW(),NOW()),
(4389,'Je fais des promotions pour rester dans la course.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',947,0,1,NOW(),NOW()),
(4390,'Je renforce mes points forts (qualité, service, fiabilité).',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',947,0,1,NOW(),NOW()),
(4391,'Je clarifie ma valeur, je protège mon positionnement et je refuse d’entrer dans une guerre des prix qui détruit la marge.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',947,0,1,NOW(),NOW()),

(4392,'Je me concentre uniquement sur mes ventes du jour.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',948,0,1,NOW(),NOW()),
(4393,'Je regarde parfois ce que font les concurrents.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',948,0,1,NOW(),NOW()),
(4394,'Je surveille régulièrement les comportements clients et les tendances.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',948,0,1,NOW(),NOW()),
(4395,'J’analyse les évolutions du marché pour orienter mes décisions d’investissement et d’offre.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',948,0,1,NOW(),NOW()),

(4396,'Je produis d’abord, puis je cherche à vendre.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',949,0,1,NOW(),NOW()),
(4397,'Je vends ce que je sais déjà produire.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',949,0,1,NOW(),NOW()),
(4398,'J’adapte ce que je produis à ce que le marché demande.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',949,0,1,NOW(),NOW()),
(4399,'J’identifie une opportunité claire (besoin mal servi, niche précise, problème spécifique), puis je conçois une offre parfaitement alignée avec cette opportunité.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',949,0,1,NOW(),NOW());





INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(122,'FONCTION 8 : Initiative et Responsabilité entrepreneuriale',1,'Agir – Anticiper – Assumer – Transformer',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(950,'Quand un problème apparaît dans votre entreprise',1,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(951,'Quand il n’y a pas d’urgence immédiate',2,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(952,'Face à une opportunité imprévue',3,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(953,'Quand un objectif important n’est pas atteint',4,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(954,'Quand vous devez travailler sur un sujet important pour l’avenir',5,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(955,'Quand un sujet important pour faire grandir l’entreprise reste en attente',6,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(956,'Quand les résultats ne sont pas au rendez-vous',7,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(957,'Face à une difficulté nouvelle et imprévue',8,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(958,'Quand un risque commence à apparaître',9,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(959,'Face aux contraintes fortes',10,122,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4400,'J’attends de voir si le problème va se régler tout seul.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',950,0,1,NOW(),NOW()),
(4401,'J’interviens seulement quand la situation devient vraiment critique.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',950,0,1,NOW(),NOW()),
(4402,'J’agis dès que j’identifie le problème et je mets en place une correction.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',950,0,1,NOW(),NOW()),
(4403,'J’analyse la cause réelle, je corrige et j’installe une règle ou un système pour éviter que cela se reproduise.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',950,0,1,NOW(),NOW()),

(4404,'Je reste sur la routine quotidienne.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',951,0,1,NOW(),NOW()),
(4405,'Je fais ce qui est prévu, sans chercher à améliorer.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',951,0,1,NOW(),NOW()),
(4406,'J’identifie des points à améliorer et je lance des petites actions correctives.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',951,0,1,NOW(),NOW()),
(4407,'Je cherche activement des opportunités de croissance ou d’optimisation même sans pression extérieure.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',951,0,1,NOW(),NOW()),

(4408,'Je préfère ne pas prendre le risque.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',952,0,1,NOW(),NOW()),
(4409,'J’y vais seulement si cela ne change rien à mon organisation.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',952,0,1,NOW(),NOW()),
(4410,'J’évalue rapidement la faisabilité et je décide en fonction des ressources.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',952,0,1,NOW(),NOW()),
(4411,'J’analyse le potentiel, j’adapte mon organisation si nécessaire et je structure l’opportunité pour en tirer un avantage durable.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',952,0,1,NOW(),NOW()),

(4412,'Je dis que le marché est difficile, que les clients n’ont pas d’argent ou que l’équipe n’a pas bien travaillé.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',953,0,1,NOW(),NOW()),
(4413,'Je reconnais ma part de responsabilité, mais je justifie longuement les circonstances.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',953,0,1,NOW(),NOW()),
(4414,'J’assume la responsabilité et j’analyse précisément ce qui n’a pas fonctionné.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',953,0,1,NOW(),NOW()),
(4415,'J’assume publiquement, j’identifie les causes structurelles et j’ajuste immédiatement la stratégie.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',953,0,1,NOW(),NOW()),

(4416,'Je n’y consacre aucun temps réel. Les urgences remplissent tout mon agenda.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',954,0,1,NOW(),NOW()),
(4417,'Je prévois d’y travailler, mais dès qu’un imprévu arrive, je reporte sans nouvelle date claire.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',954,0,1,NOW(),NOW()),
(4418,'Je bloque un créneau précis dans mon agenda et je le maintiens sauf cas exceptionnel.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',954,0,1,NOW(),NOW()),
(4419,'Ce travail stratégique est non négociable : je protège ce temps, je délègue l’opérationnel et j’avance concrètement sur des livrables définis.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',954,0,1,NOW(),NOW()),

(4420,'Le projet reste à l’état d’idée. Rien n’est daté ni réellement engagé.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',955,0,1,NOW(),NOW()),
(4421,'Je lance le chantier, mais il s’arrête dès que la pression opérationnelle augmente.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',955,0,1,NOW(),NOW()),
(4422,'Je fixe une échéance claire et je m’organise pour livrer le résultat attendu.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',955,0,1,NOW(),NOW()),
(4423,'Je transforme le chantier en plan d’action structuré (étapes, responsables, délais) et je vérifie que le changement est effectivement appliqué dans la durée.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',955,0,1,NOW(),NOW()),

(4424,'Je mets surtout en cause les circonstances, les clients ou l’équipe.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',956,0,1,NOW(),NOW()),
(4425,'Je reconnais une part de responsabilité, mais j’explique surtout les contraintes rencontrées.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',956,0,1,NOW(),NOW()),
(4426,'J’analyse objectivement mes décisions, mes choix et mes priorités.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',956,0,1,NOW(),NOW()),
(4427,'Je considère que le résultat est d’abord lié à mes arbitrages ; j’identifie ce que je dois changer dans ma manière de décider, d’organiser ou de piloter.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',956,0,1,NOW(),NOW()),

(4428,'Je subis le choc et j’attends que la situation se stabilise.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',957,0,1,NOW(),NOW()),
(4429,'Je cherche une solution immédiate pour limiter les dégâts.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',957,0,1,NOW(),NOW()),
(4430,'J’analyse la situation et j’ajuste mon organisation pour m’adapter.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',957,0,1,NOW(),NOW()),
(4431,'J’utilise la contrainte pour renforcer mon modèle (diversification, amélioration de processus, repositionnement stratégique).',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',957,0,1,NOW(),NOW()),

(4432,'N’agissez que lorsque le problème devient grave ou visible par tous.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',958,0,1,NOW(),NOW()),
(4433,'Réagissez quand les premiers impacts financiers apparaissent.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',958,0,1,NOW(),NOW()),
(4434,'Repérez les signaux d’alerte et prenez des mesures correctives avant la crise.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',958,0,1,NOW(),NOW()),
(4435,'Identifiez régulièrement les risques majeurs de votre activité et mettez en place des actions préventives concrètes (diversification, réserve, process, sécurisation contractuelle).',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',958,0,1,NOW(),NOW()),

(4436,'Je subis et j’essaie de limiter les dégâts.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',959,0,1,NOW(),NOW()),
(4437,'Je m’adapte pour survivre.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',959,0,1,NOW(),NOW()),
(4438,'Je prends des décisions pour stabiliser et rebondir.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',959,0,1,NOW(),NOW()),
(4439,'Je transforme la contrainte en opportunité stratégique (nouvelle offre, repositionnement, nouvelle cible, amélioration structurelle).',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',959,0,1,NOW(),NOW());





INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(123,'FONCTION 9 : Créativité & Innovation pragmatique',1,'Solution – Adaptation – Expérimentation – Amélioration continue',NULL,1,1,NULL,0,'f9a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(960,'Quand un même problème revient plusieurs fois',1,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(961,'Face à une contrainte locale forte',2,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(962,'Quand vous avez une nouvelle idée',3,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(963,'Un projet vous tient à cœur, mais l’argent manque',4,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(964,'Tout fonctionne "correctement" dans l’entreprise',5,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(965,'Votre rapport aux habitudes (Processus)',6,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(966,'Si la caisse est vide et que vous n\'avez plus personne pour vous aider',7,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(967,'Votre réaction quand le travail devient trop lourd',8,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(968,'Votre réaction quand une nouvelle idée ne marche pas',9,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(969,'Votre réaction face à ce qui fonctionne déjà bien dans votre entreprise',10,123,1,0,'f9a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4440,'Je règle chaque situation au cas par cas, sans changer ma façon de travailler.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',960,0,1,NOW(),NOW()),
(4441,'Je fais un rappel à l’ordre ou une petite correction, mais le problème revient.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',960,0,1,NOW(),NOW()),
(4442,'Je modifie une règle, une méthode ou un outil pour réduire la répétition.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',960,0,1,NOW(),NOW()),
(4443,'J’identifie la cause racine et je restructure le système pour supprimer durablement le problème.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',960,0,1,NOW(),NOW()),

(4444,'Je considère que le contexte empêche ma croissance.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',961,0,1,NOW(),NOW()),
(4445,'Je réduis mes marges ou fais des promotions pour survivre.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',961,0,1,NOW(),NOW()),
(4446,'J’adapte mon offre (nouveau format, nouvelle cible, service ajusté).',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',961,0,1,NOW(),NOW()),
(4447,'Je conçois une solution innovante adaptée au contexte (paiement fractionné, offre segmentée, distribution alternative, partenariat stratégique).',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',961,0,1,NOW(),NOW()),

(4448,'Je lance immédiatement sans test.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',962,0,1,NOW(),NOW()),
(4449,'Je teste sans critères précis.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',962,0,1,NOW(),NOW()),
(4450,'Je teste sur un petit périmètre avant d’élargir.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',962,0,1,NOW(),NOW()),
(4451,'Je définis un objectif clair, je teste, j’analyse et j’ajuste avant déploiement.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',962,0,1,NOW(),NOW()),

(4452,'J\'abandonne, c\'est impossible.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',963,0,1,NOW(),NOW()),
(4453,'J\'attends des jours meilleurs pour le lancer.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',963,0,1,NOW(),NOW()),
(4454,'Je commence petit avec ce que j\'ai sous la main.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',963,0,1,NOW(),NOW()),
(4455,'Je change de méthode pour lancer une version simplifiée qui fonctionne tout de suite.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',963,0,1,NOW(),NOW()),

(4456,'On ne touche à rien tant qu\'il n\'y a pas de problème.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',964,0,1,NOW(),NOW()),
(4457,'On change les choses uniquement si les clients se plaignent.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',964,0,1,NOW(),NOW()),
(4458,'On cherche régulièrement des petites pistes d\'amélioration.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',964,0,1,NOW(),NOW()),
(4459,'On remet tout en question pour s\'améliorer, même quand tout va bien.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',964,0,1,NOW(),NOW()),

(4460,'Je la garde par habitude, même si elle n\'est plus très efficace.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',965,0,1,NOW(),NOW()),
(4461,'Je ne la change que si on m\'y oblige ou si un gros problème survient.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',965,0,1,NOW(),NOW()),
(4462,'Je m\'arrête parfois pour voir comment l\'optimiser.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',965,0,1,NOW(),NOW()),
(4463,'Je la remets souvent en question pour qu’elle reste simple, rapide et surtout rentable.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',965,0,1,NOW(),NOW()),

(4464,'"Sans moyens, on ne fait pas de miracles : je préfère stopper que de bricoler."',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',966,0,1,NOW(),NOW()),
(4465,'"Je me sacrifie et je bricole au jour le jour pour ne pas admettre la défaite."',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',966,0,1,NOW(),NOW()),
(4466,'"Je cherche un plan B moins cher pour continuer à avancer coûte que coûte."',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',966,0,1,NOW(),NOW()),
(4467,'"Je simplifie mon offre pour ne garder que l\'essentiel qui rapporte tout de suite avec presque rien."',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',966,0,1,NOW(),NOW()),

(4468,'Je rajoute encore plus de règles pour me rassurer et tout surveiller.',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',967,0,1,NOW(),NOW()),
(4469,'J\'ajoute de nouvelles solutions sans oser supprimer les vieilles habitudes.',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',967,0,1,NOW(),NOW()),
(4470,'Je prends le temps de trier pour supprimer ce qui ne sert plus à rien.',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',967,0,1,NOW(),NOW()),
(4471,'Je casse tout pour reconstruire une méthode simple, rapide et facile pour tout le monde.',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',967,0,1,NOW(),NOW()),

(4472,'"J\'arrête tout de suite, je me dis que les clients ne sont pas prêts."',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',968,0,1,NOW(),NOW()),
(4473,'"Je change tout de suite d\'idée pour passer à autre chose, sans chercher à comprendre."',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',968,0,1,NOW(),NOW()),
(4474,'"Je demande l\'avis des clients pour comprendre exactement ce qui a coincé."',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',968,0,1,NOW(),NOW()),
(4475,'"Je change un petit détail après l\'autre et je reteste jusqu\'à ce que ça finisse par marcher."',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',968,0,1,NOW(),NOW()),

(4476,'Le soulagement. « Si ça marche, on ne touche à rien. Je ne cherche pas de problèmes là où il n\'y en a pas. »',NULL,1,'1','f9a16e49-d975-4d63-b201-5aee5888ac44',969,0,1,NOW(),NOW()),
(4477,'L\'attente. « Je regarde ce que font les autres. Si tout le monde change sa façon de faire, je m\'adapterai aussi. »',NULL,2,'2','f9a16e49-d975-4d63-b201-5aee5888ac44',969,0,1,NOW(),NOW()),
(4478,'Le réglage. « Je cherche toujours le petit détail pour que ce soit un peu plus rapide ou moins cher. »',NULL,3,'3','f9a16e49-d975-4d63-b201-5aee5888ac44',969,0,1,NOW(),NOW()),
(4479,'L\'avance. « Même quand tout va bien, je cherche à tout simplifier pour passer à la vitesse supérieure. »',NULL,4,'4','f9a16e49-d975-4d63-b201-5aee5888ac44',969,0,1,NOW(),NOW());






INSERT INTO diagnosticmodules (id,titre,position,description,vignette,diagnosticmoduletype_id,diagnosticmodulecategory_id,entrepriseprofil_id,parent,langue_id,pays_id,spotlight,etat,created_at,updated_at,est_bloquant) VALUES
(124,'FONCTION 10 : Intégrité & Discipline personnelle',1,'Rigueur – Cohérence – Fiabilité – Exemplarité',NULL,1,1,NULL,0,'f10a16e49-d975-4d63-b201-5aee5888ac44','3c4fbe39-dfa8-43c0-b7fd-bb946236543d',0,1,NOW(),NOW(),0);

INSERT INTO diagnosticquestions (id,titre,position,diagnosticmodule_id,diagnosticquestiontype_id,diagnosticquestioncategorie_id,langue_id,obligatoire,parent,spotlight,etat,created_at,updated_at) VALUES
(970,'Séparation argent personnel / argent entreprise',1,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(971,'Respect des engagements',2,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(972,'Votre rapport aux règles et obligations officielles',3,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(973,'Votre cohérence personnelle',4,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(974,'Gestion du temps',5,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(975,'Transparence et confiance stratégique',6,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(976,'Quand VOUS commettez une erreur importante',7,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(977,'Votre réputation sur le terrain',8,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(978,'Votre rapport à la parole donnée',9,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW()),
(979,'Votre compréhension du capital de l’entreprise',10,124,1,0,'f10a16e49-d975-4d63-b201-5aee5888ac44',1,0,0,1,NOW(),NOW());

INSERT INTO diagnosticreponses (id,titre,explication,position,score,langue_id,diagnosticquestion_id,spotlight,etat,created_at,updated_at) VALUES
(4480,'Je prends directement sans formalisation claire.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',970,0,1,NOW(),NOW()),
(4481,'Je prends en me disant que je régulariserai plus tard.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',970,0,1,NOW(),NOW()),
(4482,'Je me verse une rémunération ou une avance enregistrée.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',970,0,1,NOW(),NOW()),
(4483,'Les flux sont strictement encadrés ; je respecte les règles même sans contrôle extérieur.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',970,0,1,NOW(),NOW()),

(4484,'Les retards sont fréquents et j’en informe le client une fois le délai dépassé.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',971,0,1,NOW(),NOW()),
(4485,'Je fais au mieux, mais j’anticipe rarement les risques de retard.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',971,0,1,NOW(),NOW()),
(4486,'Si un risque apparaît, je préviens avant l’échéance et je propose une solution.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',971,0,1,NOW(),NOW()),
(4487,'Je planifie avec marge de sécurité, je suis l’avancement et je sécurise mes engagements avant même qu’un problème ne survienne.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',971,0,1,NOW(),NOW()),

(4488,'Je régularise uniquement quand je sens un risque de sanction.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',972,0,1,NOW(),NOW()),
(4489,'Je respecte les règles si cela ne complique pas trop ma situation.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',972,0,1,NOW(),NOW()),
(4490,'Je respecte mes obligations même sans pression extérieure.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',972,0,1,NOW(),NOW()),
(4491,'Je considère la conformité comme un levier stratégique de crédibilité et de réputation à long terme.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',972,0,1,NOW(),NOW()),

(4492,'Vous arrivez souvent en retard, changez d’avis fréquemment ou ne respectez pas toujours vos propres règles.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',973,0,1,NOW(),NOW()),
(4493,'Vous faites des efforts, mais votre niveau d’exigence varie selon votre humeur ou la pression.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',973,0,1,NOW(),NOW()),
(4494,'Vous appliquez à vous-même les standards que vous imposez aux autres.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',973,0,1,NOW(),NOW()),
(4495,'Vous donnez l’exemple en premier, même quand personne ne vous observe, et votre comportement crée naturellement la discipline autour de vous.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',973,0,1,NOW(),NOW()),

(4496,'Vous avez surtout éteint des urgences et répondu aux sollicitations. Vos priorités personnelles ont peu avancé.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',974,0,1,NOW(),NOW()),
(4497,'Vous aviez des priorités claires, mais au moins la moitié a été repoussée à cause d’imprévus.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',974,0,1,NOW(),NOW()),
(4498,'La majorité de vos actions importantes a été réalisée comme prévu.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',974,0,1,NOW(),NOW()),
(4499,'Vos créneaux stratégiques ont été protégés. Même sous pression, vous avez maintenu le cap sur ce qui fait réellement progresser l’entreprise.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',974,0,1,NOW(),NOW()),

(4500,'J’ai gardé l’information pour moi pour éviter les réactions ou les critiques.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',975,0,1,NOW(),NOW()),
(4501,'J’ai partagé une version partielle pour ne pas inquiéter inutilement.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',975,0,1,NOW(),NOW()),
(4502,'J’ai expliqué clairement la situation et les impacts pour que chacun comprenne le contexte.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',975,0,1,NOW(),NOW()),
(4503,'J’ai partagé les enjeux, les risques et les options, afin que l’équipe puisse contribuer à la solution.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',975,0,1,NOW(),NOW()),

(4504,'Je cherche à justifier ou à déplacer la responsabilité vers le contexte ou les autres.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',976,0,1,NOW(),NOW()),
(4505,'Je reconnais l’erreur, mais je passe rapidement à autre chose sans changer ma méthode.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',976,0,1,NOW(),NOW()),
(4506,'J’assume clairement ma responsabilité et je corrige la situation.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',976,0,1,NOW(),NOW()),
(4507,'J’assume publiquement, j’analyse la cause réelle et je modifie durablement mon mode de fonctionnement pour éviter la répétition.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',976,0,1,NOW(),NOW()),

(4508,'“Il faut le relancer souvent, les délais changent.”',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',977,0,1,NOW(),NOW()),
(4509,'“Il est sérieux, mais parfois on ne sait pas à quoi s’attendre.”',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',977,0,1,NOW(),NOW()),
(4510,'“Quand il s’engage, en général il tient.”',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',977,0,1,NOW(),NOW()),
(4511,'“Avec lui, c’est clair : ce qui est dit est fait. On peut travailler sereinement.”',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',977,0,1,NOW(),NOW()),

(4512,'Je m’engage d’abord pour conclure, puis j’ajuste si nécessaire.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',978,0,1,NOW(),NOW()),
(4513,'Je m’engage avec optimisme, même si la marge est faible.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',978,0,1,NOW(),NOW()),
(4514,'Je vérifie mes moyens avant de confirmer.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',978,0,1,NOW(),NOW()),
(4515,'Je sécurise mes capacités (ressources, délais, risques) avant de promettre, quitte à perdre l’opportunité.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',978,0,1,NOW(),NOW()),

(4516,'Je considère que l’argent est disponible et je l’utilise selon les besoins du moment.',NULL,1,'1','f10a16e49-d975-4d63-b201-5aee5888ac44',979,0,1,NOW(),NOW()),
(4517,'Je règle les urgences (salaires, dettes), puis je vois ce qu’il reste.',NULL,2,'2','f10a16e49-d975-4d63-b201-5aee5888ac44',979,0,1,NOW(),NOW()),
(4518,'Je distingue ce qui appartient au fonctionnement de l’entreprise (charges, stock, fournisseurs) de ce qui peut être utilisé librement.',NULL,3,'3','f10a16e49-d975-4d63-b201-5aee5888ac44',979,0,1,NOW(),NOW()),
(4519,'Je protège systématiquement le capital qui fait tourner l’entreprise et je ne touche qu’à la part réellement distribuable.',NULL,4,'4','f10a16e49-d975-4d63-b201-5aee5888ac44',979,0,1,NOW(),NOW());





