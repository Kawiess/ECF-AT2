-- ==============================================================
-- ! Il faut avoir insérer les données des chambres en premier !!
-- ==============================================================

-- Insertions des éléments (repas).
INSERT INTO element (code_element, type_activite, capacite) VALUES
('T1', 'RE', 4),
('T2', 'RE', 4),
('T3', 'RE', 4),
('T4', 'RE', 4),
('T5', 'RE', 4),
('T6', 'RE', 4),
('T7', 'RE', 4),
('T8', 'RE', 4);

-- Désactivation temporaire pour faciliter l'insertion.
ALTER TABLE activite MODIFY id_sejour INT NULL;

-- Insertion des activités (repas).
INSERT INTO activite (type_activite, code_activite, date, heure_debut, nb_personnes, informations, id_sejour) VALUES
('RE', 'RE24110001', '2024-11-25', '19:00:00', 2, 'Chambre ME01 - Table T1', NULL),
('RE', 'RE24110002', '2024-11-25', '19:00:00', 3, 'Chambre JA01 - Table T3', NULL),
('RE', 'RE24110003', '2024-11-25', '19:30:00', 4, 'Chambre JA03 - Table T5', NULL),
('RE', 'RE24110004', '2024-11-26', '12:00:00', 2, 'Chambre ME01 - Table T2', NULL),
('RE', 'RE24110005', '2024-11-26', '12:00:00', 3, 'Chambre JA01 - Table T4', NULL),
('RE', 'RE24110006', '2024-11-26', '12:30:00', 2, 'Chambre JA04 - Table T6', NULL),
('RE', 'RE24110007', '2024-11-26', '19:00:00', 1, 'Chambre ME02 - Table T1', NULL),
('RE', 'RE24110008', '2024-11-26', '19:00:00', 4, 'Chambre JA03 - Table T3', NULL),
('RE', 'RE24110009', '2024-11-27', '12:00:00', 1, 'Chambre ME02 - Table T2', NULL),
('RE', 'RE24110010', '2024-11-27', '12:00:00', 2, 'Chambre JA04 - Table T4', NULL),
('RE', 'RE24110011', '2024-11-27', '19:00:00', 3, 'Chambre JA01 - Table T1', NULL),
('RE', 'RE24110012', '2024-11-30', '19:00:00', 2, 'Chambre ME03 - Table T1', NULL),
('RE', 'RE24110013', '2024-11-30', '19:00:00', 2, 'Chambre ME05 - Table T3', NULL),
('RE', 'RE24110014', '2024-11-30', '19:30:00', 3, 'Chambre JA02 - Table T5', NULL),
('RE', 'RE24110015', '2024-12-01', '12:00:00', 2, 'Chambre ME03 - Table T2', NULL),
('RE', 'RE24110016', '2024-12-01', '12:30:00', 2, 'Chambre ME04 - Table T4', NULL),
('RE', 'RE24110017', '2024-12-01', '19:00:00', 2, 'Chambre ME03 - Table T1', NULL),
('RE', 'RE24110018', '2024-12-01', '19:00:00', 2, 'Chambre ME04 - Table T3', NULL),
('RE', 'RE24110019', '2024-12-01', '19:30:00', 4, 'Chambre JA05 - Table T5', NULL),
('RE', 'RE24110020', '2024-12-02', '12:00:00', 4, 'Chambre JA05 - Table T2', NULL),
('RE', 'RE24110021', '2024-12-02', '19:00:00', 4, 'Chambre JA06 - Table T1', NULL),
('RE', 'RE24110022', '2024-12-02', '19:30:00', 3, 'Chambre JA07 - Table T3', NULL),
('RE', 'RE24110023', '2024-12-03', '12:00:00', 2, 'Chambre ME01 - Table T2', NULL),
('RE', 'RE24110024', '2024-12-03', '12:30:00', 4, 'Chambre JA06 - Table T4', NULL),
('RE', 'RE24110025', '2024-12-05', '19:00:00', 2, 'Chambre ME02 - Table T1', NULL),
('RE', 'RE24110026', '2024-12-05', '19:30:00', 4, 'Chambre JA06 - Table T3', NULL),
('RE', 'RE24110027', '2024-12-06', '12:00:00', 2, 'Chambre ME02 - Table T2', NULL),
('RE', 'RE24110028', '2024-12-06', '19:00:00', 4, 'Chambre JA08 - Table T1', NULL),
('RE', 'RE24110029', '2024-12-08', '19:00:00', 1, 'Chambre ME03 - Table T1', NULL),
('RE', 'RE24110030', '2024-12-08', '19:00:00', 3, 'Chambre JA09 - Table T3', NULL),
('RE', 'RE24110031', '2024-12-09', '12:00:00', 2, 'Chambre ME04 - Table T2', NULL),
('RE', 'RE24110032', '2024-12-09', '19:00:00', 4, 'Chambre JA10 - Table T1', NULL),
('RE', 'RE24110033', '2024-12-10', '12:30:00', 2, 'Chambre ME05 - Table T4', NULL),
('RE', 'RE24110034', '2024-12-15', '19:00:00', 2, 'Chambre ME01 - Table T1', NULL),
('RE', 'RE24110035', '2024-12-15', '19:00:00', 4, 'Chambre JA03 - Table T3', NULL),
('RE', 'RE24110036', '2024-12-16', '12:00:00', 1, 'Chambre ME02 - Table T2', NULL),
('RE', 'RE24110037', '2024-12-16', '12:30:00', 4, 'Chambre JA04 - Table T4', NULL),
('RE', 'RE24110038', '2024-12-20', '19:00:00', 2, 'Chambre ME03 - Table T1', NULL),
('RE', 'RE24110039', '2024-12-20', '19:30:00', 4, 'Chambre JA05 - Table T3', NULL),
('RE', 'RE24110040', '2024-12-23', '19:00:00', 2, 'Chambre ME04 - Table T1', NULL),
('RE', 'RE24110041', '2024-12-23', '19:30:00', 4, 'Chambre JA07 - Table T3', NULL),
('RE', 'RE24110042', '2024-12-24', '19:00:00', 2, 'Chambre ME05 - Table T1', NULL),
('RE', 'RE24110043', '2024-12-24', '19:00:00', 2, 'Chambre JA08 - Table T3', NULL),
('RE', 'RE24110044', '2024-12-24', '19:30:00', 4, 'Chambre JA09 - Table T5', NULL),
('RE', 'RE24110045', '2024-12-24', '20:00:00', 4, 'Chambre JA10 - Table T7', NULL),
('RE', 'RE24110046', '2024-12-25', '12:00:00', 2, 'Chambre ME05 - Table T2', NULL),
('RE', 'RE24110047', '2024-12-25', '12:00:00', 2, 'Chambre JA08 - Table T4', NULL),
('RE', 'RE24110048', '2024-12-25', '12:30:00', 4, 'Chambre JA09 - Table T6', NULL),
('RE', 'RE24110049', '2024-12-25', '13:00:00', 4, 'Chambre JA10 - Table T8', NULL);

-- Mise à jour de l'id de sejour.
UPDATE activite a
JOIN chambre c ON c.code = SUBSTRING_INDEX(SUBSTRING_INDEX(a.informations, ' - ', 1), ' ', -1)
JOIN sejour s ON s.id_chambre = c.id
    AND s.date_entree <= a.date
    AND s.date_sortie >= a.date
SET a.id_sejour = s.id
WHERE a.id_sejour IS NULL;

-- Remise en place de la clause 'not null' sur 'id_sejour'.
DELETE FROM activite WHERE id_sejour IS NULL;
ALTER TABLE activite MODIFY id_sejour INT NOT NULL;

-- Création des réservations.
INSERT INTO reservation (id_activite, id_element)
SELECT activite.id AS id_activite, element.id AS id_element
FROM activite
JOIN element
ON activite.informations LIKE CONCAT('%', element.code_element, '%')
WHERE element.type_activite = 'RE';
