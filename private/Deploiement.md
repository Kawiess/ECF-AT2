# Déploiement sur Railway

- Retour : [accueil](../README.md)

---
### Pourquoi Railway ?

- Intégrations avec GitHub
- C'est gratuit
- Support du PHP
- Base de données intégrée

---

### Prérequis

- Compte sur **Railway** (ou connexion via GitHub)
- Dépôt GitHub avec le projet PHP
- Point d'entrée du projet : `public/index.php`

---

### Création du projet

##### Import GitHub

- Aller sur [railway.app](https://railway.app/)
- Cliquer sur **"New Project"**
- Sélectionner **"Deploy from GitHub"**
- Choisir votre dépôt PHP (gîte de Pim)

##### Paramétrage 

- Dans **Settings > Providers**, ajouter **PHP**
- Dans **Settings > Deploy**, modifier la commande "start" : 
    - `php -S 0.0.0.0:$PORT -t public`
- Dans **Settings > Public Networking**, générer une URL pour le site

---

### Création de la BDD

- Via le bouton **"+ Create"**
- On choisis l'option **"Database"**
- Puis **"Add MySQL"** (ou une autre SGBDR)
- L'URL de la base se trouve dans **"Settings > Public Networking"**
- Les autres variables dans l'onglet **"Variables"**

---

### Connexion via MySQL Workbench

Avec les variables récupérées plus haut, on se connecte à la base de **Railway** pour exécuter nos scripts SQL :

- **"creation_bd.sql"** pour créer les tables
- **"data_chambre.sql"** pour créer les chambres et les séjours
- les autres fichiers de la forme **"data_*.sql"** pour les autres données

---

### Variables d'environnement

Dans l'onglet **"Variables"** du projet PHP, il faut ajouter :

- SESSION_NAME="pim_user_session"
- DEBUG_MODE="false"
- BASE_URL="/"

Valeur obtenue depuis les variables de la base de donnée :

- DB_HOST="mysql.railway.internal"
- DB_NAME="railway"
- DB_USER="**************"
- DB_PASS="**************"
- DB_PORT="3306"

Pour un déploiement en local (développement), il faudra un fichier `.env` avec les mêmes nom de variables.

---