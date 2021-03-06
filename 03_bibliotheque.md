# Exercices Base de donnée Bibliothèque
## EX01 
En face de chaque titre d'ouvrage (par ordre alphabétique) afficher le nom et prénom de son auteur.
```SQL
SELECT livres.LivTitre AS "Titre", auteurs.AutNom AS "Nom auteur", auteurs.AutPrenom AS "Prénom auteur" 
FROM livres
INNER JOIN auteurs ON livres.LivAutID = auteurs.AutID
ORDER BY livres.LivTitre
```

## EX02
Afficher le nom et le prenom des emprunteurs suivi de la date de ses emprunts.
```SQL
SELECT personnes.PerNom AS "Nom", personnes.PerPrenom AS "Prenom", emprunts.EmpDatePret AS "Date emprunt" 
FROM emprunts
INNER JOIN personnes ON emprunts.EmpPerID = personnes.PerID
ORDER BY personnes.PerID
```

## EX03
Affichez le titre et l'auteur des ouvrages empruntés suivi du nom de leur emprunteurs.
```SQL
SELECT livres.LivTitre AS "Titre", auteurs.AutNom AS "Auteur" , personnes.PerNom AS "Nom emprunteur"
FROM emprunts
INNER JOIN personnes ON emprunts.EmpPerID = personnes.PerID
INNER JOIN livres ON livres.LivID = emprunts.EmpLivID
INNER JOIN auteurs ON auteurs.AutID = livres.LivAutID
ORDER BY livres.LivTitre
```

## EX04
A la suite de problèmes de saisie informatique, il existe un certain nombre d'emprunteurs sans emprunts. Affichez les nom d'emprunteurs, suivi de l'identifiant de tous les emprunts qu'il y en ait un ou non.
```SQL
SELECT personnes.PerNom AS "Nom emprunteur", emprunts.EmpID AS "Identifiant emprunt" 
FROM personnes
LEFT JOIN emprunts ON emprunts.EmpPerID = personnes.PerID
```

## EX05
Réunissez dans une seule liste tous les titres de livres contenant le mot « nuit » et tous les titres contenant le mot « noire » par ordre décroissant de titre.
```SQL
SELECT livres.LivTitre AS "Titre" FROM livres
WHERE livres.LivTitre LIKE "%noire%" OR livres.LivTitre LIKE "%nuit%"
ORDER BY LivTitre DESC
```

## EX06
On veut afficher le titre des livres qui contiennent à la fois « noire » et « nuit ».
```SQL
SELECT livres.LivTitre AS "Titre" FROM livres
WHERE livres.LivTitre LIKE "%noire%" AND livres.LivTitre LIKE "%nuit%"	
```

## EX07
Affichez dans une colonne les noms et dans un autre colonne les téléphones des personnes (qu'elles aient emprunté ou non) et des editeurs.
```SQL
SELECT personnes.PerNom AS "Nom", personnes.PerTelephone AS "Numéro de téléphone" FROM personnes
UNION
SELECT editeurs.EdiNom, editeurs.EdiTelephone FROM editeurs	
```

## EX08
Sélectionnez sur une colonne Lecteurs/Auteurs tous les emprunteurs qui ont le même nom qu'un auteur.
```SQL
SELECT personnes.PerNom AS "Lecteur/Auteur" FROM personnes
WHERE personnes.PerNom IN (
    SELECT auteurs.AutNom FROM auteurs
)	
```

## EX09
Quels sont les livres qui n'ont jamais été empruntés ?
```SQL
SELECT livres.LivTitre AS "Livre jamais emprunté" FROM livres
LEFT JOIN emprunts ON livres.LivID = emprunts.EmpLivID
WHERE emprunts.EmpID IS NULL	
```

## EX10
Quels sont les livres qui ont été rendus dans les 15 jours.
```SQL
SELECT livres.LivTitre AS "Livre" FROM emprunts
INNER JOIN livres ON emprunts.EmpLivID = livres.LivID
WHERE DATEDIFF(emprunts.EmpDateRendu, emprunts.EmpDatePret) <= 15
GROUP BY livres.LivTitre
```
