-- Statistique des séjours pour le mois de décembre 2024.
-- Procédure stockée avec 'début' et 'fin' en paramètre ?
SELECT
    chambre.code AS code_chambre,
    COUNT(sejour.id) AS nb_sejours,
    SUM(DATEDIFF(sejour.date_sortie, sejour.date_entree)+1) AS nb_jours_occupes,
	(DATEDIFF('2024-12-31', '2024-12-01')+1) AS duree_periode,
    MIN(sejour.date_entree) AS min_entree,
    MAX(sejour.date_sortie) AS max_sortie
FROM chambre
LEFT JOIN sejour
	ON sejour.id_chambre = chambre.id
	and sejour.date_entree >= '2024-12-01'
    and sejour.date_sortie <= '2024-12-31'
GROUP BY chambre.code
ORDER BY chambre.code;
