#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# Init repo if needed
if [ ! -d ".git" ]; then
    git init
    git checkout -b main
fi

git add -A
git commit -m "init: book metadata"

# =============================================================================
# MAIN — Tronc principal
# =============================================================================

git commit --allow-empty -m "$(cat <<'EOF'
Tu pousses la porte vitrée de tes nouveaux bureaux un lundi matin de septembre, costume Hugo Boss ajusté, pochette assortie, montre Breitling bien visible au poignet. Tu as négocié un fixe de 140K, un variable déplafonné, et une clause d'accélération au-delà de 110% d'atteinte. Le CEO t'accueille avec un "enfin un vrai closer !" devant l'open space. Tu serres des mains en regardant les gens dans les yeux — deux secondes, pas plus, comme on t'a appris chez Oracle en 2014.

Dans ta tête, c'est limpide : tripler le CA en 18 mois, c'est juste une question de volume d'activité, de motivation, et de ta playlist Spotify "Closing Anthems". Tu as fait du 300% chez SAP sur un segment mid-market, tu as vendu du CRM à des PME qui n'avaient pas d'ordinateurs. Tu peux tout vendre. Le produit ? Tu le regarderas plus tard. L'important c'est le pipe.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu convoques une réunion d'équipe à 9h00 le mardi. Tu arrives à 9h03 — un pouvoir move classique. Il y a Sophie, AE senior qui fait 80% du revenu à elle seule et qui te regarde avec la tendresse d'un chat face à un nouveau chaton trop bruyant. Karim, SDR infatigable, envoie 200 mails par jour dont 195 tombent en spam. Et Marc, AE junior, qui a été recruté parce qu'il est le neveu de l'investisseur principal.

Zéro process. Zéro playbook. Le pipe est dans un Google Sheet avec des couleurs. Tu demandes "vous faites combien de calls par jour ?", Sophie te répond "je fais des deals, pas des calls". Karim lève la main : "moi j'en fais 47 mais personne ne décroche". Marc est en train de regarder LinkedIn. Tu sens que ce sera plus long que prévu, mais ton énergie est intacte. Tu commandes un whiteboard.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as passé une semaine à configurer Salesforce. Enfin, "configurer" est un grand mot : tu as copié-collé la structure de ton ancien employeur, ajouté 47 champs custom dont "Probabilité de close (feeling)" et "Niveau de douleur client (1-10)". Tu organises une formation d'une heure. Sophie se connecte, regarde l'interface, dit "non merci", et retourne à son Google Sheet. Karim crée 200 comptes en une journée, tous avec comme note "intéressé, à rappeler". Marc a oublié son mot de passe.

Au bout de deux semaines, tu es le seul à remplir le CRM. Tu passes tes soirées à entrer les données des autres en pestant. Mais le pipe fait désormais 12M€ sur l'écran, et c'est beau. Valérie, la DAF, te demande d'où sortent ces chiffres. Tu lui parles de "pipeline weighted" et de "commit rate". Elle te regarde comme si tu parlais klingon.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu instaures le "Monday Morning Pipeline Review" à 8h30. Personne n'arrive avant 9h15. Tu attends seul devant ton écran Salesforce, café froid en main. Quand l'équipe finit par arriver, tu lances ton rituel : "Deal par deal, on passe en revue." Sophie expédie ses 5 deals en 3 minutes — elle connaît chaque détail par coeur. Karim récite ses 47 leads comme un mantra bouddhiste. Les nouvelles recrues n'ont rien à montrer.

Tu réalises que le pipeline review, ce n'est pas un moment de vérité — c'est un théâtre. Chaque commercial raconte l'histoire que tu veux entendre. "Le prospect est chaud." "Il revient vers moi cette semaine." "C'est le budget qui bloque, mais le besoin est là." Tu hoches la tête. Tu notes tout dans Salesforce. Tu sais que 80% est du vent, mais les 20% restants, c'est Sophie, et Sophie ne te ment jamais. Le review finit à 10h. Tu te sens productif. Tu ne l'es pas.
EOF
)"

# ─────────────────────────────────────────────────────────────────────────────
# POINT DE DIVERGENCE A
# Le CRM est en place mais le pipeline est vide. Les 5 recrues viennent
# d'arriver. Le board attend les premiers résultats. La pression monte.
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "$(cat <<'EOF'
Fin du premier mois. Tu fais le point, seul, un vendredi soir devant Salesforce. Le pipe réel — celui de Sophie — c'est 180K€. Tout le reste, c'est du vent : les 47 leads de Karim qui n'ont jamais décroché, les comptes fantômes des nouvelles recrues qui ne connaissent même pas le produit, et tes propres deals "en discovery" qui sont en réalité des gens qui ont répondu "intéressant" à un mail. Le board attend un premier forecast dans deux semaines. Le CEO t'a envoyé un Slack à 23h : "Alors, ça donne quoi le pipe ?" Tu n'as pas répondu.

Tu regardes les 5 recrues qui commencent lundi leur deuxième semaine. Aucune n'a booké un seul meeting. L'ex-immobilier a demandé "c'est quoi un SaaS ?". Karim envoie 200 mails par jour dans le vide. Sophie fait tourner la boutique seule et te regarde avec la patience d'un chirurgien face à un interne qui tremble. Il te faut du pipeline. Vite. Maintenant. La question est : comment ? Tu peux industrialiser la machine — volume, automation, outbound massif — ou tu peux investir dans les fondations : former l'équipe, construire les outils, accepter que ça prenne du temps. Ton instinct de closer hurle "plus de volume". Ton cerveau murmure "plus de qualité". Le board, lui, veut des chiffres lundi.
EOF
)"
SHA_DIVERGENCE_A=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
C'est ton premier forecast trimestriel devant le board. Tu as préparé un deck de 35 slides avec des graphiques en hockey stick. Slide 7 : "Pipeline Coverage Ratio : 4.2x — Industry Best Practice". Tu as mis des emojis fusée dans les titres. Le CEO hoche la tête avec satisfaction. Valérie fronce les sourcils. Tu annonces un forecast de 800K pour le trimestre. "Conservative", tu précises.

La réalité : Sophie a deux deals en cours, l'un est un renouvellement déjà acquis, l'autre un prospect qui ne répond plus depuis trois semaines mais que tu comptes en "Verbal Commit". Karim a qualifié 4 leads dont un est une adresse @gmail.com qui a téléchargé un livre blanc par erreur. Marc vient de démissionner pour lancer sa startup. Mais sur Salesforce, tout est vert.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu décides d'auditer le pipeline un dimanche après-midi, café en main, sueurs froides en embuscade. Il y a 127 opportunités ouvertes. 43 sont en "Discovery" depuis plus de six mois. 18 sont taggées "Negotiation" alors que le prospect a juste répondu "intéressant, revenez vers moi" dans un mail de 2023. Une opportunité de 500K€ a comme contact principal quelqu'un qui a quitté l'entreprise en question il y a un an.

Tu appelles Sophie. "Les deals de plus de 6 mois, on les ferme ?" Elle rit : "Si tu fermes tout ce qui est mort, ton pipe passe de 47M à 2.8M, et le board te vire lundi." Tu ne fermes rien. Tu ajoutes même un nouveau stage : "Nurturing Long-Term" pour les deals zombies. Le pipeline remonte à 52M€. Tu respires mieux.
EOF
)"

# ─────────────────────────────────────────────────────────────────────────────
# POINT DE DIVERGENCE B
# Le pipeline est un mirage. Le premier vrai deal vient d'être perdu.
# Un lead CAC40 apparaît au même moment. Dilemme stratégique.
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "$(cat <<'EOF'
Tu viens de perdre ton premier deal en tant que CRO. 60K€. Le prospect a choisi le concurrent parce que "votre commercial ne connaissait pas le produit, la démo plantait, et on nous a promis des features qui n'existaient pas." Tu raccroches. C'est inconfortable. C'est nécessaire. Tu ouvres Salesforce : 52M€ de pipeline. Tu sais maintenant que 95% est fictif. Le vrai pipe, c'est Sophie — 280K€, peut-être 350K€ en étant optimiste. Tu as annoncé 800K au board.

Et puis ce mail tombe. Mardi matin, 9h17. Un VP Procurement chez TotalEnergies cherche une solution. 500K€ de deal potentiel. Ton coeur s'emballe. C'est le genre de deal qui efface tout — les forecasts ratés, le pipeline bidon, les recrues qui ne performent pas. Un seul deal et tu redeviens le héros. Mais Sophie te regarde par-dessus son écran : "Si tu prends ce lead, tu vas disparaître pendant 6 mois sur un deal enterprise qui a une chance sur dix de closer. Et pendant ce temps, personne ne manage l'équipe." Elle a raison, bien sûr. Mais 500K€... Le graal est là, à portée de main. Le pipeline réel est un désert. Le board attend des résultats. Tu sens que le prochain move va définir tout le reste.
EOF
)"
SHA_DIVERGENCE_B=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Le CEO t'a donné le feu vert : recruter 5 nouveaux commerciaux. Tu publies l'annonce : "Rockstar Sales, variable illimité, startup en hypercroissance." Tu reçois 340 candidatures. Tu en retiens 8 pour les entretiens. Ton process de recrutement : un roleplay de cold call de 5 minutes, un test de personnalité DISC, et la question "c'est quoi ton plus gros deal ?". Si le candidat répond avec un chiffre à 7 positions, il est pris.

Tu recrutes 5 profils en 3 semaines. Deux viennent de l'immobilier, un de la téléphonie, un de l'assurance, et le dernier a "15 ans d'expérience en closing" mais ne sait pas ce qu'est une API. Aucun ne connaît le SaaS. Aucun n'a vendu un produit technique. Mais ils ont "la dalle", et pour toi, c'est tout ce qui compte. Sophie te regarde avec la compassion qu'on réserve aux causes perdues.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Les cinq nouvelles recrues sont arrivées le même lundi. Tu avais prévu un onboarding de choc : une journée de présentation produit, une journée de roleplay, et vendredi sur le terrain. En réalité, la journée produit est assurée par toi — et tu ne connais pas le produit. Tu lis les slides marketing à voix haute. Un des commerciaux de l'immobilier demande : "C'est quoi un SaaS exactement ?" Tu improvises une définition qui ferait pleurer n'importe quel investisseur.

Le roleplay du mercredi est un désastre. L'ex-assureur pitch pendant 20 minutes sans poser une seule question. L'ex-téléphonie essaie de vendre un forfait au lieu du logiciel. Le plus expérimenté des cinq — celui qui ne sait pas ce qu'est une API — fait un close magnifique sur un produit qui n'est pas le vôtre. Il a confondu avec son ancien employeur. Sophie assiste à la scène depuis la machine à café, les bras croisés, avec l'expression de quelqu'un qui regarde un bâtiment s'effondrer au ralenti.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le quarter touche à sa fin et tu es à 35% d'atteinte. La panique s'installe. Tu prends une décision stratégique : baisser les prix. "C'est du land and expand", tu expliques au CEO. Concrètement, tu vends un produit à 50K€/an pour 15K la première année, avec un "gentleman agreement" de montée en charge. Aucun contrat écrit pour la montée en charge, évidemment.

Tes nouveaux commerciaux, libérés de toute contrainte tarifaire, s'en donnent à coeur joie. L'un vend à -70%, l'autre à -65%. Un prospect obtient 80% de remise parce qu'il a "promis d'en parler autour de lui". Valérie découvre les marges : elles sont négatives sur 3 deals. Elle t'envoie un mail avec juste un tableau Excel et un point d'interrogation. Tu ne réponds pas. Tu closes.
EOF
)"

# ─────────────────────────────────────────────────────────────────────────────
# POINT DE DIVERGENCE C
# Fin de quarter. Les chiffres sont catastrophiques. La tentation des
# raccourcis est maximale. Chaque option a un prix.
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "$(cat <<'EOF'
Dernier vendredi du trimestre. Tu fermes la porte de ton bureau et tu regardes les chiffres. 38% d'atteinte. Sur les 800K€ annoncés au board, tu as signé 304K€ — dont 180K€ viennent de Sophie et 80K€ sont des deals à -65% de remise que Valérie refuse de comptabiliser comme des victoires. Le comp plan que tu as créé ne dissuade personne des remises folles. Les 5 recrues n'ont signé qu'un seul deal à elles cinq — à -70%.

Le board est dans 10 jours. Le CEO t'a envoyé un mail sec : "Il me faut un plan de rattrapage crédible pour Q4." Tu fais le calcul : pour atteindre le target annuel, il faudrait signer 1.2M€ en un trimestre. L'équipe en signe 300K€ par trimestre, dont les deux tiers grâce à Sophie. Tu as trois options et aucune n'est bonne. Presser la base clients existante — upsell, cross-sell, tout ce qui bouge. Organiser un coup de théâtre motivationnel — un SKO, un reset, une nouvelle énergie. Ou accepter le naufrage et limiter les dégâts. Chaque option a un coût. Chaque option a un risque. Et dans 10 jours, tu seras devant le board avec un micro et pas de musique.
EOF
)"
SHA_DIVERGENCE_C=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Tu es en meeting avec un prospect CAC40. Le décideur demande : "Est-ce que votre produit fait de l'IA prédictive avec scoring comportemental en temps réel ?" Tu n'en as aucune idée, mais tu sens le deal. "Absolument", tu réponds sans ciller. "C'est même dans notre roadmap Q1." Le prospect signe une LOI. Tu jubiles.

Nathalie, la CPO, découvre ta promesse le lendemain dans le CRM (la seule fois où quelqu'un d'autre que toi regarde Salesforce). Elle débarque dans ton bureau : "Tu as vendu une feature qui n'existe pas, qui n'est pas dans la roadmap, et qui demanderait 6 mois de développement." Tu lui réponds : "C'est du feedback client, Nathalie. Le marché nous dit quoi construire." Elle quitte la pièce en claquant la porte. Lucas, le CTO, t'envoie un Slack : "On doit parler." Tu mets un emoji pouce en l'air et tu files en rendez-vous.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Nathalie a convoqué une réunion de crise. Thème officiel : "Alignement Produit-Sales". Thème réel : "Le CRO doit arrêter de vendre de la fiction." Tu arrives avec un doc de 12 pages intitulé "Voice of the Customer — Why We Need to Ship Faster". Nathalie arrive avec un Jira board de 400 tickets.

La réunion dure 2h30. Tu argues que "le client a toujours raison". Nathalie rétorque que "le client n'a pas toujours raison quand c'est toi qui lui inventes des features". Lucas reste silencieux, les bras croisés, hochant la tête à chaque argument de Nathalie. Le CEO essaie de calmer le jeu : "On est tous dans le même bateau." Sophie, depuis le fond de la salle, lâche : "Le bateau coule." Personne ne rit. Sauf Karim, qui n'a pas compris.
EOF
)"

# ─────────────────────────────────────────────────────────────────────────────
# POINT DE DIVERGENCE D
# Le QBR a explosé. Le board perd confiance. L'étau se resserre.
# Tout le monde sait que quelque chose doit changer. Mais quoi ?
# ─────────────────────────────────────────────────────────────────────────────
git commit --allow-empty -m "$(cat <<'EOF'
Le CEO a instauré un QBR "à l'américaine". Tu présentes ton deck "Operation Phoenix : Rising from the Ashes" avec un phénix en fond d'écran. Nathalie interrompt dès la slide 3 : "Tu peux expliquer comment tu comptes signer 800K en 8 semaines alors que tu en as signé 120K en 12 semaines ?" Lucas lève la main : "3 des 5 prospects que tu cites m'ont contacté pour dire que la démo ne fonctionnait pas." Valérie enchaîne : "Et 2 d'entre eux sont en impayé." Le CEO met fin à la réunion.

Le "petit comité" qui suit est un tribunal. Le CEO est glacial : "Le board veut des changements concrets. Pas des slides. Des changements." Valérie pose les chiffres sur la table : ARR en croissance de 15% au lieu des 200% promis. CAC à 2.3x le LTV. Trois recrues sur cinq qui n'ont rien signé. Le CRM est un champ de ruines. Le produit et les sales ne se parlent plus. Nathalie a posé un ultimatum : "C'est lui ou moi." Tu es au pied du mur. Pas un mur métaphorique — un mur réel, avec une date dessus. Le prochain board est dans 6 semaines. Si les chiffres ne bougent pas, si le CODIR reste fracturé, si le pipeline reste un mirage, la décision sera prise pour toi. Tu le sais. Tout le monde le sait. La question n'est plus "est-ce que ça va mal" mais "qu'est-ce que tu fais maintenant, exactement, avec le peu de temps qu'il te reste ?"
EOF
)"
SHA_DIVERGENCE_D=$(git rev-parse HEAD)

git commit --allow-empty -m "$(cat <<'EOF'
Trois des cinq nouvelles recrues démissionnent la même semaine. L'ex-immobilier part le premier : "J'ai pas signé pour vendre de l'informatique." L'ex-téléphonie suit : "Le cycle de vente est trop long, moi je suis habitué à closer en 20 minutes." Le troisième, celui qui avait 15 ans d'expérience, envoie un mail laconique : "Ce produit est invendable." Tu sais que ce n'est pas vrai — Sophie le vend très bien. Mais tu ne peux pas les retenir.

Le coût total du recrutement raté : 45K€ en salaires versés pendant 3 mois, 15K€ en frais de recrutement, 8K€ en onboarding et équipement, et un temps incalculable en management. Valérie te présente la note avec sa précision chirurgicale habituelle : "68K€ pour zéro deal closé. C'est un nouveau record." Il te reste 2 recrues : l'ex-assureur qui tient le coup parce qu'il a un crédit immobilier, et Marc, le neveu de l'investisseur, qui est revenu de sa startup après 6 semaines.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
C'est le board trimestriel. Tu as mis ton plus beau costume. Slide 1 : "Q3 Results & Path to 10M ARR". Slide 2 : un graphique qui montre 45% d'atteinte. Tu expliques que c'est "un trimestre d'investissement" et que "le pipe pour Q4 est à 4x coverage". Valérie prend la parole. Elle a refait les calculs : en comptant les remises, le CAC, et les coûts de recrutement, chaque nouveau client coûte 2.3x ce qu'il rapporte la première année. Le LTV/CAC est à 0.8.

Le board ne sourit plus. L'investisseur principal te demande : "Combien de deals dans le pipe sont réellement en négociation active ?" Tu ouvres Salesforce. Tu scrolles. Tu transpires. Sophie, par pitié, intervient : "J'en ai trois solides." Trois. Pas les 47 que tu avais annoncés. Le silence dans la salle est assourdissant. Tu marmonnes quelque chose sur le "cycle de vente complexe" et la "saisonnalité Q3".
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Valérie t'attend à ton bureau le lendemain matin avec un dossier. Tes commissions du trimestre : 28K€ sur des deals signés. Problème : deux de ces deals ont déjà été annulés pendant la période de rétractation, un autre est en litige car le client dit qu'on lui a promis des features fantômes, et le dernier a un discount de 75% qui n'a jamais été approuvé par la direction.

"Techniquement", dit Valérie, "tu me dois de l'argent." Tu tentes le coup : "C'est du booked revenue, Valérie. Le contrat est signé." Elle te montre la clause de clawback de ton contrat de travail — celle que tu n'as pas lue parce que tu étais trop occupé à négocier le montant du variable. Tu sens que ta relation avec Valérie ne va pas s'améliorer. Tu te demandes si c'est trop tard pour rappeler le chasseur de têtes.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
C'est le dernier mois du trimestre. Tu as 3 semaines pour sauver ta crédibilité. Tu convoques une "War Room" quotidienne à 8h. Chaque deal est passé au peigne fin. Tu transformes le whiteboard en tableau de guerre : deals en rouge, orange, vert. Problème : il n'y a que du rouge.

Sophie a 2 deals solides : 80K et 45K. L'ex-assureur tient un deal de 25K qui pourrait signer si le client trouve le budget. Karim a qualifié 3 leads cette semaine — un record pour lui — mais ils sont en début de cycle. Tu fais le calcul : best case, 150K. Tu as annoncé 400K au board. Tu commences à comprendre pourquoi Valérie te regarde avec ce mélange de pitié et d'exaspération. Tu envoies un mail au CEO : "Q4 update — revised forecast." Tu baisses le forecast de 400K à 200K et tu présentes ça comme "de la rigueur". Le CEO ne répond pas. Le silence est pire qu'une réponse.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Un lundi matin, Karim te montre son téléphone avec un sourire gêné. Glassdoor. Trois avis publiés ce week-end, tous à 1 étoile. "CRO toxique qui met la pression sans stratégie." "Management commercial des années 90." "Si vous aimez les cold calls inutiles et les forecasts fantaisistes, cet endroit est fait pour vous." Les avis sont anonymes, mais le dernier mentionne "le SKO à Lisbonne" et "les remises à 80%". C'est forcément quelqu'un de l'équipe.

Tu passes la journée à analyser le style d'écriture des avis, comme un détective amateur. Tu suspectes tout le monde sauf Sophie — qui, de toute façon, n'a pas le temps pour ce genre de chose. Le DRH te demande de ne pas "créer un climat de suspicion". Le CEO te demande de "calmer le jeu". Valérie te demande si les chiffres cités dans les avis sont exacts. Tu changes de sujet. La note Glassdoor de la boîte passe de 4.1 à 2.8 en une semaine. Le recrutement, déjà difficile, devient impossible.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le board extraordinaire a été convoqué un vendredi à 17h — le créneau des mauvaises nouvelles. L'ARR est passé de 2M à 2.3M en 12 mois au lieu des 10M promis. Le coût de la force de vente a triplé. Deux des cinq recrues ont démissionné, une troisième est en arrêt maladie pour burn-out. Le domaine email est toujours blacklisté. Le plus gros client historique menace de partir. Et Nathalie a posé un ultimatum : "C'est lui ou moi."

Tu fais ta présentation une dernière fois. "Le SaaS, c'est un marathon, pas un sprint." L'investisseur principal retire ses lunettes, les pose sur la table. "On t'a recruté pour un sprint." Le CEO regarde ses chaussures. Valérie range ses dossiers. Tu sais que c'est fini. Mais dans ta tête, tu te dis que le pipe de Q1 était prometteur. Il l'est toujours, dans le Google Sheet de Sophie.
EOF
)"

# Fin du main — stocker le SHA final
SHA_MAIN_END=$(git rev-parse HEAD)

# =============================================================================
# BRANCHES SECONDAIRES
# =============================================================================

# ─────────────────────────────────────────────────────────────────────────────
# 1. feature/outbound-massif
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/outbound-massif "$SHA_DIVERGENCE_A"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as lu un article sur Lemlist et tu as eu une révélation : le volume. Si tu envoies 50 000 emails, avec un taux d'ouverture de 2%, ça fait 1 000 ouvertures, 50 réponses, 10 meetings, 3 deals. C'est mathématique. Tu achètes une base de données chez un fournisseur louche qui te garantit "100% opt-in RGPD". La base contient 120 000 contacts. 40% sont des @orange.fr. Tu t'en fiches. C'est du volume.

Tu recrutes un freelance growth hacker trouvé sur Malt qui te propose "une stack outbound de folie" : 8 domaines secondaires, du warmup automatique, et des séquences de 12 emails. Le premier email commence par "Je ne vais pas vous faire perdre votre temps" — un classique. Tu programmes 5 000 envois par jour. Karim est aux anges : il a enfin une mission claire.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Jour 3 de la campagne. Tu reçois un mail de Google : "Unusual sending patterns detected on your domain." Tu l'ignores. Jour 5 : le taux de délivrabilité est passé de 85% à 23%. Jour 7 : ton domaine principal — pas le secondaire, le PRINCIPAL — est blacklisté sur Spamhaus. Lucas débarque : "Plus aucun client ne reçoit nos emails transactionnels. Les factures, les notifications, les resets de mot de passe. Tout part en spam."

Tu blâmes le freelance growth hacker. Il a disparu. Son profil Malt indique désormais "en pause". Karim, stoïque, continue d'envoyer des mails depuis son Gmail personnel. Il signe "Karim, Senior Account Executive" en bas de chaque mail. Il n'est ni senior, ni AE. Mais il a la dalle.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Après deux semaines, tu as finalement des réponses. 847 exactement. 600 sont des "unsubscribe me immediately". 150 sont des auto-réponses de gens qui ont quitté leur poste. 43 menacent de signaler votre entreprise à la CNIL. 12 demandent effectivement des informations, mais 9 d'entre eux sont des concurrents qui font de la veille.

Les 3 vrais leads sont : une mairie qui veut un devis pour un "logiciel de gestion des chats errants" (pas votre marché), un consultant freelance sans budget, et un stagiaire chez un grand compte qui pensait remplir un formulaire de satisfaction. Tu mets les 3 en "Qualified Lead" dans Salesforce et tu présentes ça au CEO comme "un début de traction outbound". Le coût par lead qualifié : 12 400€.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Un mardi matin, Valérie entre dans ton bureau avec un courrier recommandé. La CNIL. Plainte déposée par 17 personnes simultanément. Demande de justification du traitement des données, preuve de consentement, documentation du processus. Tu regardes Valérie. Valérie te regarde. La base de données "100% opt-in RGPD" du fournisseur louche ne tenait pas debout. Le contrat que tu as signé avec ce fournisseur indique en petits caractères : "L'acheteur est seul responsable de la conformité."

Le CEO est furieux. Le CTO est furieux. Nathalie est secrètement ravie. L'avocat de la boîte facture 400€/h pour rédiger la réponse à la CNIL. Le risque d'amende : jusqu'à 4% du CA, soit 80K€ que la boîte n'a pas. Tu proposes de "pivoter vers de l'inbound". Personne ne rit.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Six semaines après le désastre, Lucas a réussi à faire retirer le domaine principal de la blacklist Spamhaus. Coût : 3 semaines de travail d'un DevOps senior, 4 000€ de consulting externe, et une lettre d'engagement signée par le CEO promettant que "jamais plus l'entreprise ne conduira de campagnes d'emailing non sollicitées depuis son infrastructure principale."

Tu as appris ta leçon. Enfin, "appris" est un grand mot. Tu as compris que l'outbound massif non ciblé, c'est terminé. Tu décides de faire de l'"outbound ciblé" — 500 mails par semaine, personnalisés, sur des comptes identifiés. Sophie te regarde : "C'est ce que je fais depuis 3 ans." Tu acquiesces comme si c'était ta idée. Karim, lui, a gardé son Gmail personnel en backup "au cas où". Il envoie encore 50 mails par jour depuis karim.sdr.officiel@gmail.com. Personne n'a le coeur de lui dire d'arrêter.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 2. feature/sales-enablement
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/sales-enablement "$SHA_DIVERGENCE_A"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as décidé de professionnaliser l'approche commerciale. Première étape : du contenu. Tu passes trois week-ends à créer un arsenal de battlecards. 200 slides PowerPoint. Il y a une battlecard par concurrent (même ceux qui n'existent plus), une matrice de traitement des objections avec 47 réponses types, un "Sales Playbook" de 85 pages, et un document "Ideal Customer Profile" avec des personas si détaillées qu'elles ont un hobby et un plat préféré.

Tu organises un "Sales Enablement Workshop" de 4 heures un lundi matin. Tu projettes les 200 slides. À la slide 34, Sophie est sur son téléphone. À la slide 67, Karim dort les yeux ouverts. À la slide 120, tu es seul dans la salle. Les commerciaux sont partis en rendez-vous. Le deck est uploadé sur Google Drive dans un dossier que personne ne retrouvera jamais.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu recrutes une "Head of Sales Enablement". Profil parfait : ex-Salesforce, certification Sandler, maîtrise de Highspot et Seismic. Salaire : 75K€. Elle arrive pleine d'énergie, cartographie les gaps, interviewe chaque commercial, construit un programme de certification interne en 3 niveaux.

Problème : personne ne veut être certifié. Sophie dit qu'elle n'a "pas besoin d'un badge pour vendre". Les nouvelles recrues de l'immobilier ne comprennent pas le vocabulaire — "ICP", "MEDDIC", "Champion" leur semblent être du jargon sectaire. Tu la soutiens en public mais en privé, tu te demandes si tu n'aurais pas dû recruter un sixième commercial à la place. Au bout de 6 semaines, elle passe 80% de son temps à créer des templates de mails que personne n'utilise.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Trois mois après son arrivée, la Head of Sales Enablement démissionne. Son mail de départ, envoyé à toute l'entreprise, est un chef-d'oeuvre de diplomatie passive-agressive : "Je remercie l'équipe pour cette expérience enrichissante. J'ai appris que le Sales Enablement ne peut fonctionner que si la direction commerciale est alignée avec la culture d'apprentissage." Traduction : le CRO ne l'a jamais soutenue.

Elle laisse derrière elle : un Google Drive de 2.3 Go de contenus, un programme de certification dont personne n'a passé le Level 1, et un abonnement annuel à Highspot de 18K€ que personne ne sait annuler. Sophie hérite du budget enablement et le réaffecte à des déjeuners clients. C'est paradoxalement plus efficace.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Six mois après le départ de la Head of Sales Enablement, tu retrouves par hasard le Google Drive de 2.3 Go. Par curiosité morbide, tu ouvres les documents. Le "Sales Playbook" est en fait un chef-d'oeuvre. Chaque objection est cartographiée avec des réponses nuancées. Les personas sont basées sur de vraies interviews clients. Le programme de certification couvre exactement les lacunes de l'équipe — onboarding produit, MEDDIC, negotiation skills.

Tu lis pendant 3 heures. C'est tout ce dont tu avais besoin. C'est exactement ce que tu aurais dû soutenir au lieu de le saboter par indifférence. Tu envoies le lien du Drive à Sophie avec un message : "Regarde ça." Sophie lit. Elle répond : "C'est excellent. Pourquoi on n'a pas utilisé ça ?" Tu ne réponds pas. Parce que la réponse, c'est toi. Tu es la raison. Tu l'imprimes quand même et tu le mets sur ton bureau. Comme un rappel de ce qui aurait pu être.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
L'abonnement Highspot de 18K€/an se renouvelle automatiquement. Valérie le découvre 3 jours après le prélèvement. Elle entre dans ton bureau avec la facture : "Qui utilise Highspot ?" Tu ne sais pas. Personne ne le sait. Tu te connectes : dernier login d'un utilisateur actif il y a 4 mois — c'était la Head of Sales Enablement, la veille de sa démission.

Valérie appelle Highspot pour résilier. "Désolé, l'engagement est annuel, non résiliable", lui dit le commercial de Highspot avec le ton enjoué de quelqu'un qui a bien appris sa leçon d'objection handling. Tu reconnais le ton. C'est le même que le tien quand tu rétorques "mais le contrat est signé" à un client mécontent. L'ironie te frappe. Valérie se retourne vers toi : "C'est toi qui as signé ce contrat." Tu vérifies. Effectivement. Ta signature, encore une fois, sous un document que tu n'as pas lu. 18K€ pour un outil que personne n'utilise. C'est l'enablement le plus cher de l'histoire du SaaS français.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 3. feature/deal-strategique
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/deal-strategique "$SHA_DIVERGENCE_B"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as pris le lead TotalEnergies. Personnellement. Pas question de le laisser à un AE. Tu appelles dans les 4 minutes (record personnel). Le VP est "intéressé mais prudent". Tu traduis ça par "c'est quasiment signé" et tu mets l'opportunité en "Commit" dans Salesforce avec une date de close à M+2.

Tu passes le week-end à préparer une présentation sur-mesure. 80 slides. Logo TotalEnergies partout. Des benchmarks inventés. Une slide "ROI garanti en 6 mois" qui ferait pleurer n'importe quel CFO — de rire ou de désespoir, selon le camp. Tu envoies le deck le dimanche soir à 23h47 pour montrer ta "réactivité".
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 3 du deal TotalEnergies. Tu as fait 7 présentations, rencontré 14 personnes, et tu ne sais toujours pas qui est le vrai décideur. Chaque réunion engendre une autre réunion. Il y a le comité achats, le comité IT, le comité sécurité, le comité innovation, et le comité "qui décide quel comité décide". Tu as mobilisé le CEO pour une réunion de C-level qui s'est transformée en visite de bureaux.

Le coût d'acquisition de ce deal dépasse déjà le montant du deal lui-même si on compte ton temps, les avions Paris-La Défense (tu as insisté pour prendre le taxi plutôt que le RER), les déjeuners au Fouquet's, et les 40 heures de préparation de démo custom. Lucas a dû détacher un développeur senior pendant 3 semaines pour créer un prototype spécifique. Nathalie te regarde avec la patience de quelqu'un qui attend que l'inévitable se produise.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Mois 14 du deal TotalEnergies. Tu viens de recevoir un email de 3 lignes : "Merci pour votre engagement tout au long de ce processus. Après mûre réflexion, nous avons décidé de développer une solution en interne. Cordialement." Trois lignes. Quatorze mois de travail. Tu relis le mail six fois. Tu vérifies qu'il ne s'agit pas d'un brouillon intermédiaire. Non. C'est bien fini.

Le CEO, qui avait annoncé ce deal au board comme "quasiment signé" au trimestre dernier, te convoque immédiatement. Tu expliques que "les grand comptes, c'est comme ça, c'est cyclique". Tu apprends le lendemain par LinkedIn que le VP qui était ton champion a été muté en interne — au département facilities management. Il gère maintenant les fontaines à eau. Tu décides de ne pas mettre à jour Salesforce tout de suite. Le deal restera en "Negotiation" pendant encore 3 semaines, le temps que tu trouves un autre graal.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le CEO exige un post-mortem. Tu prépares un document de 20 pages intitulé "TotalEnergies — Lessons Learned & Strategic Insights". Le résumé : "Le timing n'était pas bon, le champion interne a changé de poste, et la solution interne était déjà en développement — impossible à anticiper." Tout est de la faute de facteurs externes. Bien sûr.

Sophie, silencieuse pendant la réunion, t'envoie un DM après : "Le mec t'a dit dès le mois 2 qu'ils avaient une équipe interne qui travaillait sur le sujet. J'étais en copie du mail." Tu relis tes 450 mails échangés sur le deal. Effectivement, au mois 2, ligne 4 du mail du VP : "Nous explorons également des solutions internes." Tu avais lu "Nous explorons" comme "nous explorons en complément de votre solution." Tu avais tort. Le coût total de ce non-deal : 180K€ en coûts directs et indirects. Tu ajoutes une ligne à ton CV : "Experience managing complex enterprise sales cycles (Fortune 500)."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Un mois après la perte de TotalEnergies, tu reçois un nouveau lead enterprise. Un groupe d'assurance, 300K€ de deal potentiel. Tu sens l'excitation monter. "Cette fois, c'est différent", tu te dis. Tu prends le lead personnellement. Tu prépares 60 slides sur-mesure. Tu bloques 4h dans ton agenda pour la première démo.

Sophie te regarde faire. "Tu refais exactement la même chose." Tu ne comprends pas. "Le même pattern : tu prends le lead, tu monopolises la relation, tu engages des ressources massives, tu ignores les red flags." Tu veux protester, mais au fond, tu sais qu'elle a raison. Tu lui proposes un deal : elle co-pilote le deal avec toi. Elle accepte, à condition que tu ne fasses "aucune promesse produit sans validation de Nathalie". Tu serres les dents et tu acceptes. C'est la première fois que tu acceptes un garde-fou. La première de ta carrière, peut-être.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 4. feature/partner-channel
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/partner-channel "$SHA_DIVERGENCE_B"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as eu une illumination sous la douche : les partenaires. Si tu recrutes 50 partenaires qui apportent chacun 2 deals par an, ça fait 100 deals. C'est mathématique (encore). Tu crées un "Partner Program" en une nuit. Trois niveaux : Silver, Gold, Platinum. Les Silver ont droit à 10% de commission. Les Gold à 15% plus un logo sur le site. Les Platinum à 20% plus une invitation au Sales Kickoff.

Tu contactes tous les cabinets de conseil, ESN, et revendeurs de ton carnet d'adresses. Tu publies un post LinkedIn enflammé : "Excité d'annoncer notre Partner Program ! Rejoignez l'aventure !" 340 likes, 12 commentaires "Bravo !", et 3 messages privés de gens qui te demandent si tu recrutes. Zéro partenaire réel à ce stade. Mais la dynamique est lancée.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu signes 15 "partenariats stratégiques" en 6 semaines. Chaque signature donne lieu à un post LinkedIn co-brandé avec des phrases comme "Deux leaders qui unissent leurs forces pour transformer le marché". En réalité, tu as signé des MOU (Memorandum of Understanding) qui n'engagent personne à rien. Aucune obligation de lead, aucun SLA, aucune formation produit.

Le post le plus performant — 2 400 likes — est celui avec un cabinet de conseil de 3 personnes basé à Bordeaux. Le CEO est ravi : "Super visibilité !" Valérie te demande combien de revenus les partenaires ont généré. Tu réponds : "C'est du long terme, Valérie. Channel sales, ça prend 12 à 18 mois." La vraie réponse : 0€. Mais tu as 15 logos sur ta slide "Écosystème Partenaires" et c'est satisfaisant visuellement.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Après 4 mois, un seul partenaire a apporté un lead. C'est un freelance qui s'est inscrit comme Silver et qui a transféré un mail d'un pote à lui qui "cherche un truc dans le genre". Le lead se transforme en meeting, puis en démo, puis en négociation. Deal de 30K€. Tu jubiles. Enfin un proof of concept pour le channel.

Sauf que le freelance exige sa commission de 10% alors que c'est Sophie qui a fait 95% du travail commercial. Sophie refuse de partager le deal. Le freelance menace de "prévenir son réseau". Tu finis par payer la commission sur ton budget discrétionnaire — le même budget qui était censé financer les déjeuners clients du Q4. Bilan après 6 mois de programme partenaires : 1 deal, -3K€ net de commission, 15 posts LinkedIn, et un programme que personne ne gère parce que tu n'as pas recruté de Partner Manager.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Six mois après le lancement du Partner Program, tu publies un post LinkedIn. "Fier d'annoncer que notre Partner Program a atteint les 20 partenaires certifiés !" En réalité, 15 ont signé un MOU, 3 se sont désinscrits, 2 ne savent plus qu'ils sont partenaires, et "certifié" est un mot que tu utilises librement. Mais sur LinkedIn, le chiffre 20 est impressionnant.

Le post récolte 500 likes et un commentaire de l'investisseur principal : "Bravo, quel impact sur le pipe ?" Tu réponds en privé : "On seed, on seed. Le channel, c'est du long terme." En réunion interne, Valérie demande à voir le dashboard partenaires. Il n'y en a pas. Le Google Sheet qui servait de suivi a été accidentellement supprimé par Karim en nettoyant son Drive. Les 20 partenaires sont des fantômes numériques. Tu proposes de "restructurer le programme au Q2". Le Q2 ne viendra jamais pour ton Partner Program.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Un an après le lancement, le Partner Program est officiellement mort mais personne ne l'a enterré. Le site affiche toujours la page "Rejoignez notre écosystème de partenaires" avec un formulaire d'inscription. Quelqu'un le remplit. C'est un cabinet de conseil de Lyon, 12 personnes, spécialisé dans la transformation digitale des ETI. Ils ont un vrai pipeline et de vrais clients.

Tu ne le sais pas encore parce que les notifications du formulaire arrivent dans la boîte mail de la Head of Sales Enablement — celle qui a démissionné. Le mail de notification rebondit. Le cabinet de Lyon attend une réponse pendant 2 semaines. Il finit par envoyer un mail au support technique. Le support le transfère à Karim. Karim le transfère à Sophie. Sophie l'appelle et signe un deal de 40K€ en 3 semaines. Le partenaire reçoit sa commission de 10%. C'est le meilleur retour sur investissement du programme : un deal gagné malgré toi, malgré l'absence de process, malgré tout.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 5. feature/ia-sales
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/ia-sales "$SHA_DIVERGENCE_B"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as découvert ChatGPT un mardi soir en scrollant LinkedIn. 47 posts de "Sales Leaders" qui annoncent que "l'IA va révolutionner la vente". Tu passes la nuit à tester. Tu lui fais écrire des cold emails. Ils sont meilleurs que ceux de Karim. Tu lui fais générer des objection handling scripts. Ils sont plus structurés que ton playbook de 85 pages. Tu as une vision : remplacer les SDR par de l'IA, réduire les coûts, augmenter le volume.

Le lendemain, tu débarques au CODIR avec un deck de 15 slides : "AI-First Sales Strategy — The Future Is Now". Tu proposes de déployer un chatbot sur le site, des séquences d'emails 100% générées par IA, et un "AI SDR" qui qualifie les leads automatiquement. Le CEO est emballé. Nathalie est sceptique. Lucas demande : "Tu veux déployer ça comment, techniquement ?" Tu réponds : "On va utiliser l'API." Lucas : "Quelle API ?" Toi : "L'API... de l'IA." Lucas se pince l'arête du nez.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as trouvé un outil no-code qui promet de créer un "AI Sales Agent" en 30 minutes. Tu y passes un week-end. Le chatbot est live sur le site le lundi. Il s'appelle "SalesBot 3000". Il accueille les visiteurs avec : "Bonjour ! Je suis un assistant IA. Comment puis-je vous aider à transformer votre business ?" Problème : il a été entraîné sur les données du blog de l'entreprise, qui contient un article de 2019 avec des prix obsolètes et des features retirées depuis.

Le premier prospect qui interagit avec SalesBot 3000 se voit proposer un plan à 99€/mois qui n'existe plus depuis 2 ans. Le deuxième reçoit une réponse en anglais alors qu'il écrit en français. Le troisième demande une démo et le chatbot lui donne ton numéro de portable personnel. Tu ne l'avais pas désactivé dans les settings. Tu reçois des appels de prospects à 2h du matin. Le chatbot fonctionne 24/7. Toi, non.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Karim prend le sujet personnellement. "Un robot ne remplacera jamais un humain", dit-il en envoyant son 200ème mail du jour — un mail qui est, ironiquement, un template copié-collé sans aucune personnalisation. Tu lui montres les stats du chatbot : 340 conversations en une semaine, 23 leads qualifiés. Karim en génère 4 par semaine. Les chiffres sont cruels.

Mais Sophie intervient : "Regarde la qualité." Les 23 leads du chatbot : 18 sont des étudiants qui testent l'IA, 3 sont des concurrents, 1 est un journaliste qui écrit un article sur "les pires chatbots B2B", et le dernier est effectivement un prospect mais qui a reçu des informations tellement fausses qu'il menace de le signaler sur Twitter. Karim, lui, a ses 4 leads. Mais ses 4 leads sont réels, avec de vrais budgets et de vrais projets. La qualité bat la quantité. Encore une leçon que tu apprends à la dure.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Fin du mois. Valérie débarque avec la facture OpenAI : 4 700€. Pour un chatbot qui a généré 1 lead réel. "Le coût par lead de ton IA est de 4 700€", dit-elle. "Karim coûte 2 800€ par mois chargé et génère 16 leads. Fais le calcul." Tu fais le calcul. Tu n'aimes pas le résultat.

Tu désactives SalesBot 3000 un vendredi soir, discrètement. Tu ne publies pas de post LinkedIn à ce sujet. Karim retrouve le sourire. Il reprend ses 200 mails par jour. Tu gardes ChatGPT pour rédiger tes propres mails — ceux au board, ceux aux prospects, ceux à Valérie pour justifier les dépenses. Au moins, ta prose s'est améliorée. C'est le seul ROI mesurable de ta stratégie IA.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu ne parles plus d'IA en réunion. Le sujet est devenu toxique. Mais en douce, tu utilises ChatGPT pour quelque chose de réellement utile : analyser les transcriptions de calls. Sophie enregistre ses calls de discovery avec le consentement des prospects. Tu passes les transcriptions dans GPT-4 avec le prompt : "Identifie les objections non traitées et les signaux d'achat manqués."

Les résultats sont fascinants. Sur 10 calls, GPT identifie 3 moments où le prospect était prêt à engager mais le commercial a changé de sujet. Il repère un pattern : les AE parlent du produit pendant 70% du call et écoutent le prospect pendant 30%. Les meilleurs closers font l'inverse. Sophie confirme : "C'est ce que j'essaie de leur dire depuis 2 ans." Tu transformes les insights en coaching points. Pour la première fois, l'IA t'aide vraiment. Mais tu ne mets pas de post LinkedIn. Tu as appris.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 6. feature/upsell-cross-sell
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/upsell-cross-sell "$SHA_DIVERGENCE_C"

git commit --allow-empty -m "$(cat <<'EOF'
Les nouvelles acquisitions sont en berne, alors tu te tournes vers la base installée. 45 clients actifs. Tu crées une matrice d'upsell avec des "expansion opportunities" pour chaque compte. Ta logique : si un client paie 20K/an et utilise 3 modules, tu peux lui vendre les 4 autres modules pour 50K/an. "Net Revenue Retention de 200%", tu écris dans ta slide.

Tu décides d'appeler chaque client personnellement. "Revue de compte stratégique", tu appelles ça. En réalité, c'est un pitch déguisé en QBR. Le premier client te dit : "On n'utilise même pas les features qu'on a." Le deuxième : "On attend la résolution de 12 tickets critiques avant de parler de quoi que ce soit." Le troisième ne décroche pas. Le quatrième décroche et te demande : "Vous êtes qui ?"
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tes appels d'upsell ont eu un effet inattendu : les clients se sont mis à reparler entre eux. Un groupe WhatsApp "Utilisateurs mécontents" est né. 15 clients y échangent des screenshots de bugs, comparent les prix qu'ils paient (et découvrent des écarts de 400% entre eux grâce à tes remises aléatoires), et partagent les noms de concurrents.

En 6 semaines, 4 clients annoncent leur départ. Pas des petits : 180K€ d'ARR combinés. La rétention nette passe de 95% à 82%. Sophie est dévastée — deux de ces clients étaient les siens, des relations de 3 ans qu'elle avait patiemment construites. "Tu as réussi à faire churner des clients satisfaits", te dit-elle avec un calme terrifiant. Nathalie, qui avait alerté sur la qualité produit depuis des mois, envoie un mail au CEO avec comme objet : "Je vous avais prévenus."
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu tentes de rattraper le churn. Tu proposes des remises de "fidélité" de 40% aux clients qui menacent de partir. Valérie explose : "Tu baisses les prix pour les garder APRÈS les avoir harcelés pour les faire payer plus ? C'est quoi ta stratégie exactement ?" Tu n'as pas de réponse. Tu proposes de "renforcer le Customer Success". Le problème : il n'y a pas de Customer Success. C'est Sophie qui gère ça en plus de ses deals.

Bilan de l'opération upsell : 0€ d'upsell réalisé, 180K€ de churn déclenché, une NPS passée de +35 à -12, et un article anonyme sur Glassdoor intitulé "Commercial agressif déguisé en QBR". Le CEO convoque une réunion d'urgence "Retention First". Tu acquiesces avec enthousiasme, comme si c'était exactement ta stratégie depuis le début.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu écris un mail à la base clients. Objet : "Notre engagement envers votre réussite." Quatre paragraphes de corporate speak pour dire "désolé de vous avoir harcelés pour vous vendre des trucs". Sophie relit le mail. "Tu ne t'excuses à aucun moment dans ce mail." Tu relis. Effectivement, le mot "désolé" n'apparaît nulle part. Tu ajoutes "Nous sommes désolés pour toute friction occasionnée" à la fin du deuxième paragraphe. Sophie soupire.

Le mail part. Les réactions sont mitigées. 3 clients répondent "merci, c'est apprécié". 2 répondent "trop peu, trop tard". 1 répond avec le lien vers l'article Glassdoor. Les 39 autres ne répondent pas — ce qui est probablement le meilleur scénario. Le groupe WhatsApp des clients mécontents ne disparaît pas, mais l'activité baisse. Tu considères ça comme une victoire. Valérie te rappelle que 180K€ de churn n'est pas une victoire. Tu considères ça comme "une base de départ".
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 7. feature/sales-kickoff
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b feature/sales-kickoff "$SHA_DIVERGENCE_C"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as convaincu le CEO : il faut un Sales Kickoff. "Les meilleures boîtes le font", tu argumentes. Destination : Lisbonne. Budget : 80K€. Le programme : 2 jours de "stratégie", un escape game, un dîner dans un restaurant étoilé, et un "Closing Championship" où les commerciaux s'affrontent en roleplay. Tu as négocié un hôtel 4 étoiles avec vue sur le Tage. La team building inclut un tour en tuk-tuk et une dégustation de pastéis de nata.

Valérie a validé le budget en grinçant des dents. Elle a ajouté dans le mail d'approbation : "Merci de documenter le ROI attendu de cet investissement." Tu as répondu : "La cohésion d'équipe, c'est unquantifiable." Elle a corrigé ta faute de français et n'a plus répondu.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Jour 1 du SKO. Le CEO monte sur scène dans un polo col Mao et des sneakers blanches — le dress code du "leader visionnaire". Son keynote dure 45 minutes. Il parle de "mission", d'"impact", et de "changer le monde du B2B". Il cite Steve Jobs trois fois et Elon Musk une fois (il regrette immédiatement). Il finit par : "L'année prochaine, on sera à 10M d'ARR. Je le sens."

Toi, tu enchaînes avec ta présentation "2024 : The Year of Hunting". Tu as mis Eye of the Tiger en fond sonore. Le Closing Championship est remporté par Sophie, évidemment, qui bat tout le monde en improvisant un close sur un prospect fictif en 3 minutes. Les commerciaux venus de l'immobilier ne comprennent pas pourquoi on simule des appels au lieu de les faire pour de vrai. Le dîner se termine à 2h du matin. Le commercial qui vendait de l'assurance chante du Céline Dion au karaoké. C'est le moment le plus authentique du trip.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Retour au bureau le lundi. L'énergie du SKO dure exactement 48 heures. Le mercredi, tout le monde a oublié le "War Plan 2024" écrit sur un paperboard à Lisbonne. Les photos d'équipe tournent sur LinkedIn pendant une semaine. Le post "Best SKO ever!" récolte 800 likes mais ne génère aucun lead.

Valérie fait le bilan : 80K€ dépensés, dont 12K€ de notes de frais "diverses" que tu n'arrives pas à justifier. Le ROI mesurable : zéro. Le pipeline n'a pas bougé. La motivation a eu un pic de 2 jours puis est retombée. La seule conséquence durable : Sophie a recruté un prospect rencontré dans un bar à Lisbonne. Deal de 15K€. "C'est ça, le networking", dit-elle. Tu acquiesces en essayant de t'en attribuer le mérite.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Trois semaines après le SKO, Valérie publie un rapport interne intitulé "Analyse ROI — Sales Kickoff Lisbonne". C'est 4 pages de destruction méthodique. Le coût par participant : 5 700€. Le nombre de deals influencés par le SKO : 1 (celui de Sophie au bar). Le coût d'acquisition de ce deal via le SKO : 80 000€ pour 15 000€ de revenu. Le ROI : -81%.

Elle a même inclus une ligne "coût des pastéis de nata : 340€" et "supplément minibar : 2 100€". Tu découvres que trois de tes commerciaux ont vidé le minibar le dernier soir. L'un d'eux a commandé une bouteille de porto millésimé à 180€ sur la note de l'entreprise. Le CEO lit le rapport en silence. Il te demande : "L'année prochaine, on fait le SKO dans la salle de réunion B, d'accord ?" Ce n'est pas une question.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 8. hotfix/client-perdu
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/client-perdu "$SHA_DIVERGENCE_C"

git commit --allow-empty -m "$(cat <<'EOF'
Un jeudi à 18h30, tu reçois l'email que tout CRO redoute. BankFlow, ton plus gros client — 400K€ d'ARR, 20% de ton revenu total — annonce qu'il ne renouvellera pas son contrat. La raison invoquée : "Manque d'évolution produit et problèmes de support récurrents." La vraie raison, que tu apprendras plus tard : un de tes nouveaux commerciaux a appelé BankFlow pour leur proposer un upsell alors qu'ils avaient 8 tickets critiques ouverts depuis 3 mois.

Tu passes la soirée au bureau. Tu rappelles le VP Tech de BankFlow 4 fois. Messagerie. Tu lui envoies un mail, un LinkedIn, un SMS. Le SMS dit : "Call me. Urgent. We can fix this." En anglais, pour faire plus corporate. Il répond à 23h : "Merci de passer par notre procurement pour toute communication." C'est le genre de phrase qui signifie "c'est mort".
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le CEO est mobilisé. Tu organises un "CEO-to-CEO call" le lendemain. Le CEO de BankFlow est poli mais ferme : "On adore votre produit, mais on ne peut pas continuer avec un support qui met 14 jours à répondre à un ticket P1." Tu promets un SLA de 4 heures. Lucas, le CTO, qui est en muet sur le call, t'envoie un Slack : "Tu viens de promettre un SLA qu'on ne peut pas tenir avec notre équipe actuelle."

Tu proposes 50% de remise sur le renouvellement. Valérie, en copie du mail, t'appelle immédiatement : "400K à -50%, c'est 200K. Le coût de support de ce client est de 180K. Tu veux qu'on paye 180K pour garder un client qui nous rapporte 200K ?" Mathématiquement, ça se tient à peine. Mais perdre 400K d'ARR, c'est une catastrophe optique pour le board. Tu négoces 30% de remise. BankFlow demande "quelques jours pour réfléchir". Tu sais ce que ça veut dire.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
BankFlow choisit le concurrent. Tu apprends la nouvelle un vendredi soir par un changement de statut LinkedIn du VP Tech : "Excited to announce our new partnership with [Concurrent]!" Avec un emoji fusée. La trahison ultime.

L'impact sur l'ARR est immédiat : de 2.3M à 1.9M. En dessous du point de départ. Douze mois de travail et tu as reculé. Le board veut des explications. Tu prépares un "Churn Analysis" qui blâme le produit, le support, le timing du marché, et "la stratégie agressive du concurrent". À aucun moment tu ne mentionnes l'appel d'upsell maladroit qui a déclenché la revue du contrat. Sophie le sait. Nathalie le sait. Lucas le sait. Valérie a les enregistrements. Mais pour l'instant, tout le monde fait semblant.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le CEO veut un post-mortem BankFlow "transparent et honnête". Tu organises la réunion. Tout le CODIR est là. Tu commences : "BankFlow était un client à risque depuis longtemps. Le produit ne répondait plus à leurs besoins, le support était sous-dimensionné, et le concurrent a fait du dumping agressif." Nathalie lève la main. "J'ai les logs du support. Les 8 tickets critiques de BankFlow ont été ouverts il y a 5 mois. Le premier a été résolu en 48h. Puis ton équipe a appelé pour proposer un upsell, et le client a rouvert les 7 autres en représailles."

Le silence est épais. Lucas ajoute : "Le concurrent ne fait pas de dumping. Il est 30% plus cher que nous. BankFlow paye plus pour partir." Tu cherches une issue. "C'est un cas isolé." Valérie ouvre son laptop : "J'ai identifié 6 autres comptes à risque pour les mêmes raisons." Le CEO se tourne vers toi. "Tu as un plan de rétention ?" Tu n'en as pas. Tu n'as jamais eu de plan de rétention. Tu as un plan d'acquisition. Retenir, c'est un concept que tu découvres en temps réel.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le remplacement de BankFlow par le concurrent prend 6 mois. Pendant ce temps, le VP Tech de BankFlow rappelle — non pas pour revenir, mais pour demander de l'aide sur la migration des données. C'est la dernière humiliation : non seulement tu perds le client, mais tu dois l'aider à partir. Lucas détache un ingénieur pendant 2 semaines pour l'export des données. Valérie facture la prestation : 8K€. BankFlow refuse de payer : "C'est le minimum après 3 ans de bugs non résolus."

Tu assistes à la scène depuis ton bureau, impuissant. Sophie passe et te dit : "BankFlow, c'est ton meilleur cas d'étude. Le client est parti parce qu'on a été mauvais, pas parce que le concurrent était meilleur." Elle a raison. Le concurrent est objectivement plus cher et moins bon sur plusieurs features. Mais il répondait au support en 2 heures et ne harcelait pas ses clients avec des appels d'upsell. La base. Tu notes sur ton whiteboard, au feutre rouge : "Le support EST le produit." C'est la phrase la plus intelligente que tu aies écrite sur ce whiteboard.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 9. hotfix/scandale-discount
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/scandale-discount "$SHA_DIVERGENCE_C"

git commit --allow-empty -m "$(cat <<'EOF'
Valérie fait son audit trimestriel. Elle ouvre les 12 derniers contrats signés. Elle pâlit. Deal 1 : remise de 72%. Deal 2 : 65%. Deal 3 : 85%. Deal 4 : "1 an gratuit avec engagement sur 3 ans au prix catalogue" — sauf que l'engagement n'est pas contractuel. Deal 5 : remise de 60% plus 3 mois de consulting gratuit qui n'a jamais été budgété.

Elle recalcule l'ACV moyen : 8.2K€ au lieu des 42K€ du catalogue. La marge brute sur les nouveaux deals : -12%. Négatif. Chaque nouveau client coûte de l'argent. Elle convoque une réunion avec toi, le CEO, et l'avocat de la boîte. Tu arrives avec ta tasse "Always Be Closing" et un sourire confiant. Tu ne souris plus longtemps.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
La réunion dure 3 heures. Valérie déroule chaque deal sur un écran. Tu tentes d'expliquer : "C'est du land and expand. On prend le client à bas prix et on monte ensuite." Elle te montre les clauses : aucune obligation de montée en charge, pas de paliers contractuels, des remises "one-time" qui sont en fait des remises permanentes.

Le CEO découvre que tu as signé 4 contrats sans approbation du CFO, en violation de la politique de pricing. Tu rétorques que "la politique de pricing n'était pas formalisée". Valérie sort un document : "Politique de Pricing — v2.3 — Approuvée le 15 mars." Avec ta signature en bas. Tu l'avais signée sans la lire. Comme ton contrat de travail. Tu commences à voir un pattern.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le board impose de nouvelles règles : aucune remise de plus de 20% sans approbation écrite du CFO. Tu appelles ça "la bureaucratie qui tue la vélocité commerciale". Les commerciaux appellent ça "la fin de la récré". Sophie, qui n'a jamais fait de remise supérieure à 15%, ne dit rien. Elle n'en a pas besoin pour closer.

Ta réputation interne est en lambeaux. Le Slack #random fait circuler un mème avec ta tête sur le corps d'Oprah Winfrey : "You get a discount! And you get a discount!" C'est drôle. Même toi, tu souris. Mais dans ton bureau, seul, tu calcules : avec les nouvelles règles, ton variable du prochain trimestre sera de 0€. Ton fixe paye le loyer. À peine.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Valérie lance une opération de "régularisation" des contrats signés avec des remises non autorisées. Concrètement, elle veut renégocier les deals pour ramener les prix à un niveau soutenable. Tu dois appeler chaque client pour expliquer que "suite à un audit interne, nous devons ajuster les conditions commerciales." C'est la phrase la plus humiliante que tu aies jamais prononcée.

Le premier client rigole : "Vous voulez me faire payer plus cher après m'avoir vendu à -70% ?" Le deuxième menace de partir. Le troisième — celui qui avait eu 85% de remise — te dit : "J'ai un contrat signé, mon cher. Bonne chance." L'avocat confirme : les contrats sont légalement contraignants. Les remises resteront. Valérie te fait signer un document stipulant que toute remise future supérieure à 20% sans sa validation sera considérée comme une faute professionnelle. Tu signes. Cette fois, tu lis avant.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 10. hotfix/salesforce-chaos
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/salesforce-chaos "$SHA_DIVERGENCE_D"

git commit --allow-empty -m "$(cat <<'EOF'
Le nouveau membre du board, un ancien VP Sales chez Datadog, demande un accès en lecture à Salesforce. Tu transpires. Il passe une journée à explorer le CRM. Son rapport fait 2 pages, à simple interligne. Les highlights : 347 doublons de contacts, 89 comptes sans propriétaire, 23 opportunités assignées à des commerciaux qui ont quitté l'entreprise, et un deal de 2M€ créé par erreur qui gonfle le pipeline de 25%.

Le plus beau : il y a 4 "stages" custom que personne ne comprend : "Warm Intro Pending", "Vibes Positives", "Quasi-Certain", et "À Relancer Quand La Lune Est Pleine". Ce dernier, créé par Karim un vendredi soir, contient 12 opportunités. Tu ne savais pas que c'était possible de créer des stages custom. Tu ne savais pas non plus que Karim avait des droits admin.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le membre du board exige un "CRM cleanup sprint". Tu passes un week-end entier dans Salesforce avec Sophie (la seule à connaître les vrais statuts des deals). Deal par deal, vous passez en revue les 127 opportunités ouvertes. Sophie connaît l'histoire de chacune : "Celui-là, le mec est parti en retraite." "Celui-là, c'est un concurrent qui nous a testés." "Celui-là, j'ai jamais compris comment il est arrivé dans le pipe."

Au bout de 14 heures, le pipeline est passé de 47M€ à 1.8M€. Les "Vibes Positives" ont été supprimées. Le deal de 2M€ fantôme aussi. Tu regardes le nouveau dashboard : c'est un désert. Mais au moins c'est un désert honnête. Tu te sens comme un patient qui vient de recevoir le résultat d'une prise de sang après 10 ans sans check-up. Les nouvelles sont mauvaises, mais au moins maintenant tu sais.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Lundi matin, tu présentes le pipeline nettoyé au board. 1.8M€ de pipe réel. Coverage de 0.9x pour le trimestre. Le silence est plus long que d'habitude. L'investisseur principal : "On est passé de 47M à 1.8M en un week-end ?" Tu expliques que "c'était de l'hygiène de données". Il répond : "C'était du mensonge, tu veux dire."

Le CEO défend mollement : "Au moins maintenant on a une base saine." Valérie ajoute : "On a aussi dépensé 85K€ de licence Salesforce annuelle pour un CRM qui contenait 96% de données fausses." Lucas murmure : "On aurait pu utiliser un Google Sheet." Sophie, depuis le fond, acquiesce silencieusement. C'est ce qu'elle faisait depuis le début. Le board vote une motion : le CRO n'aura plus accès admin à Salesforce. C'est Valérie qui gérera les droits. Tu viens de te faire confisquer ton jouet.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Deux semaines après le nettoyage, tu découvres un problème que personne n'avait anticipé. Les rapports automatiques qui partaient au board chaque lundi étaient basés sur l'ancien pipeline. Le premier rapport post-nettoyage arrive dans les boîtes mail des investisseurs : "Pipeline Q4 : 1.8M€. Variation : -96% vs Q3." Sans contexte, sans explication. Juste le chiffre brut.

L'investisseur principal appelle le CEO à 7h du matin : "Vous avez perdu 96% de votre pipeline en une semaine ?" Le CEO t'appelle à 7h15. Tu expliques. Il comprend, mais le mal est fait. La confiance du board, déjà fragile, vient de prendre un nouveau coup. Tu passes la matinée à rédiger un "Pipeline Reconciliation Report" de 8 pages pour expliquer que le pipeline n'a pas baissé — il n'avait jamais existé. C'est une nuance qui ne réconforte personne.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 11. hotfix/demo-desastre
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b hotfix/demo-desastre "$SHA_DIVERGENCE_D"

git commit --allow-empty -m "$(cat <<'EOF'
Tu as décroché un meeting démo avec le DSI d'un grand groupe de retail. 300K€ de deal potentiel. La démo est prévue jeudi à 14h. Tu demandes à Lucas de "préparer l'environnement". Lucas te répond : "L'environnement de démo est cassé depuis 3 semaines, je t'ai envoyé 4 Slacks à ce sujet." Tu ne les as pas lus. Tu lui demandes de "faire un effort". Il te répond avec un GIF de bâtiment en feu.

Tu décides de faire la démo sur la prod. "Ça sera plus réaliste", tu te justifies. Sophie te regarde : "Tu vas faire une démo client sur la prod ? Sérieusement ?" Tu hoches la tête avec la confiance d'un homme qui n'a jamais connu l'échec. Ou plutôt, qui l'a connu mais a choisi de l'oublier.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Jeudi, 14h. Tu partages ton écran. Le DSI est là avec son équipe de 6 personnes — dont 2 devs qui ne sourient pas. Tu lances l'application. Elle met 45 secondes à charger. "C'est le réseau", tu dis. C'est la prod qui rame parce qu'un batch de migration tourne en parallèle — un truc que Lucas t'avait signalé dans un Slack que tu n'as pas lu.

Tu cliques sur le module phare. Erreur 500. Page blanche. Tu rafraîchis. Erreur 502. Tu souris : "Petite maintenance en cours, je vais vous montrer les slides en attendant." Tu montres les slides pendant 15 minutes. Le DSI : "On aimerait voir le produit, pas les slides." Tu retentes. L'appli charge, mais les données de démo sont les vraies données d'un client existant — noms, emails, montants. Le DSI lève un sourcil : "Ce sont des données réelles de vos clients ?" Tu fermes l'onglet si vite que tu fermes aussi le Zoom. Le meeting est terminé.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le DSI n'a jamais rappelé. Son assistant a envoyé un mail poli : "Nous avons décidé de ne pas poursuivre. Par ailleurs, l'exposition de données clients pendant la démonstration a été notée et pourrait faire l'objet d'un signalement." Tu passes la nuit à vérifier si c'est une menace réelle ou du bluff. L'avocat de la boîte penche pour le bluff, mais facture quand même 6 heures de conseil "au cas où".

Lucas est furieux. Il envoie un mail à toute la direction : "Je rappelle que l'environnement de démo doit être utilisé pour les démos. C'est littéralement dans son nom." Nathalie ajoute : "Et les données clients ne doivent JAMAIS être visibles par des tiers. C'est la base du RGPD." Tu tentes un "c'était un incident isolé". Sophie, toujours dans le fond, lâche : "C'est le troisième en deux mois." Tu ne savais pas qu'elle comptait.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le CEO impose un nouveau process : toute démo doit être validée par le CTO 48h avant. Un environnement de démo dédié sera maintenu avec des données fictives. Chaque commercial devra suivre une formation "Demo Best Practices" de 2 heures. Tu appelles ça "de la bureaucratie anti-revenue". Sophie appelle ça "du bon sens".

Tu passes la formation en traînant des pieds. Le formateur (un consultant à 1 200€/jour) te fait faire un roleplay de démo. Tu improvises, tu vends des features qui n'existent pas, tu survends le ROI. Il t'arrête : "Vous faites exactement tout ce qu'il ne faut pas faire." Tu ris. Il ne rit pas. À la fin de la formation, tu as un certificat. Tu le mets dans un tiroir, juste à côté de ta certification Sandler de 2017 et de ton diplôme de "Sales Leader of the Year" d'une conférence à Vegas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Trois semaines après l'incident, tu as un nouveau meeting démo. Même profil : un DSI de grand groupe. Cette fois, tu fais tout bien. Environnement de démo validé par Lucas 72h avant. Données fictives vérifiées. Dry run avec Sophie la veille. Tu arrives 10 minutes en avance. Tu vérifies que le WiFi fonctionne. Tu as même un backup en 4G.

La démo se passe... bien. Pas spectaculaire, mais professionnelle. Tu montres les features qui existent. Tu dis "non" quand le prospect demande quelque chose que le produit ne fait pas. Nathalie, qui assiste en muet, t'envoie un pouce levé sur Slack. C'est la première fois. Le prospect est satisfait. Il demande un pricing. Tu envoies le pricing catalogue — sans remise de 70%. Valérie, en copie, ne t'envoie pas de mail indigné. C'est le meilleur feedback que tu puisses espérer. Le deal ne se signera peut-être pas, mais au moins il ne se signera pas dans la honte.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 12. fix/product-led-sales
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b fix/product-led-sales "$SHA_DIVERGENCE_D"

git commit --allow-empty -m "$(cat <<'EOF'
Nathalie a enfin obtenu ce qu'elle voulait : un "Product-Led Growth Committee" avec le pouvoir de réorienter la stratégie commerciale. Le CEO a cédé après le scandale de la démo. Le nouveau mantra : "Let the product do the selling." Tu dois maintenant travailler AVEC le produit, pas contre lui. Tu souris en réunion mais intérieurement, tu bouillonnes. Toi, le closer né, réduit à attendre que des prospects se qualifient tout seuls via un freemium ?

Tu assistes à ta première réunion PLG. Les termes fusent : "activation rate", "time to value", "aha moment", "product-qualified lead". Tu ne comprends rien mais tu hoches la tête. À la fin, Nathalie te demande : "Des questions ?" Tu en as 200, mais tu poses la seule qui t'importe : "Et les commissions, elles changent comment ?"
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
On t'assigne un "PLG buddy" — un product manager de 26 ans qui t'explique les funnels d'activation comme on explique les fractions à un enfant. Tu apprends que 70% des utilisateurs en trial abandonnent avant d'avoir configuré leur premier workspace. Le "Time to Value" est de 47 minutes — une éternité dans le SaaS. Le problème, c'est le produit, pas les commerciaux. Nathalie le sait mais elle te blâmait quand même. C'est de bonne guerre.

Tu passes une semaine à regarder des sessions Hotjar d'utilisateurs en trial. C'est fascinant et terrifiant. Les gens cliquent partout sauf où il faut. Ils créent des comptes avec des emails jetables. Ils importent des données test et ne reviennent jamais. Tu commences à comprendre pourquoi Sophie close et les autres non : elle connaît le produit par coeur. Elle fait des démos adaptées. Elle ne vend pas — elle résout des problèmes. C'est une révélation inconfortable.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Sixième semaine de PLG. Tu as appris à lire un dashboard Amplitude. Tu sais ce qu'est un "PQL" et tu commences à voir la différence avec un MQL acheté à 15€ chez un lead gen douteux. Les PQL convertissent à 22%, les MQL à 0.8%. Les chiffres sont implacables.

Tu proposes un modèle hybride au board : PLG pour l'acquisition et le self-serve, sales-assist pour l'expansion, et outbound ciblé (vraiment ciblé, pas du spam) pour l'enterprise. C'est la première fois en 12 mois que Nathalie et toi êtes d'accord sur quelque chose. Le CEO est surpris. Sophie approuve. Même Lucas lève le pouce. Tu te demandes si tu aurais dû faire ça dès le début. Mais l'orgueil du closer t'en empêchait. Le pipe aurait peut-être été plus petit, mais il aurait été vrai.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Nathalie t'invite à un café. Pas un café de guerre — un vrai café, au bar du coin. Elle te parle de sa vision produit. Tu l'écoutes. Pour la première fois depuis ton arrivée, tu écoutes vraiment sans préparer ta réponse. Elle explique que le produit pourrait se vendre tout seul si l'onboarding était fluide, si le trial montrait la valeur en 10 minutes au lieu de 47, si les features clés étaient accessibles sans formation.

Tu réalises que Nathalie et toi vouliez la même chose depuis le début : du revenu. Vous aviez juste des chemins radicalement différents pour y arriver. Toi, c'était le volume de calls et la force de conviction. Elle, c'était le produit qui convainc par l'usage. La vérité est entre les deux. Tu lui proposes un rituel mensuel : "Product-Sales Sync". Pas une réunion de guerre, pas un QBR. Un café. Un vrai. Où vous parlez de clients, pas de pipe. Elle accepte. C'est la première alliance constructive que tu formes dans cette boîte.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 13. fix/retour-terrain
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b fix/retour-terrain "$SHA_DIVERGENCE_D"

git commit --allow-empty -m "$(cat <<'EOF'
Le board t'a retiré une partie de tes responsabilités managériales. Plus de recrutement, plus de pricing, plus de forecast en solo. Tu es "CRO opérationnel" — un titre inventé pour dire "on te surveille". Humilié, tu fais ce que tu sais faire de mieux : vendre. Tu reprends un book de 15 comptes et tu repars sur le terrain.

Premier call en 8 mois. Tu décroches le téléphone, tu composes le numéro, tu sens l'adrénaline. Le prospect décroche. Tu pitches. Il écoute. Tu qualifies. BANT, MEDDIC, tu connais tout ça par coeur. Il est intéressé. Tu raccroches avec un meeting booké pour jeudi. Ce sentiment — celui du deal qui commence — c'est pour ça que tu as choisi ce métier. Pas pour les slides, pas pour les forecasts, pas pour les boards. Pour le frisson du premier call.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu es en meeting chez un prospect mid-market. 80K€ de deal. Pas un graal, pas un deal de vanité. Un deal normal, sain, avec un budget identifié, un décideur en face, et un besoin réel. Tu fais la démo toi-même — sur l'environnement de démo cette fois. Tu connais le produit maintenant, après tes semaines de PLG forcé.

Le prospect pose des questions. Tu réponds honnêtement. "Ça, on le fait. Ça, on ne le fait pas encore, c'est prévu pour Q2." Le prospect apprécie la transparence. Sophie, qui t'accompagne, est surprise. "C'est la première fois que je t'entends dire 'on ne le fait pas'." Tu souris : "C'est la première fois que je le pense." Le deal avance. Pas avec du discount. Pas avec des promesses. Avec du produit et de la confiance.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu closes 3 deals en 6 semaines. 200K€ d'ARR nouveau. Pas énorme, mais propre. Des deals avec des marges positives, des engagements réalistes, des clients qui savent ce qu'ils achètent. Valérie est presque aimable : "C'est la première fois que tes deals ne me donnent pas d'ulcère."

Tu réalises quelque chose : tu es un bon closer. Tu l'as toujours été. Mais tu es un mauvais manager, un mauvais stratège, et un mauvais CRO. Tu as confondu "vendre" avec "diriger une organisation commerciale". Ce sont deux métiers différents. Sophie le savait. Elle n'a jamais voulu être manager. Elle veut closer, et elle est la meilleure dans ce qu'elle fait. Peut-être que toi aussi, tu devrais juste closer. Mais le titre de CRO, le variable, le board... C'est dur de redescendre quand on a goûté au C-level.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Un soir, après un close réussi, Sophie et toi prenez un verre au bar d'en face. C'est la première fois que vous parlez vraiment, sans CRM, sans pipeline review, sans façade. Elle te raconte comment elle a appris le métier : pas dans un bootcamp sales ou un séminaire à Vegas, mais en écoutant. En posant des questions. En comprenant ce que le client veut AVANT de lui dire ce qu'il devrait acheter.

"Le problème des CRO comme toi", dit-elle sans méchanceté, "c'est que vous pensez que vendre, c'est convaincre. Vendre, c'est comprendre. Si tu comprends le problème du client mieux que lui, tu n'as pas besoin de discount, de battlecard, ou de slide deck de 80 pages. Tu as juste besoin d'être honnête." Tu termines ton verre en silence. C'est la meilleure formation sales que tu aies jamais reçue. Et elle n'a coûté que le prix de deux Negroni.
EOF
)"

git checkout main

# ─────────────────────────────────────────────────────────────────────────────
# 14. fix/licenciement
# ─────────────────────────────────────────────────────────────────────────────
git checkout -b fix/licenciement "$SHA_MAIN_END"

git commit --allow-empty -m "$(cat <<'EOF'
Les signaux sont là depuis des semaines, mais tu as choisi de ne pas les voir — une compétence que tu as perfectionnée sur les deals perdus. Le CEO ne t'invite plus aux réunions stratégiques. Valérie a arrêté de te copier sur les mails financiers. L'assistante de direction ne bloque plus ton agenda pour les boards — elle "vérifiera et reviendra vers toi". Le DRH t'a invité à un café "pour prendre des nouvelles" avec un sourire qui n'atteignait pas ses yeux.

Tu ouvres LinkedIn un soir et tu vois que 3 chasseurs de têtes ont visité ton profil. Pas pour te recruter — pour te remplacer. Un post apparaît : "[Ta boîte] recrute un VP Sales — Poste stratégique". L'annonce est en ligne depuis 4 jours. Tu la lis. C'est ta fiche de poste. Avec "expérience en Product-Led Growth" comme critère obligatoire. C'est la ligne que tu n'as ajoutée à ton CV que la semaine dernière.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Le mail arrive un mardi à 16h53. Objet : "Point RH — Confidentiel". Le DRH et le CEO. Salle de réunion vitrée au 3ème étage. Tu sais. Tu le sais depuis le café de la semaine dernière. Tu mets ta veste, tu redresses ta cravate, tu traverses l'open space avec la démarche de quelqu'un qui va à une réunion importante — pas celle d'un condamné.

Le CEO parle. "Restructuration de l'organisation commerciale." "Nouveau cycle stratégique." "Compétences complémentaires." Jamais le mot "licenciement". Le DRH pousse un document. Rupture conventionnelle. 6 mois d'indemnité. Clause de non-concurrence de 12 mois. Outplacement. Tu lis sans lire. Tu signes mentalement avant de lire, comme d'habitude. Mais cette fois, tu demandes 48h. C'est la première fois que tu ne closes pas immédiatement. L'ironie ne t'échappe pas.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Ton dernier jour. Tu arrives tôt, 7h30. L'open space est vide. Tu fais le tour des bureaux. Ton whiteboard est encore couvert de tes "War Plans" au feutre rouge. Le pipeline fantôme de 47M€ est toujours affiché sur l'écran de la salle de réunion. Tu l'éteins.

Sophie arrive à 8h. Elle te serre dans ses bras. "Tu n'étais pas fait pour ce job, mais t'es un sacré closer." C'est le plus beau compliment qu'on t'ait fait en 12 mois. Karim te donne une carte signée par l'équipe. Lucas te fait un signe de tête. Nathalie te serre la main — professionnellement, pas chaleureusement, mais c'est déjà beaucoup venant d'elle. Valérie te tend ton solde de tout compte avec un sourire : "Pour une fois, les chiffres sont exacts."

Tu mets tes affaires dans un carton. Ta tasse "Always Be Closing". Ton livre "The Challenger Sale" jamais lu. Ta certification Sandler encadrée. Tu prends l'ascenseur. En bas, tu ouvres LinkedIn. "Open to Work." Mais pas tout de suite. D'abord, un café. Et peut-être, pour la première fois, une vraie réflexion sur ce que tu veux vendre. Et comment.
EOF
)"

git commit --allow-empty -m "$(cat <<'EOF'
Tu es dans un café du Marais, laptop ouvert sur un Google Sheet. Pas un pipeline — un business plan. Tu as lancé ta boîte de conseil en "Sales Strategy pour startups SaaS". Ton premier client : une startup de 8 personnes qui fait 200K d'ARR et qui cherche son premier VP Sales. Tu les accompagnes. Tu leur dis tout ce que tu n'as pas fait : "Commencez par comprendre le produit. Recrutez des vendeurs qui connaissent le marché. Ne mettez pas Salesforce avant d'avoir 10 clients. Et pour l'amour du ciel, ne vendez pas des features qui n'existent pas."

Sophie t'a envoyé un message la semaine dernière. Elle a été promue VP Sales. Évidemment. Karim est devenu SDR manager. Il envoie toujours 200 mails par jour, mais maintenant ils sont pertinents. Nathalie a lancé le PLG et l'ARR est monté à 3.5M. Lucas a enfin eu son environnement de démo dédié. Valérie est toujours Valérie — implacable et indispensable. Et le CEO a appris une leçon : le prochain CRO devra connaître le produit avant de connaître le pipe. Tu leur souhaites le meilleur. Sincèrement. Et tu replonges dans ton Google Sheet. Vieux réflexes.
EOF
)"

git checkout main

# =============================================================================
# FIN — Résumé
# =============================================================================
echo ""
echo "========================================="
echo " Le CRO qui promettait la lune"
echo " Génération terminée avec succès !"
echo "========================================="
echo ""
echo "Statistiques :"
TOTAL_COMMITS=$(git log --all --oneline | wc -l)
MAIN_COMMITS=$(git log main --oneline | wc -l)
BRANCHES=$(git branch | wc -l)
echo "  - Commits totaux : $TOTAL_COMMITS"
echo "  - Commits sur main : $MAIN_COMMITS"
echo "  - Branches : $BRANCHES"
echo ""
echo "Branches :"
git branch --list
echo ""
echo "Arbre des commits (main) :"
git log --oneline main
echo ""
echo "Arbre complet :"
git log --all --oneline --graph --decorate | head -80
