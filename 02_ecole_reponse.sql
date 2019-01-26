/*
    EX01 
    Afficher quel est l'âge moyen des garçons et des filles ?
*/

SELECT FLOOR(AVG(DATEDIFF(CURRENT_DATE,EtuNaiss)/365.25)) AS 'age_moyen', EtuSexe
FROM etudiants
GROUP BY(EtuSexe);

/*
    EX02
    Afficher le nom des enseignants d'histoire.
*/

SELECT ProNom
FROM professeurs
INNER JOIN cours ON ProID = CouProID
WHERE CouNom = "Histoire";

-- OU

SELECT ProNom
FROM cours 
INNER JOIN professeurs ON CouProID = ProID 
WHERE CouNom = "Histoire";

/*
    EX03
    Afficher les noms des étudiants qui n'ont pas de notes en Sociologie.
*/

SELECT EtuNom
FROM etudiants
INNER JOIN points ON EtuID = PtsEtuID
INNER JOIN cours ON PtsCouID = CouID
WHERE isnull(PtsCote) AND CouNom = "Sociologie";

-- OU

SELECT EtuNom 
FROM points 
INNER JOIN etudiants ON EtuID = PtsEtuID 
INNER JOIN cours ON PtsCouID = CouID 
WHERE isnull(PtsCote) AND CouNOm = "Sociologie"

/*
	EX04
	Afficher le nom des matières qui sont enseignées par des maîtres de conférences ou des assistants.
*/
SELECT CouNom
FROM cours
INNER JOIN professeurs ON CouProID=ProID
WHERE ProStatut="AS" OR ProStatut="MCF";


/*
	EX05
	Afficher par ordre alphabétique d’étudiant (nom et prénom), les points qu'il a obtenus dans chaque matière.
*/
SELECT EtuNom, EtuPrenom, PtsCote
FROM etudiants
INNER JOIN points ON EtuID=PtsEtuID
INNER JOIN cours ON PtsCouID=CouID
WHERE points.PtsCote
ORDER BY EtuNom ASC, EtuPrenom ASC;

/*
    EX06
    Afficher le nom, l'âge et le sexe des étudiants qui ont eu une note d'informatique supérieure
    à la moyenne générale du cours d’informatique de la classe.
*/

SELECT EtuNom, (FLOOR(DATEDIFF(CURRENT_DATE, EtuNaiss)/365)) AS 'age', EtuSexe
FROM cours
INNER JOIN points ON CouID=PtsCouID
INNER JOIN etudiants ON PtsEtuID=EtuID
WHERE CouNom="Informatique" AND PtsCote > (
	SELECT AVG(PtsCote)
	FROM points
	GROUP BY(CouNom)
);

-- OU

SELECT EtuNom, (FLOOR(DATEDIFF(CURRENT_DATE, EtuNaiss)/365)) AS 'age', EtuSexe 
FROM etudiants 
INNER JOIN points ON EtuID = PtsEtuID 
INNER JOIN cours ON PtsCouID = CouID 
WHERE PtsCote > (
	SELECT AVG(PtsCote) 
	FROM points 
	WHERE CouNom = "Informatique"
) AND CouNom = "Informatique";

/*  EX07
    Afficher le nom et le statut des enseignants qui enseignent dans plus d'une matière.
*/

SELECT  ProNom as "PROF", ProStatut
from professeurs
INNER JOIN cours ON ProID=CouProID
GROUP BY(CouProID)
HAVING COUNT(CouProID)>1;

/*
    EX08
    Afficher par cours le nombre d’élève qui ont réussi.
*/

SELECT Counom AS 'Cours', COUNT(etuID) AS "Réussites"
FROM cours
INNER JOIN points ON CouID=PtsCouID
INNER JOIN etudiants ON PtsEtuID=EtuID
WHERE PtsCote >=10
GROUP BY(CouNom);

-- OU

SELECT CouNom, COUNT(*) AS "Réussites"
FROM points 
INNER JOIN cours ON points.PtsCouID = cours.CouID 
WHERE points.PtsCote >= 10 
GROUP BY points.PtsCouID

/*  
    EX09
    Afficher le nom, le prénom et le sexe des étudiants qui ont une note en informatique supérieure à leur note de Mathématique.
*/


SELECT etudiants.EtuNom, etudiants.EtuPrenom, etudiants.EtuSexe
FROM etudiants
INNER JOIN points ON etudiants.EtuID=points.PtsEtuID
WHERE points.PtsCouID=4 AND points.PtsCote > 
(
	SELECT p2.PtsCote
	FROM points p2
	WHERE p2.PtsCouID = 3 AND p2.PtsEtuID = etudiants.EtuID
);

/*
    EX 10
    Pour les étudiants n'ayant pas de note dans une matière, afficher le nom de l'étudiant et le nom de la matière concernée.
*/

SELECT etudiants.EtuNom, cours.CouNom
FROM etudiants
INNER JOIN points ON EtuID=PtsEtuID
INNER JOIN cours ON PtsCouID=CouID
WHERE isnull(ptsCote);

/*
    EX 11
    Afficher, les matières pour lesquelles la moyenne des notes est inférieure à 10. Afficher le nom de l'enseignant correspondant.
*/

/*
    EX 12
    Afficher, pour chaque matière, qu'elle est la meilleure note et quel est le ou les étudiant qui l'ont obtenue.
*/

/*
    EX 13
    Afficher le nombre de garçons et le nombre de filles qui ont réussi tous les cours.
*/

/*
    EX 14
    Afficher, pour chaque sexe (Homme, Femme) la moyenne des notes, par cours, dans les matières enseignées par M Jacquet.
*/