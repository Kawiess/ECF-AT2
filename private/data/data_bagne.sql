-- ==============================================================
-- ! Il faut avoir insérer les données des chambres en premier !!
-- ==============================================================

-- Désactivation temporaire pour faciliter l'insertion.
ALTER TABLE activite MODIFY id_sejour INT NULL;

-- Insertion des activités (garderie).
INSERT INTO activite (id_sejour, type_activite, code_activite, date, heure_debut, heure_fin, nb_personnes, informations) VALUES
(NULL, 'BA', 'BA24110001', '2024-11-30', '10:00', '11:30', 2, 'Chambre=JA02'),
(NULL, 'BA', 'BA24110002', '2024-11-30', '10:00', '11:30', 1, 'Chambre=ME03'),
(NULL, 'BA', 'BA24110003', '2024-11-30', '14:00', '15:30', 1, 'Chambre=ME05'),
(NULL, 'BA', 'BA24110004', '2024-11-30', '14:00', '15:30', 1, 'Chambre=JA04'),
(NULL, 'BA', 'BA24120001', '2024-12-01', '10:00', '11:30', 2, 'Chambre=JA06'),
(NULL, 'BA', 'BA24120002', '2024-12-01', '10:00', '11:30', 1, 'Chambre=JA05'),
(NULL, 'BA', 'BA24120003', '2024-12-07', '10:00', '11:30', 1, 'Chambre=ME01'),
(NULL, 'BA', 'BA24120004', '2024-12-07', '10:00', '11:30', 2, 'Chambre=JA08'),
(NULL, 'BA', 'BA24120005', '2024-12-07', '14:00', '15:30', 2, 'Chambre=ME02'),
(NULL, 'BA', 'BA24120006', '2024-12-08', '14:00', '15:30', 1, 'Chambre=ME03'),
(NULL, 'BA', 'BA24120007', '2024-12-08', '14:00', '15:30', 2, 'Chambre=JA09'),
(NULL, 'BA', 'BA24120008', '2024-12-14', '10:00', '11:30', 2, 'Chambre=JA01'),
(NULL, 'BA', 'BA24120009', '2024-12-14', '10:00', '11:30', 1, 'Chambre=JA02'),
(NULL, 'BA', 'BA24120010', '2024-12-15', '10:00', '11:30', 1, 'Chambre=ME01'),
(NULL, 'BA', 'BA24120011', '2024-12-15', '10:00', '11:30', 2, 'Chambre=JA04'),
(NULL, 'BA', 'BA24120012', '2024-12-21', '14:00', '15:30', 1, 'Chambre=ME03'),
(NULL, 'BA', 'BA24120013', '2024-12-21', '14:00', '15:30', 2, 'Chambre=JA05'),
(NULL, 'BA', 'BA24120014', '2024-12-22', '10:00', '11:30', 1, 'Chambre=JA06'),
(NULL, 'BA', 'BA24120015', '2024-12-22', '10:00', '11:30', 1, 'Chambre=ME04'),
(NULL, 'BA', 'BA24120016', '2024-12-28', '10:00', '11:30', 1, 'Chambre=ME05'),
(NULL, 'BA', 'BA24120017', '2024-12-28', '10:00', '11:30', 1, 'Chambre=JA08'),
(NULL, 'BA', 'BA24120018', '2024-12-29', '10:00', '11:30', 2, 'Chambre=JA09');

-- Mise à jour de l'id de séjour.
UPDATE activite a
JOIN sejour s ON s.id_chambre = (
    SELECT c.id FROM chambre c WHERE c.code = SUBSTRING_INDEX(a.informations, 'Chambre=', -1)
)
AND s.date_entree <= a.date
AND s.date_sortie >= a.date
SET a.id_sejour = s.id
WHERE a.id_sejour IS NULL AND a.type_activite = 'BA';

-- Remise en place de la clause 'not null' sur 'id_sejour'.
DELETE FROM activite WHERE id_sejour IS NULL;
ALTER TABLE activite MODIFY id_sejour INT NOT NULL;
