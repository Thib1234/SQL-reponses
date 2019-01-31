# Exercices Base de donnée Ryanair
## EX01
Donner toutes les informations sur les pilotes
```sql
	SELECT * 
	FROM pilotes;
```

## EX02
Donner le nom et le prénom des pilotes
```sql
	SELECT PilNom, PilPrenom
	FROM pilotes;
```

## EX03
Sélectionner l’identificateur et le nom de la ville de chaque ville
```sql
	SELECT VilID, VilNom
	FROM villes2;
```

## EX04
Sélectionner les noms des pilotes gagnant plus de 25000 €
```sql
	SELECT PilSalaire, PilNom
	FROM pilotes
	WHERE PilSalaire>25000;
```

## EX05
Quels sont les noms des pilotes gagnant entre 20000 et 25000 € ?
```sql
	SELECT PilNom
	FROM pilotes
	WHERE PilSalaire BETWEEN 20000 AND 25000;
```

## EX06
Quel est la vitesse des boeings?
```sql
	SELECT ModVitesse, ModNom
	FROM modeles
	WHERE ModNom LIKE "b%";
```

## EX07
Quels sont les noms des pilotes dont le salaire est inconnu?
```sql
	SELECT PilNom
	FROM pilotes
	WHERE PilSalaire IS NULL;
```

## EX08
Quelles sont les villes de départ des différents vols
```sql
	SELECT DISTINCT VilNom
	FROM villes
	INNER JOIN vols ON vilID = VolDepartVilID;
```

## EX09
Sélectionner les noms des pilotes habitant Paris
```sql
	SELECT PilNom
	FROM pilotes
	INNER JOIN villes ON PilVilID=VilID
	WHERE VilNom = "Paris";
```

## EX10
Quelles sont les capacités des avions de type Airbus ?
```sql
	SELECT DISTINCT AviNombreDePlaces, ModNom
	FROM avions
	INNER JOIN modeles ON AviModID=ModID
	WHERE ModNom LIKE "a%";
```

## EX11
Quels sont les vols au départ de Nice desservant Paris
```sql
	--!!!! Attention difficile !!!!⚠️ 

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
```

## EX12
Quels sont les avions (identifiant de l’avion + nom du modèles) de capacité supérieure à 250 personnes ou localisés à Paris ?
```sql
	SELECT aviID, modNom
	FROM avions
	INNER JOIN modeles ON AviModID=ModID
	INNER JOIN villes ON AviVilID=VilID
	WHERE AviNombreDePlaces > 250 OR VilNom="paris";
```

## EX13
Quels sont les vols au départ de Paris et dont l’heure d’arrivée est inférieure à 15h00 ?
```sql
	SELECT volID
	FROM vols
	INNER JOIN villes ON VolDepartVilID = vilID
	WHERE vilnom = "paris" AND VolHeureArrive < "15:00:00";
```

## EX14
Quel est le salaire moyen des pilotes parisiens ?
```sql
	SELECT AVG(pilSalaire)
	FROM pilotes
	INNER JOIN villes ON pilVilID = vilID
	WHERE vilNom = "paris";
```

## EX15
Trouver le nombre de vols au départ de Paris
```sql
	SELECT count(volid)
	FROM vols
	INNER JOIN villes
	ON VolDepartVilID = vilID
	WHERE vilNom = "paris";
```

## EX16
Trouver le nom des pilotes effectuant des vols au départ de Paris ?
SELECT DISTINCT PilNom FROM pilotes
```sql
	INNER JOIN vols ON VolPilID = PilID 
	INNER JOIN villes ON VolDepartVilID = VilID
	WHERE VilNom = "Paris";
```

## EX17
Trouver le nom des pilotes effectuant des vols au départ de Paris sur des Airbus.
```sql
	SELECT DISTINCT PilNom
	FROM pilotes 
	INNER JOIN vols ON VolPilID = PilID 
	INNER JOIN villes ON VolDepartVilID = VilID
	INNER JOIN avions ON VolAviID = AviID
	INNER JOIN modeles ON ModID = AviModID
	WHERE VilNom = "Paris" AND ModNom LIKE 'a%';
```

## EX18
Quels sont les avions localisés dans la même ville que l’avion numéro 3.
```sql
	SELECT AviID FROM avions
	INNER JOIN villes ON AviVilID = VilID
	WHERE VilID = 
	(
		SELECT AviVilID 
		FROM avions 
		WHERE AviID = 3
	)
	AND AviID != 3;
```

## EX19
Quels sont les pilotes dont le salaire est plus élevé que le salaire moyen des pilotes ?
```sql
	SELECT DISTINCT PilNom
	FROM pilotes 
	WHERE PilSalaire > 
	(
		SELECT AVG(PilSalaire)
		FROM pilotes
	);
```

## EX20
Quels sont les noms des pilotes niçois qui gagnent plus que tous les pilotes parisiens ?
```sql
	SELECT PilNom AS "Pilote" 
	FROM pilotes 
	INNER JOIN villes ON PilVilID = VilID 
	WHERE VilNom="nice" AND PilSalaire > (
		SELECT MAX(Pilsalaire)
		FROM pilotes
		INNER JOIN villes ON PilVilID = VilID
		WHERE VilNom = "Paris"
	);
```

## EX21
Donner le nom des pilotes niçois qui gagnent plus qu’au moins un pilote parisien.
```sql
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
```

## EX22
Rechercher les pilotes ayant même ville et même salaire que TIM.
```sql
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
```

## EX23
Donner la liste des pilotes parisiens par ordre de salaire décroissant puis par ordre alphabétique des noms.
```sql
	SELECT PilNom, PilSalaire
	FROM pilotes
	INNER JOIN villes ON PilVilID = VilID
	WHERE VilNom = "Paris"
	ORDER BY PilSalaire DESC, PilNom ASC;
```

## EX24
Quel est le nombre de vols effectués par chacun des pilotes ?
```sql
	SELECT COUNT(VolID), PilNom 
	FROM vols
	INNER JOIN pilotes
	ON VolPilID = PilID
	GROUP BY PilNom;
	-- REM: GROUP BY obligatoire car on utilise tune fonction d'agrégation dans la clause SELECT. 
	-- Dès lors, toutes les autres colonnes de la clause SELECT (hors fonction d'agrégation) doit être dan
```

## EX25
Trouver le nombre de vols par pilote et par avion, en affichant à chaque fois le modèle
```sql
	SELECT COUNT(VoliID), PilNom, AviID, ModNom 
	FROM vols
	INNER JOIN pilotes ON VolPilID = PilID
	INNER JOIN avions ON AviID = VolAviID
	INNER JOIN modeles ON AviModID = ModID
	GROUP BY PilNom, AviID, ModNom;
```

## EX26
Donner le nombre de vols par pilote seulement s’il est supérieur à 5.
```sql
	SELECT COUNT(VolID), PilNom
	FROM vols
	INNER JOIN pilotes ON VolPilID = PilID
	GROUP BY PilNom 
	HAVING COUNT(VolID) > 5;
	-- HAVING permet d'utiliser les fonctions d'agrégations comme la clause WHERE
```

## EX27
Donner le nom des pilotes effectuant au moins 5 vols
```sql
	SELECT COUNT(VolID), PilNom 
	FROM vols
	INNER JOIN pilotes ON VolPilID = PilID
	GROUP BY PilNom 
	HAVING COUNT(VolID) >= 5;
```

## EX28
Quels sont les numéros d’avions qui ne volent pas ?
```sql
	SELECT AviID 
	FROM avions
	LEFT JOIN vols ON AviID = VolAviID
	WHERE ISNULL(VolID);
```