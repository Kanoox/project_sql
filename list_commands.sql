SELECT * FROM membre;
SELECT * FROM livre;
SELECT * FROM emprunt;

SELECT * FROM membre WHEREWHERE LOWER(adresse) LIKE '%paris%';

SELECT annee_publication, COUNT(*) AS nombre_livres FROM livre GROUP BY annee_publication ORDER BY annee_publication;



SELECT
    m.id_membre,
    m.nom,
    m.prenom,
    e.id_emprunt,
    e.date_emprunt,
    e.date_retour,
    e.amende
FROM
    bibliotheque_projet.membre AS m
INNER JOIN
    bibliotheque_projet.emprunt AS e
ON
    m.id_membre = e.id_membre;


SELECT 
    l.id_livre,
    l.titre AS titre_livre,
    m.nom AS nom_membre,
    m.prenom AS prenom_membre,
    e.date_emprunt,
    e.date_retour,
    e.date_retour_reel,
    e.amende
FROM 
    bibliotheque_projet.emprunt AS e
INNER JOIN 
    bibliotheque_projet.livre AS l
ON 
    e.id_livre = l.id_livre
INNER JOIN 
    bibliotheque_projet.membre AS m
ON 
    e.id_membre = m.id_membre;
