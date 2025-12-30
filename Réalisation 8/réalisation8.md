 MCD – Modèle Conceptuel de Données (MERISE)

🔹 Entités

-UTILISATEUR

id_utilisateur
nom
email
mot_de_passe

-ARTICLE

id_article
titre
contenu
image
date_publication

-COMMENTAIRE

id_commentaire
contenu
auteur
date_commentaire

🔹 Relations + cardinalités

1️) UTILISATEUR — écrit — ARTICLE

Un utilisateur peut écrire plusieurs articles
Un article est écrit par un seul utilisateur

-- Cardinalités :

UTILISATEUR (1,N)
ARTICLE (1,1)

2️) ARTICLE — reçoit — COMMENTAIRE

Un article peut recevoir plusieurs commentaires
Un commentaire appartient à un seul article

-- Cardinalités :

ARTICLE (1,N)
COMMENTAIRE (1,1)
 
3)UTILISATEUR - écrit - COMMENTAIRE

Un utilisateur peut commenter plusieurs articles différents.
Un commentaire ne peut pas appartenir à plusieurs utilisateurs

-- Cardinalités :

Utilisateur (1, N)
Commentaire (1,1)


Rapports et manipulations SQL – Blog

🔹 Description

Ce document présente un ensemble de requêtes SQL simulant des questions métiers sur une base de données de blog, par exemple : 

-Quels sont les utilisateurs qui ont écrit des articles ?
-Combien de commentaires y a-t-il pour chaque article ?
-Quels sont les derniers articles publiés ?
-Quels sont les articles d’un utilisateur donné ?
-Supprimer les anciens commentaires ?

🔹 Requête 1 : Liste des articles avec leurs auteurs
SELECT A.titre, U.nom
FROM Article A
JOIN Utilisateur U ON A.id_utilisateur = U.id_utilisateur;


Explication :
Cette requête permet d’afficher chaque article avec le nom de l’utilisateur qui l’a rédigé.

🔹 Requête 2 : Nombre de commentaires par article
SELECT A.titre, COUNT(C.id_commentaire) AS nombre_commentaires
FROM Article A
LEFT JOIN Commentaire C ON A.id_article = C.id_article
GROUP BY A.id_article;


Explication :
Cette requête calcule le nombre de commentaires associés à chaque article.

🔹 Conclusion

Ces requêtes permettent d’analyser les données du blog et de répondre à des besoins métiers courants.