-- ==============================================================
-- ! Il faut avoir insérer les données des chambres en premier !!
-- ==============================================================

-- Insertions des éléments (kayak).
INSERT INTO element (code_element, type_activite, capacite) VALUES
('K1S', 'KA', 1),
('K2S', 'KA', 1),
('K1D', 'KA', 2),
('K2D', 'KA', 2),
('K3D', 'KA', 2);

-- Désactivation temporaire pour faciliter l'insertion.
ALTER TABLE activite MODIFY id_sejour INT NULL;

-- Insertion des activités (kayak).
INSERT INTO activite (id_sejour, type_activite, code_activite, date, heure_debut, heure_fin, nb_personnes, informations) VALUES
(NULL, 'KA', 'KA24110001', '2024-11-26', '09:00:00', '10:00:00', 2, 'Chambre=ME01; TypeKayak=K1D'),
(NULL, 'KA', 'KA24110002', '2024-11-26', '10:00:00', '11:00:00', 2, 'Chambre=ME01; TypeKayak=K1D'),
(NULL, 'KA', 'KA24110003', '2024-11-26', '14:00:00', '15:00:00', 2, 'Chambre=JA01; TypeKayak=K2D'),
(NULL, 'KA', 'KA24120001', '2024-12-01', '09:00:00', '10:00:00', 2, 'Chambre=JA05; TypeKayak=K1D'),
(NULL, 'KA', 'KA24120002', '2024-12-01', '09:00:00', '10:00:00', 2, 'Chambre=JA05; TypeKayak=K2D'),
(NULL, 'KA', 'KA24120003', '2024-12-01', '10:00:00', '11:00:00', 1, 'Chambre=ME04; TypeKayak=K1S'),
(NULL, 'KA', 'KA24120004', '2024-12-02', '11:00:00', '12:00:00', 2, 'Chambre=JA05; TypeKayak=K1D'),
(NULL, 'KA', 'KA24120005', '2024-12-02', '11:00:00', '12:00:00', 2, 'Chambre=JA05; TypeKayak=K2D'),
(NULL, 'KA', 'KA24120006', '2024-12-03', '14:00:00', '15:00:00', 2, 'Chambre=JA06; TypeKayak=K3D'),
(NULL, 'KA', 'KA24120007', '2024-12-03', '14:00:00', '15:00:00', 2, 'Chambre=JA06; TypeKayak=K2D'),
(NULL, 'KA', 'KA24120008', '2024-12-09', '09:00:00', '10:00:00', 2, 'Chambre=ME04; TypeKayak=K1D'),
(NULL, 'KA', 'KA24120009', '2024-12-15', '14:00:00', '15:00:00', 2, 'Chambre=JA04; TypeKayak=K2D'),
(NULL, 'KA', 'KA24120010', '2024-12-15', '14:00:00', '15:00:00', 2, 'Chambre=JA04; TypeKayak=K3D'),
(NULL, 'KA', 'KA24120011', '2024-12-20', '09:00:00', '10:00:00', 1, 'Chambre=JA06; TypeKayak=K1S'),
(NULL, 'KA', 'KA24120012', '2024-12-20', '09:00:00', '10:00:00', 1, 'Chambre=JA06; TypeKayak=K2S'),
(NULL, 'KA', 'KA24120013', '2024-12-23', '11:00:00', '12:00:00', 2, 'Chambre=JA06; TypeKayak=K1D'),
(NULL, 'KA', 'KA24120014', '2024-12-23', '14:00:00', '15:00:00', 2, 'Chambre=ME05; TypeKayak=K2D'),
(NULL, 'KA', 'KA24120015', '2024-12-24', '10:00:00', '11:00:00', 2, 'Chambre=JA10; TypeKayak=K1D'),
(NULL, 'KA', 'KA24120016', '2024-12-24', '10:00:00', '11:00:00', 2, 'Chambre=JA10; TypeKayak=K2D');

-- Mise à jour de l'id de sejour.
UPDATE activite a
JOIN sejour s ON s.id_chambre = (
    SELECT c.id FROM chambre c WHERE c.code = SUBSTRING_INDEX(SUBSTRING_INDEX(a.informations, 'Chambre=', -1), ';', 1)
)
AND s.date_entree <= a.date
AND s.date_sortie >= a.date
SET a.id_sejour = s.id
WHERE a.id_sejour IS NULL AND a.type_activite = 'KA';


-- Remise en place de la clause 'not null' sur 'id_sejour'.
DELETE FROM activite WHERE id_sejour IS NULL;
ALTER TABLE activite MODIFY id_sejour INT NOT NULL;

-- Création des réservations.
INSERT INTO reservation (id_activite, id_element)
SELECT activite.id AS id_activite, element.id AS id_element
FROM activite
JOIN element
ON activite.informations LIKE CONCAT('%TypeKayak=', element.code_element, '%')
WHERE element.type_activite = 'KA';
