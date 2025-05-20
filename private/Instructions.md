# ECF AT2

- Retour : [accueil](../README.md)

> Échéance : jeudi 22 mai 2025 à 17:00

### Projet : Panneau d'administration pour le Gîte Pim

Votre client du Gîte Pim, satisfait du site vitrine dynamique réalisé précédemment (ECF AT1), vous demande désormais de développer un panneau d’administration sécurisé permettant de gérer efficacement ses chambres, activités et réservations.

Ce projet est individuel.

### Objectifs et contraintes du panneau d’administration :

Gestion des réservations

**Chambres :**

- Possibilité de répartir automatiquement ou manuellement des groupes selon la capacité des bungalows (ex : groupe de 6 personnes → 3 bungalows mer, 2 bungalows jardin, ou 1 mer + 1 jardin).

**Repas :**

- Tables enregistrées en base avec leur capacité respective.
- Répartition des groupes sur les tables disponibles.

**Kayaks :**

- Une personne seule ne peut pas réserver un kayak double (trop dangereux).
- Optimisation automatique du choix de kayak selon le nombre de personnes.

Validations obligatoires des réservations :
- La date de fin ne peut jamais être antérieure à la date de début.
- Les activités ne peuvent être réservées qu'au sein des dates de séjour.

### Fonctionnalités générales :

- Consultation, modification, annulation des réservations.
- Gestion dynamique des disponibilités et ressources (chevaux, kayaks, chambres, etc.).
- Visualisation basique de statistiques (taux d'occupation par jour et tranche horaire).

### Contraintes techniques :

- Base de données relationnelle obligatoire. Possibilité d'intégrer du NoSQL en complément (mais pas uniquement).
- Authentification sécurisée obligatoire réservée aux employés (gestion simple des rôles). (Donc une gestion des employés est à prévoir.)
- Interface responsive et intuitive.
- Technologies web libres mais cohérentes avec le projet.
- Déploiement obligatoire sur une solution gratuite comme [Render.com](Render.com) ou [Railway.app](Railway.app).
- Documentation de déploiement claire et complète obligatoire.
- Documentation claire du code.
- Il est à noter que vous ne devriez pas avoir à retoucher aux éléments contenus dans la partie front, si ce n'est pour les uniformiser avec la partie back.

### Livrables attendus

1. Site et panneau d’administration fonctionnels

- Déployés en ligne au plus tard le **22 mai à 17h**.
- URL accessible, 
- Repository Git testable par Benoît à tout moment pendant toute la durée de l'ECF.

2. Dossier projet à livrer (23 mai)
À remettre au format PDF à 8h00. Il sera alors imprimé en **3 exemplaires** (1 apprenant, 1 Christophe, 1 Marie).

Ce dossier devra comporter les éléments suivants :

- Liste des compétences mobilisées.
- Expression du besoin, objectifs et limites du projet.
- Environnement technique et humain, objectifs de qualité.
- 1 Veille sécurité réalisée pendant le projet : vulnérabilités identifiées et corrigées.
- 1 Réalisation significative côté backend avec justification argumentée des choix, notamment sécurité.
- Présentation complète de la base de données :
    - Schéma conceptuel (avec données et relations).
    - Schéma physique.
    - 1 Script de création ou modification de la base.
- 1 Extrait de code d'un composant métier représentatif.
- 1 Extrait de code d'un composant d'accès aux données.
- Présentation d'1 élément de sécurité implémenté.
- Présentation d'1 jeu d’essai élaboré par vous sur la fonctionnalité la plus représentative (données entrantes, attendues, obtenues) et analyse des éventuels écarts.

3. Présentation orale (23 mai)

- Durée : **20 minutes.**
- Contenu obligatoire :
    - Liste des compétences mises en œuvre.
    - Expression du besoin (objectifs et limites).
    - Environnement technique, humain, objectifs de qualité.
    - Contenu total du dossier projet adapté à une présentation orale.
    - Conclusion et bilan personnel.

**Important** : Sélectionnez et préparez tous vos éléments significatifs avant le **mercredi 21 mai**, afin de profiter pleinement du créneau de 4 heures avec Christophe (Suivi de projet chef d'œuvre). Vous pourrez alors finaliser efficacement votre dossier projet et votre présentation. Marie ne répondra à aucune question durant ce temps.
Le **23 mai**, aucun ordinateur ne sera autorisé. Pour la présentation, vous devrez vous connecter à l'ordinateur formateur présent dans la salle. Votre dossier et présentation ne pourront plus être modifiés à partir de 8h00.
Tout retard de livraison ou livraison partielle sera sanctionné un non acquis.

### Compétences évaluées

- **C1** : Installer et configurer son environnement de travail selon le projet web.
- **C5** : Mettre en place une base de données relationnelle.
- **C6** : Développer des composants d’accès aux données (SQL et NoSQL).
- **C7** : Développer des composants métier côté serveur.
- **C8** : Documenter le déploiement d’une application dynamique web.

### Organisation temporelle

- **20h** : Réalisation technique (du début du projet au 22 mai).
- **4h** : Élaboration dossier et présentation (21 mai).
- **4h** : Restitution orale individuelle devant Christophe, Marie et vos pairs (23 mai).

### Recommandations

- Prévoyez dès le départ votre documentation technique (déploiement et code).
- Organisez rigoureusement votre temps.
- Choisissez les éléments à présenter et réalisez vos captures en avance pour optimiser votre restitution.

> Bon courage à toutes et à tous !
