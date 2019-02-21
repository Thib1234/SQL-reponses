# Exercices Base de donnée Comptoirs
<details>
<summary>
  <strong>EX01 :</strong>
  Quels sont les employés qui travaillent à <em>London</em> ?
</summary>
<br>
  
```SQL
SELECT t_employes.emp_Nom, t_employes.emp_Prenom FROM t_employes
WHERE t_employes.emp_Ville = 'London'
```
</details>
<br>

<details>
<summary>
  <strong>EX02 :</strong>
  Quelles sont toutes les informations du client dont le cliid est <em>dracd</em>.
</summary>
<br>
  
```SQL
SELECT * FROM t_clients
WHERE t_clients.cli_code = 'DRACD'
```
</details>
<br>

<details>
<summary>
  <strong>EX03 :</strong>
  Afficher les clients dont la fonction n’est ni acheteur ni chef des ventes.
</summary>
<br>
  
```SQL
SELECT * FROM t_clients
WHERE t_clients.cli_Fonction != 'Acheteur' AND t_clients.cli_Fonction != 'Chef des ventes'
```
</details>
<br>

<details>
<summary>
  <strong>EX04 :</strong>
  Quel est/sont le ou les client(s) qui a acheté le moins de produit <em>tofu</em>.
</summary>
<br>

```SQL
SELECT tcli2.cli_societe, tcli2.cli_Contact, SUM(tdet2.det_Qte) AS 'Qte Tofu acheté' FROM t_clients tcli2
INNER JOIN t_commandes tcom2 ON tcli2.cli_code = tcom2.com_client
INNER JOIN t_detcom tdet2 ON tcom2.com_pk = tdet2.det_com_pk
INNER JOIN t_produits tprod2 ON tdet2.det_prod_pk = tprod2.prod_pk
WHERE tprod2.prod_nom = 'Tofu'
GROUP BY tcli2.cli_code
HAVING SUM(tdet2.det_Qte) = (
	SELECT MIN(table_qte.Qte) FROM (
		SELECT t_clients.cli_societe, t_clients.cli_Contact, SUM(t_detcom.det_Qte) AS 'Qte' FROM t_clients
		INNER JOIN t_commandes ON t_clients.cli_code = t_commandes.com_client
		INNER JOIN t_detcom ON t_commandes.com_pk = t_detcom.det_com_pk
		INNER JOIN t_produits ON t_detcom.det_prod_pk = t_produits.prod_pk
		WHERE t_produits.prod_nom = 'Tofu'
		GROUP BY t_clients.cli_code
	) table_qte
)
```
</details>
<br>

<details>
<summary>
  <strong>EX05 :</strong>
  Quel est le produit qui a le prix unitaire le plus élevé ?
</summary>
<br>
  
```SQL
SELECT t_produits.prod_nom, t_produits.prod_pu FROM t_produits
WHERE t_produits.prod_pu = (
    SELECT MAX(t_produits.prod_pu) FROM t_produits
)
```
</details>
<br>

<details>
<summary>
  <strong>EX06 :</strong>
  Combien d’employé ont effectué une commande en juillet 1997 ?
</summary>
  <br>

```SQL
SELECT COUNT(DISTINCT t_employes.emp_pk) 'Nb Employes' FROM t_employes
INNER JOIN t_commandes ON t_employes.emp_pk = t_commandes.com_emp_pk
WHERE t_commandes.com_date LIKE '1997-07%'
```
</details>
<br>

<details>
<summary>
  <strong>EX07 :</strong>
  Affichez pour chaque employé la somme de son chiffre d’affaire (les remises (%) doivent entrer en ligne de compte).
</summary>
<br>
  
```SQL
SELECT t_employes.emp_Nom, t_employes.emp_Prenom, 
SUM(t_detcom.det_Pu * t_detcom.det_Qte - (t_detcom.det_Pu * t_detcom.det_Qte * t_detcom.det_remise)) AS 'Chiffre d\'affaire'
FROM t_employes
INNER JOIN t_commandes ON t_employes.emp_pk = t_commandes.com_emp_pk
INNER JOIN t_detcom ON t_commandes.com_pk = t_detcom.det_com_pk
GROUP BY t_employes.emp_pk
```
</details>
<br>

<details>
<summary>
  <strong>EX08 :</strong>
  On considère les employés comme des commerciaux. Quel est celui qui a le chiffre d’affaires le moins élevé (les remises (%) doivent entrer en ligne de compte).
</summary>
<br>

```SQL
SELECT t_employes.emp_Nom, t_employes.emp_Prenom, 
SUM(t_detcom.det_Pu * t_detcom.det_Qte - (t_detcom.det_Pu * t_detcom.det_Qte * t_detcom.det_remise)) AS 'Chiffre d\'affaire'
FROM t_employes
INNER JOIN t_commandes ON t_employes.emp_pk = t_commandes.com_emp_pk
INNER JOIN t_detcom ON t_commandes.com_pk = t_detcom.det_com_pk
GROUP BY t_employes.emp_pk
HAVING SUM(t_detcom.det_Pu * t_detcom.det_Qte - (t_detcom.det_Pu * t_detcom.det_Qte * t_detcom.det_remise)) = (
    SELECT MIN(ca) FROM (
        SELECT SUM(t_detcom.det_Pu * t_detcom.det_Qte - (t_detcom.det_Pu * t_detcom.det_Qte * t_detcom.det_remise)) AS 'ca'
	    FROM t_employes
	    INNER JOIN t_commandes ON t_employes.emp_pk = t_commandes.com_emp_pk
	    INNER JOIN t_detcom ON t_commandes.com_pk = t_detcom.det_com_pk
	    GROUP BY t_employes.emp_pk 
    ) table_ca
)
```
</details>
<br>

<details>
<summary>
  <strong>EX09 :</strong>
  Quel(s) est la catégorie de produits que le fournisseur <em>ma maison</em> a le plus vendu.
</summary>
<br>
  
```SQL
SELECT t_categories.cat_nom FROM t_fournisseurs
INNER JOIN t_produits ON t_fournisseurs.four_pk = t_produits.prof_four_pk
INNER JOIN t_categories ON t_produits.prod_cat_pk = t_categories.cat_pk
INNER JOIN t_detcom ON t_produits.prod_pk = t_detcom.det_prod_pk
WHERE t_fournisseurs.four_soc = 'ma maison'
GROUP BY t_categories.cat_pk
HAVING SUM(t_detcom.det_Qte) = (
	SELECT MAX(t_sum_categ.sum_by_categ) FROM (
		SELECT SUM(t_detcom2.det_Qte) AS 'sum_by_categ' FROM t_fournisseurs t_four2
		INNER JOIN t_produits t_prod2 ON t_four2.four_pk = t_prod2.prof_four_pk
		INNER JOIN t_categories t_cat2 ON t_prod2.prod_cat_pk = t_cat2.cat_pk
		INNER JOIN t_detcom t_detcom2 ON t_prod2.prod_pk = t_detcom2.det_prod_pk
		WHERE t_four2.four_soc = 'ma maison'
		GROUP BY t_cat2.cat_pk
	) t_sum_categ
)
```
</details>
<br>

<details>
<summary>
  <strong>EX10 :</strong>
  Quel(s) est le pays abritant à la fois des employés, des clients et des fournisseurs.
</summary>
<br>
  
```SQL
SELECT DISTINCT t_fournisseurs.four_pays FROM t_fournisseurs
WHERE t_fournisseurs.four_pays IN (
    SELECT DISTINCT t_employes.emp_Pays FROM t_employes
    WHERE t_employes.emp_Pays IN (
        SELECT DISTINCT t_clients.cli_Pays FROM t_clients
    )
)
```
</details>
<br>

<details>
<summary>
  <strong>EX11 :</strong>
  Parmi les commandes dont le prix total est supérieur à la moyenne des prix totaux quelle est la moyenne de celles-ci.
</summary>
<br>

```SQL
SELECT AVG(t_prix_big_com.prix_com) AS 'Prix Total' FROM (
	SELECT t_commandes.com_pk, SUM(t_detcom.det_Pu * t_detcom.det_Qte - (t_detcom.det_Pu * t_detcom.det_Qte * t_detcom.det_remise)) AS 'prix_com' FROM t_commandes
	INNER join t_detcom ON t_commandes.com_pk = t_detcom.det_com_pk
	GROUP BY t_commandes.com_pk
	HAVING prix_com > (
		SELECT AVG(t_prix_com.prix_com2) FROM (
			SELECT SUM(t_detcom2.det_Pu * t_detcom2.det_Qte - (t_detcom2.det_Pu * t_detcom2.det_Qte * t_detcom2.det_remise)) AS 'prix_com2' FROM t_commandes tcom2
			INNER join t_detcom t_detcom2 ON tcom2.com_pk = t_detcom2.det_com_pk
			GROUP BY tcom2.com_pk
		) t_prix_com
	)
) t_prix_big_com
```
</details>
<br>

<details>
<summary>
  <strong>EX12 :</strong>
  Quels sont les produits dont le prix unitaire est supérieur à la moyenne des prix unitaire et qu’<em>alfki</em> n’a pas acheté.
</summary>
<br>
  
```SQL
SELECT DISTINCT t_produits.prod_nom, t_produits.prod_pu FROM t_produits
INNER JOIN t_detcom ON t_produits.prod_pk = t_detcom.det_prod_pk
INNER JOIN t_commandes ON t_detcom.det_com_pk = t_commandes.com_pk
WHERE t_produits.prod_pu > (
	SELECT AVG(t_produits.prod_pu) FROM t_produits
) AND t_commandes.com_client != 'alfki'
```
</details>
