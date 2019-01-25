-- Ex1
SELECT * 
FROM pilotes;

-- Ex2
SELECT PilNom, PilPrenom
FROM pilotes;

-- Ex3
SELECT VilID, VilNom
FROM villes2;

-- Ex4
SELECT PilSalaire, PilNom
FROM pilotes
WHERE PilSalaire>25000;

-- Ex5
SELECT PilNom
FROM pilotes
WHERE PilSalaire BETWEEN 20000 AND 25000;

-- Ex6
SELECT ModVitesse, ModNom
FROM modeles
WHERE ModNom LIKE "b%";

-- Ex7
SELECT PilNom
FROM pilotes
WHERE PilSalaire IS NULL;

-- Ex8
SELECT DISTINCT VilNom
FROM villes
INNER JOIN vols ON vilID = VolDepartVilID;

-- Ex9
SELECT PilNom
FROM pilotes
INNER JOIN villes ON PilVilID=VilID
WHERE VilNom = "Paris";

-- Ex10
SELECT DISTINCT AviNombreDePlaces, ModNom
FROM avions
INNER JOIN modeles ON AviModID=ModID
WHERE ModNom LIKE "a%";

-- Ex11 !!!! Attention difficile !!!!⚠️ 

-- Explications de l'exercice: (by Thibault)
-- Vols au depart de nice qui desservent paris 
-- Table vols et villes
-- Id des vols dont la ville d'arrivée est paris :
-- 	SELECT VolID 
-- 	FROM vols
-- 	INNER JOIN villes ON VilID=VolArriveVilID
-- 	WHERE vilNom="paris"
-- Voilà la réponse :

SELECT VolID
FROM vols
INNER JOIN villes ON VolDepartVilID=VilID
WHERE vilNom="nice" and VolID IN
	(
		SELECT VolID 
  		FROM vols
    	INNER JOIN villes ON VilID=VolArriveVilID
    	WHERE vilNom="paris"
   	);

-- Le select supérieur
-- 1 8 10 13
-- Le select inférieur
-- 8 10 14
-- Donc on récupère les 8 et 10 qui sont les memes dans les deux select


-- EX12
SELECT aviID, modNom
FROM avions
INNER JOIN modeles ON AviModID=ModID
INNER JOIN villes ON AviVilID=VilID
WHERE AviNombreDePlaces > 250 OR VilNom="paris";



-- 13
SELECT volID
FROM vols
INNER JOIN villes ON VolDepartVilID = vilID
WHERE vilnom = "paris" AND VolHeureArrive < "15:00:00";

-- 14
SELECT AVG(pilSalaire)
FROM pilotes
INNER JOIN villes ON pilVilID = vilID
WHERE vilNom = "paris";

-- 15
SELECT count(volid)
FROM vols
INNER JOIN villes
ON VolDepartVilID = vilID
WHERE vilNom = "paris";

-- 16
SELECT DISTINCT PilNom FROM pilotes
INNER JOIN vols ON VolPilID = PilID 
INNER JOIN villes ON VolDepartVilID = VilID
WHERE VilNom = "Paris";

-- 17
SELECT DISTINCT PilNom
FROM pilotes 
INNER JOIN vols ON VolPilID = PilID 
INNER JOIN villes ON VolDepartVilID = VilID
INNER JOIN avions ON VolAviID = AviID
INNER JOIN modeles ON ModID = AviModID
WHERE VilNom = "Paris" AND ModNom LIKE 'a%';

-- 18
SELECT AviID FROM avions
INNER JOIN villes ON AviVilID = VilID
WHERE VilID = 
(
	SELECT AviVilID 
	FROM avions 
	WHERE AviID = 3
)
AND AviID != 3;

-- 19
SELECT DISTINCT PilNom
FROM pilotes 
WHERE PilSalaire > 
(
	SELECT AVG(PilSalaire)
	FROM pilotes
);

-- 20
SELECT PilNom 
FROM pilotes 
INNER JOIN villes ON PilVilID = VilID 
WHERE VilNom="nice" AND PilSalaire > (
    SELECT MAX(Pilsalaire)
    FROM pilotes
    INNER JOIN villes ON PilVilID = VilID
	WHERE VilNom = "Paris"
);

-- 21
SELECT PilSalaire, PilNom
FROM pilotes
INNER JOIN villes ON PilVilID = VilID
WHERE VilNom="paris" AND PilSalaire >= 
(
	SELECT MAX(Pilsalaire)
	FROM pilotes
	INNER JOIN villes ON PilVilID = VilID
	WHERE VilNom = "Nice"
);

-- 22
SELECT PilNom 
FROM pilotes
INNER JOIN villes ON PilVilID = VilID
WHERE (PilSalaire, PilVilID) = 
(
	SELECT PilSalaire, PilVilID 
	FROM pilotes
	INNER JOIN villes ON PilVilID = VilID 
	WHERE PilNom = "Tim"
);
-- REM: l'ordre du SELECT (PilSalaire et PilVilID) doit être le même que celui du WHERE

-- 23
SELECT PilNom, PilSalaire
FROM pilotes
INNER JOIN villes ON PilVilID = VilID
WHERE VilNom = "Paris"
ORDER BY PilSalaire DESC, PilNom ASC;

-- 24
SELECT COUNT(VolID), PilNom 
FROM vols
INNER JOIN pilotes
ON VolPilID = PilID
GROUP BY PilNom;
-- REM: GROUP BY obligatoire car on utilise tune fonction d'agrégation dans la clause SELECT. 
-- Dès lors, toutes les autres colonnes de la clause SELECT (hors fonction d'agrégation) doit être dan
-- 25
SELECT COUNT(VoliID), PilNom, AviID, ModNom 
FROM vols
INNER JOIN pilotes ON VolPilID = PilID
INNER JOIN avions ON AviID = VolAviID
INNER JOIN modeles ON AviModID = ModID
GROUP BY PilNom, AviID, ModNom;

-- 26
SELECT COUNT(VolID), PilNom
FROM vols
INNER JOIN pilotes ON VolPilID = PilID
GROUP BY PilNom 
HAVING COUNT(VolID) > 5;
-- HAVING permet d'utiliser les fonctions d'agrégations comme la clause WHERE

-- 27
SELECT COUNT(VolID), PilNom 
FROM vols
INNER JOIN pilotes ON VolPilID = PilID
GROUP BY PilNom 
HAVING COUNT(VolID) >= 5;

-- 28
SELECT AviID 
FROM avions
LEFT JOIN vols ON AviID = VolAviID
WHERE ISNULL(VolID);






