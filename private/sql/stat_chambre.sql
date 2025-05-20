-- Intervalle de date total.
WITH RECURSIVE dates AS (
    SELECT (SELECT MIN(date_entree) FROM sejour) AS jour
    UNION ALL
    SELECT jour + INTERVAL 1 DAY
    FROM dates
    WHERE jour + INTERVAL 1 DAY <= (SELECT MAX(date_sortie) FROM sejour)
),

-- Séjour pour le jour donnée.
occupations AS (
    SELECT
        sejour.id_chambre,
        dates.jour
    FROM sejour
    JOIN dates ON dates.jour BETWEEN sejour.date_entree AND sejour.date_sortie
),

-- Calcul (occupation et total).
calcul_par_jour AS (
    SELECT
        dates.jour,
        COUNT(DISTINCT occupations.id_chambre) AS chambres_occupees,
        (SELECT COUNT(*) FROM chambre) AS total_chambres
    FROM dates
    LEFT JOIN occupations ON occupations.jour = dates.jour
    GROUP BY dates.jour
)

-- Ajout du taux.
SELECT
    jour,
    chambres_occupees,
    total_chambres,
    ROUND(chambres_occupees / total_chambres * 100, 2) AS taux_occupation
FROM calcul_par_jour
where chambres_occupees > 0
ORDER BY jour;
