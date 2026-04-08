-- Q1 : Chiffre d'affaires total des commandes livrées
-- Résultat attendu : une ligne avec le total en FCFA
SELECT
SUM(total_commande) AS ca_total_fcfa,
COUNT(*) AS nb_commandes_livrees
FROM commandes
WHERE statut = 'livree';
-- Résultat attendu (vos données) :
-- ca_total_fcfa | nb_commandes_livrees
-- 1 604 500 | 21

-- Q2 : Combien de commandes ont été passées au total ? Donnez le détail par statut
-- (livrée, annulée, en transit)

SELECT statut, COUNT (*) as nb_commandes_livrees
FROM commandes
GROUP BY statut


-- Q3 : Quels sont les 5 clients qui ont généré le plus de chiffre d'affaires (commandes
-- livrées uniquement) ? Affichez leur nom, email et total dépensé.

select cl.nom, cl.email, SUM(co.total_commande) as total_depense
from clients cl 
JOIN commandes co on cl.client_id = co.commande_id
where co.statut = 'livree'
Group by cl.nom, cl.email 
order by total_depense DESC 
Limit 5 


-- Q4 : Combien y a-t-il de clients par segment (Standard, Premium, VIP) ? Quel est le CA
--moyen par segment ?

SELECT 
    cl.segment, 
    COUNT(DISTINCT cl.client_id) AS nombre_de_clients,
    ROUND(AVG(co.total_commande)::numeric, 2) AS ca_moyen_par_commande
FROM clients cl
LEFT JOIN commandes co ON cl.client_id = co.client_id
GROUP BY cl.segment
ORDER BY ca_moyen_par_commande DESC;


-- Q5 : Quel est le produit le plus vendu en quantité totale ? Affichez le top 5 des produits
-- avec leur quantité totale vendue

SELECT 
    p.nom_produit, p.categorie,
    SUM(dc.quantite) AS quantite_totale_vendue
FROM produits p
JOIN details_commande dc ON p.produit_id = dc.produit_id
GROUP BY p.nom_produit, p.categorie
ORDER BY quantite_totale_vendue DESC
LIMIT 5;


-- Q6 : Quel est le chiffre d'affaires total par catégorie de produit ? Triez du plus grand au
-- plus petit

SELECT 
    p.categorie, 
    SUM(dc.quantite * dc.prix_vente) AS chiffre_affaires_total
FROM produits p
JOIN details_commande dc ON p.produit_id = dc.produit_id
JOIN commandes c ON dc.commande_id = c.commande_id
WHERE c.statut != 'annulee' -- On exclut les ventes non réalisées
GROUP BY p.categorie
ORDER BY chiffre_affaires_total DESC;

-- Q7 : Quel est le mois avec le plus de ventes (en nombre de commandes livrées) ?
-- Affichez les 12 mois classés

SELECT 
    TO_CHAR(date_commande, 'Month') AS mois,
    EXTRACT(MONTH FROM date_commande) AS num_mois, -- Utile pour garder l'ordre chronologique si besoin
    COUNT(*) AS nombre_de_commandes
FROM commandes
WHERE statut = 'livree'
GROUP BY mois, num_mois
ORDER BY nombre_de_commandes DESC;

-- Q8 : Quelle ville reçoit le plus de livraisons ? Donnez le top 5 des villes de livraison
-- avec le CA correspondant

SELECT 
    ville_livraison, 
    COUNT(*) AS nombre_de_livraisons,
    SUM(total_commande) AS chiffre_affaires_total
FROM commandes
WHERE statut = 'livree'
GROUP BY ville_livraison
ORDER BY chiffre_affaires_total DESC
LIMIT 5;

-- Q9 : Quels clients n'ont JAMAIS passé de commande depuis leur inscription ?
-- Affichez leur nom et date d'inscription

Select cl.nom, cl.date_inscription 
From clients cl 
left join commandes co on cl.client_id = co.client_id 
where co.commande_id is null; 

-- Q10 : Parmi les produits vendus, lesquels ont bénéficié d'une remise ? Affichez le nom,
-- la remise moyenne et le nombre de fois remisés

Select pr.nom_produit, 
       ROUND(AVG(dc.remise * 100)::numeric, 2) AS remise_moyenne, 
       COUNT(dc.detail_id) as nombre_de_fois_remisés
From produits pr
JOIN details_commande dc on pr.produit_id = dc.produit_id
where dc.remise > 0 
GROUP BY pr.nom_produit 
ORDER BY nombre_de_fois_remisés DESC

-- Q11 : Classez chaque client dans une catégorie selon son total dépensé : 'VIP' (>200
--000 FCFA), 'Fidèle' (50 000–200 000), 'Occasionnel' (<50 000). Affichez le nom et sa
--catégorie

SELECT 
    cl.nom, 
    SUM(co.total_commande) AS depenses_totales,
    CASE 
        WHEN SUM(co.total_commande) > 200000 THEN 'VIP'
        WHEN SUM(co.total_commande) BETWEEN 50000 AND 200000 THEN 'Fidèle'
        ELSE 'Occasionnel'
    END AS categorie_depense
FROM clients cl
JOIN commandes co ON cl.client_id = co.client_id
WHERE co.statut = 'livree'
GROUP BY cl.nom
ORDER BY depenses_totales DESC;

-- Q12 : Quel est le panier moyen par commande (livrée) ? Comparez-le par ville de
--livraison et identifiez quelle ville a le panier moyen le plus élevé

SELECT 
    ville_livraison, 
    COUNT(commande_id) AS nombre_de_commandes,
    ROUND(AVG(total_commande)::numeric, 2) AS panier_moyen
FROM commandes
WHERE statut = 'livree'
GROUP BY ville_livraison
ORDER BY panier_moyen DESC;


       