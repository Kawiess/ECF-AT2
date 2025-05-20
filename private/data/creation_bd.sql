-- Création de la base de donnée.
CREATE DATABASE IF NOT EXISTS pim_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE pim_db;

-- Table utilisateur (pour l'authentification).
CREATE TABLE utilisateur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    role ENUM('admin', 'employe') DEFAULT 'employe'
);

-- Table chambre.
CREATE TABLE chambre (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(4) UNIQUE NOT NULL,    -- Exemple : ME01, JA07
    vue ENUM('mer', 'jardin') NOT NULL,
    capacite INT CHECK (capacite IN (2, 4))
);

-- Table séjour (les réservations de chambres).
CREATE TABLE sejour (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_chambre INT NOT NULL,
    code_sejour VARCHAR(10) UNIQUE NOT NULL,    -- Exemple : CH24120020
    date_entree DATE NOT NULL,
    date_sortie DATE NOT NULL,
    nb_personnes INT NOT NULL,
    FOREIGN KEY (id_chambre) REFERENCES chambre(id)
);

-- Table activité (autres réservations).
-- Activité : RE (repas) / RA (randonnée) / KA (kayak / GA (garderie) / BA (bagne)
CREATE TABLE activite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_sejour INT NOT NULL,
    type_activite VARCHAR(2) NOT NULL,
    code_activite VARCHAR(10) UNIQUE NOT NULL,    -- Exemple : RE24120020
    date DATE NOT NULL,
    heure_debut TIME NOT NULL,
    heure_fin TIME NULL,
    nb_personnes INT NOT NULL,
    informations TEXT NULL, -- texte libre selon l'activité (n°table, cheval, type-kayak, guide+cheval-guide, raison-garde)
    FOREIGN KEY (id_sejour) REFERENCES sejour(id)
);

-- Table éléments (table à manger, kayak, cheval, autre ?).
-- Exemple de code : Table = T1 à T8 / Kayak = K1S, K2S, K1D K2D / Cheval = Apache, Mustang
-- Activité : RE (repas) / RA (randonnée) / KA (kayak / GA (garderie) / BA (bagne)
CREATE TABLE element (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code_element VARCHAR(20) UNIQUE NOT NULL,    
    type_activite VARCHAR(2) NOT NULL, 
    capacite INT CHECK (capacite BETWEEN 1 and 10),
    chemin_image VARCHAR(255)
);

-- Table reservation (pour associer les activités avec les éléments).
CREATE TABLE reservation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_activite INT NOT NULL,
    id_element INT NOT NULL,
    FOREIGN KEY (id_activite) REFERENCES activite(id),
    FOREIGN KEY (id_element) REFERENCES element(id)
);
