-- ==============================================================
-- ! Il faut avoir insérer les données des chambres en premier !!
-- ==============================================================

-- Désactivation temporaire pour faciliter l'insertion.
ALTER TABLE activite MODIFY id_sejour INT NULL;

-- Insertion des activités (garderie).
INSERT INTO activite (id_sejour, type_activite, code_activite, date, heure_debut, heure_fin, nb_personnes, informations) VALUES
(NULL, 'GA', 'GA24110001', '2024-11-26', '09:00', '11:00', 2, 'Raison="Parents en randonnée équestre";Chambre=JA03'),
(NULL, 'GA', 'GA24110002', '2024-11-26', '14:00', '16:00', 1, 'Raison="Parents en randonnée équestre";Chambre=JA04'),
(NULL, 'GA', 'GA24110003', '2024-11-30', '10:00', '11:30', 1, 'Raison="Parents en visite du bagne";Chambre=JA02'),
(NULL, 'GA', 'GA24120001', '2024-12-01', '09:00', '10:00', 2, 'Raison="Parents en kayak";Chambre=JA05'),
(NULL, 'GA', 'GA24120002', '2024-12-02', '09:00', '11:00', 2, 'Raison="Parents en randonnée équestre";Chambre=JA06'),
(NULL, 'GA', 'GA24120003', '2024-12-02', '14:00', '16:00', 1, 'Raison="Parents en randonnée équestre";Chambre=JA05'),
(NULL, 'GA', 'GA24120004', '2024-12-03', '14:00', '15:00', 2, 'Raison="Parents en kayak";Chambre=JA06'),
(NULL, 'GA', 'GA24120005', '2024-12-07', '10:00', '11:30', 2, 'Raison="Parents en visite du bagne";Chambre=JA08'),
(NULL, 'GA', 'GA24120006', '2024-12-09', '14:00', '16:00', 1, 'Raison="Parents en randonnée équestre";Chambre=JA09'),
(NULL, 'GA', 'GA24120007', '2024-12-14', '10:00', '12:00', 2, 'Raison="Sortie parents";Chambre=JA01'),
(NULL, 'GA', 'GA24120008', '2024-12-15', '09:00', '11:00', 2, 'Raison="Parents en randonnée équestre";Chambre=JA03'),
(NULL, 'GA', 'GA24120009', '2024-12-15', '14:00', '15:00', 2, 'Raison="Parents en kayak";Chambre=JA04'),
(NULL, 'GA', 'GA24120010', '2024-12-20', '14:00', '16:00', 2, 'Raison="Parents en randonnée équestre";Chambre=JA05'),
(NULL, 'GA', 'GA24120011', '2024-12-23', '09:00', '11:00', 2, 'Raison="Parents en randonnée équestre";Chambre=JA07'),
(NULL, 'GA', 'GA24120012', '2024-12-23', '14:00', '16:00', 2, 'Raison="Parents en randonnée équestre";Chambre=JA09'),
(NULL, 'GA', 'GA24120013', '2024-12-24', '10:00', '11:00', 2, 'Raison="Parents en kayak";Chambre=JA10'),
(NULL, 'GA', 'GA24120014', '2024-12-28', '10:00', '11:30', 1, 'Raison="Parents en visite du bagne";Chambre=JA08');

-- Mise à jour de l'id de séjour.
UPDATE activite a
JOIN sejour s ON s.id_chambre = (
    SELECT c.id FROM chambre c WHERE c.code = SUBSTRING_INDEX(SUBSTRING_INDEX(a.informations, 'Chambre=', -1), ';', 1)
)
AND s.date_entree <= a.date
AND s.date_sortie >= a.date
SET a.id_sejour = s.id
WHERE a.id_sejour IS NULL AND a.type_activite = 'GA';

-- Remise en place de la clause 'not null' sur 'id_sejour'.
DELETE FROM activite WHERE id_sejour IS NULL;
ALTER TABLE activite MODIFY id_sejour INT NOT NULL;
