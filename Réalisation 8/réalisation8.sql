USE dashboard;

SELECT A.titre, U.nom
FROM Article A
JOIN Utilisateur U ON A.id_utilisateur = U.id_utilisateur;


SELECT A.titre, COUNT(C.id_commentaire) AS nombre_commentaires
FROM Article A
LEFT JOIN Commentaire C ON A.id_article = C.id_article
GROUP BY A.id_article;


SELECT titre, date_publication
FROM Article
ORDER BY date_publication DESC
LIMIT 5;



DELETE FROM Commentaire
WHERE id_article = 3;

