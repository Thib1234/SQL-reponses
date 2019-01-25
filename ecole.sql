EX01

SELECT FLOOR(AVG(DATEDIFF("2018-12-20",EtuNaiss)/365.25)) as 'age', EtuSexe
FROM etudiants
GROUP BY(EtuSexe)

EX02

SELECT Pronom, CouNom
FROM professeurs
INNER JOIN cours ON ProID=CouProID
WHERE CouNom="Histoire"

EX03

SELECT Etunom, PtsCote, CouNom
FROM etudiants
INNER JOIN points ON EtuID=PtsEtuID
INNER JOIN cours ON PtsCouID=CouID
WHERE isnull(PtsCote) AND CouNom="Sociologie"

EX04

SELECT CouNom, ProNom
FROM cours
INNER JOIN professeurs ON CouProID=ProID
WHERE ProStatut="AS" OR ProStatut="MCF"


EX05
SELECT EtuNom, EtuPrenom, CouNom, PtsCote
FROM etudiants
INNER JOIN points ON EtuID=PtsEtuID
INNER JOIN cours ON PtsCouID=CouID
WHERE points.PtsCote
ORDER BY EtuNom, EtuPrenom ASC

EX06

SELECT PtsCote, CouNom, EtuNom, (FLOOR(DATEDIFF(CURRENT_DATE, EtuNaiss)/365)) AS 'age', EtuSexe
FROM cours
INNER JOIN points ON CouID=PtsCouID
INNER JOIN etudiants ON PtsEtuID=EtuID
WHERE CouNom="Informatique" AND PtsCote > (
    SELECT AVG(PtsCote)
    FROM points
    GROUP BY(CouNom)
    )

EX07

SELECT  ProNom as "PROF", ProStatut
from professeurs
INNER JOIN cours ON ProID=CouProID
GROUP BY(CouProID)
HAVING COUNT(CouProID)>1

EX08

SELECT Counom AS 'Cours',COUNT(etuID) AS "Réussites"
FROM cours
INNER JOIN points ON CouID=PtsCouID
INNER JOIN etudiants ON PtsEtuID=EtuID
WHERE PtsCote >=10
GROUP BY(CouNom)

EX09


SELECT etudiants.EtuNom, etudiants.EtuPrenom, etudiants.EtuSexe
FROM etudiants
INNER JOIN points ON etudiants.EtuID=points.PtsEtuID
WHERE points.PtsCouID=4 AND points.PtsCote > 
(
    SELECT p2.PtsCote
    FROM points p2
    WHERE p2.PtsCouID = 3 AND p2.PtsEtuID = etudiants.EtuID
)

EX 10

SELECT etudiants.EtuNom, cours.CouNom
from etudiants
INNER JOIN points ON EtuID=PtsEtuID
INNER JOIN cours ON PtsCouID=CouID
WHERE isnull(ptsCote)