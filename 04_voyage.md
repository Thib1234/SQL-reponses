# Exercices Base de donnée Voyage
## EX01 
Quel est le solde moyen des clients qui ont séjournés dans la station *Passac*.
```SQL
SELECT AVG(clients.CliSolde) AS 'Solde Moyen' FROM clients
INNER JOIN sejours ON clients.CliID = sejours.SejCliID
INNER JOIN stations ON sejours.SejStaID = stations.StaID
WHERE stations.StaNom = 'Passac'
```

## EX02
Affichez par stations, le nombre de clients.
```SQL
-- Attention DISTINCT obligatoire ici !!!
SELECT COUNT(DISTINCT clients.CliID) AS 'Nb Clients', stations.StaNom FROM clients
INNER JOIN sejours ON clients.CliID = sejours.SejCliID
INNER JOIN stations ON sejours.SejStaID = stations.StaID
GROUP BY stations.StaID
```

## EX03
Affichez pour Mr Fogg les activités disponibles/proposées par ordre alphabétique et leurs prix, uniquement pour celles dont le prix est inférieur à 150 € pour chacun de ses séjours.
```SQL
SELECT sejours.SejID AS 'Numero de sejour', activites.ActLibelle AS 'Activite', activites.ActPrix AS 'Prix' FROM clients
INNER JOIN sejours ON clients.CliID = sejours.SejCliID
INNER JOIN stations ON sejours.SejStaID = stations.StaID
INNER JOIN activites ON stations.StaID = activites.ActStaID
WHERE clients.CliNom = 'Fogg' AND activites.ActPrix < 150
ORDER BY sejours.SejID, activites.ActLibelle
```

## EX04
Affichez les stations ainsi que leurs capacités, lieux, régions et tarifs pour lesquelles il n’y a aucune activité proposée.
```SQL
SELECT stations.StaNom, stations.StaCapacite, stations.StaLieu, stations.StaRegion, stations.StaTarif FROM stations
LEFT JOIN activites ON stations.StaID = activites.ActStaID
WHERE activites.ActID IS NULL   
```

## EX05
Affichez le nom des clients qui ont réservé plus de 3 séjours.
```SQL
SELECT clients.CliNom AS 'Bon clients' FROM clients
INNER JOIN sejours ON clients.CliID = sejours.SejCliID
GROUP BY clients.CliID
HAVING COUNT(clients.CliID) > 3
```

## EX06
Affichez le nom et prénom des clients qui n’ont jamais été à *Passac*.
```SQL
SELECT clients.CliNom, clients.CliPrenom FROM clients
WHERE clients.CliID NOT IN (
	SELECT clients.CliID FROM clients
	INNER JOIN sejours ON clients.CliID = sejours.SejCliID
	INNER JOIN stations ON sejours.SejStaID = stations.StaID
	WHERE stations.StaNom = 'Passac'
)
```

## EX07
Quelle est le nom et le coût de l’activité la plus cher de *Venusa* ?
```SQL
SELECT activites.ActLibelle, activites.ActPrix FROM stations
INNER JOIN activites ON stations.StaID = activites.ActStaID
WHERE stations.StaNom = 'Venusa' AND activites.ActPrix = (
	SELECT MAX(a2.ActPrix) FROM stations s2
	INNER JOIN activites a2 ON s2.StaID = a2.ActStaID
	WHERE s2.StaNom = 'Venusa'
)
```