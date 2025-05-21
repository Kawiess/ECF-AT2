-- ==============================================================
-- ! Il faut avoir insérer les données des chambres en premier !!
-- ==============================================================

-- Insertions des éléments (cheval).
INSERT INTO element (code_element, type_activite, capacite) VALUES
('Apache',      'RA', 1),
('Mustang',     'RA', 1),
('Sahara',      'RA', 1),
('Comète',      'RA', 1),
('Eclair',      'RA', 1),
('Paillettes',  'RA', 1),
('Koné',        'RA', 1),
('Confiture',   'RA', 1),
('Foster',      'RA', 1),
('Inanouï',     'RA', 1),
('Prince',      'RA', 1),
('Buster',      'RA', 1),
('Charly',      'RA', 1),
('Sao',         'RA', 1),
('Tim',         'RA', 1),
('Tam',         'RA', 1),
('Nidguep',     'RA', 1),
('Papirus',     'RA', 1);

-- Désactivation temporaire pour faciliter l'insertion.
ALTER TABLE activite MODIFY id_sejour INT NULL;

-- Insertion des activités (randonnée équestre).
INSERT INTO activite (id_sejour, type_activite, code_activite, date, heure_debut, heure_fin, nb_personnes, informations) VALUES
(NULL, 'RA', 'RA24110001', '2024-11-26', '09:00:00', '11:00:00', 1, 'Chambre=JA03;Cheval=Apache;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24110002', '2024-11-26', '09:00:00', '11:00:00', 1, 'Chambre=JA03;Cheval=Mustang;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24110003', '2024-11-26', '09:00:00', '11:00:00', 1, 'Chambre=ME02;Cheval=Sahara;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24110004', '2024-11-26', '09:00:00', '11:00:00', 1, 'Chambre=JA01;Cheval=Comète;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24110005', '2024-11-26', '09:00:00', '11:00:00', 1, 'Chambre=JA01;Cheval=Eclair;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24110006', '2024-11-26', '14:00:00', '16:00:00', 1, 'Chambre=JA04;Cheval=Paillettes;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24110007', '2024-11-26', '14:00:00', '16:00:00', 1, 'Chambre=JA04;Cheval=Koné;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24110008', '2024-11-26', '14:00:00', '16:00:00', 1, 'Chambre=ME01;Cheval=Foster;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24110009', '2024-11-26', '14:00:00', '16:00:00', 1, 'Chambre=ME01;Cheval=Inanouï;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120001', '2024-12-02', '09:00:00', '11:00:00', 1, 'Chambre=JA06;Cheval=Prince;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120002', '2024-12-02', '09:00:00', '11:00:00', 1, 'Chambre=JA06;Cheval=Buster;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120003', '2024-12-02', '09:00:00', '11:00:00', 1, 'Chambre=ME03;Cheval=Charly;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120004', '2024-12-02', '09:00:00', '11:00:00', 1, 'Chambre=ME03;Cheval=Sao;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120005', '2024-12-02', '14:00:00', '16:00:00', 1, 'Chambre=JA05;Cheval=Tim;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120006', '2024-12-02', '14:00:00', '16:00:00', 1, 'Chambre=JA05;Cheval=Tam;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120007', '2024-12-02', '14:00:00', '16:00:00', 1, 'Chambre=JA05;Cheval=Apache;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120008', '2024-12-02', '14:00:00', '16:00:00', 1, 'Chambre=ME04;Cheval=Mustang;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120009', '2024-12-02', '14:00:00', '16:00:00', 1, 'Chambre=ME04;Cheval=Sahara;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120010', '2024-12-03', '09:00:00', '11:00:00', 1, 'Chambre=JA07;Cheval=Comète;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120011', '2024-12-03', '09:00:00', '11:00:00', 1, 'Chambre=JA07;Cheval=Eclair;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120012', '2024-12-03', '09:00:00', '11:00:00', 1, 'Chambre=ME05;Cheval=Paillettes;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120013', '2024-12-03', '09:00:00', '11:00:00', 1, 'Chambre=ME05;Cheval=Koné;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120014', '2024-12-09', '14:00:00', '16:00:00', 1, 'Chambre=JA09;Cheval=Foster;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120015', '2024-12-09', '14:00:00', '16:00:00', 1, 'Chambre=JA09;Cheval=Inanouï;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120016', '2024-12-09', '14:00:00', '16:00:00', 1, 'Chambre=JA10;Cheval=Prince;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120017', '2024-12-09', '14:00:00', '16:00:00', 1, 'Chambre=JA10;Cheval=Buster;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120018', '2024-12-15', '09:00:00', '11:00:00', 1, 'Chambre=JA03;Cheval=Charly;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120019', '2024-12-15', '09:00:00', '11:00:00', 1, 'Chambre=JA03;Cheval=Sao;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120020', '2024-12-15', '09:00:00', '11:00:00', 1, 'Chambre=ME01;Cheval=Tim;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120021', '2024-12-15', '09:00:00', '11:00:00', 1, 'Chambre=ME01;Cheval=Tam;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120022', '2024-12-20', '14:00:00', '16:00:00', 1, 'Chambre=JA05;Cheval=Apache;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120023', '2024-12-20', '14:00:00', '16:00:00', 1, 'Chambre=JA05;Cheval=Mustang;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120024', '2024-12-20', '14:00:00', '16:00:00', 1, 'Chambre=ME03;Cheval=Sahara;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120025', '2024-12-20', '14:00:00', '16:00:00', 1, 'Chambre=ME03;Cheval=Comète;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120026', '2024-12-23', '09:00:00', '11:00:00', 1, 'Chambre=JA07;Cheval=Eclair;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120027', '2024-12-23', '09:00:00', '11:00:00', 1, 'Chambre=JA07;Cheval=Paillettes;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120028', '2024-12-23', '09:00:00', '11:00:00', 1, 'Chambre=JA08;Cheval=Koné;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120029', '2024-12-23', '09:00:00', '11:00:00', 1, 'Chambre=ME04;Cheval=Foster;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120030', '2024-12-23', '09:00:00', '11:00:00', 1, 'Chambre=ME04;Cheval=Inanouï;Guide=Emma;ChevalGuide=Nidguep'),
(NULL, 'RA', 'RA24120031', '2024-12-23', '14:00:00', '16:00:00', 1, 'Chambre=ME05;Cheval=Prince;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120032', '2024-12-23', '14:00:00', '16:00:00', 1, 'Chambre=ME05;Cheval=Buster;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120033', '2024-12-23', '14:00:00', '16:00:00', 1, 'Chambre=JA09;Cheval=Charly;Guide=Lucas;ChevalGuide=Papirus'),
(NULL, 'RA', 'RA24120034', '2024-12-23', '14:00:00', '16:00:00', 1, 'Chambre=JA09;Cheval=Sao;Guide=Lucas;ChevalGuide=Papirus');

-- Mise à jour de l'id de sejour.
UPDATE activite a
JOIN sejour s ON s.id_chambre = (
    SELECT c.id FROM chambre c WHERE c.code = SUBSTRING_INDEX(SUBSTRING_INDEX(a.informations, 'Chambre=', -1), ';', 1)
)
AND s.date_entree <= a.date
AND s.date_sortie >= a.date
SET a.id_sejour = s.id
WHERE a.id_sejour IS NULL AND a.type_activite = 'RA';

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
