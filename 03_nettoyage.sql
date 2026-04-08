-- Y a-t-il des emails en double ?
SELECT email, COUNT(*) AS nb
FROM clients
GROUP BY email
HAVING COUNT(*) > 1;

-- Clients sans email ou sans ville
SELECT client_id, nom, email, ville
FROM clients
WHERE email IS NULL OR ville IS NULL;

-- Prix négatifs ou nuls (impossible)
SELECT * FROM produits
WHERE prix_unitaire <= 0;

-- Commandes avec total négatif
SELECT commande_id, total_commande FROM commandes
WHERE total_commande < 0;

-- Quels statuts existent dans la base
SELECT DISTINCT statut, COUNT(*) AS nb
FROM commandes
GROUP BY statut;

-- Commandes sans client correspondant
SELECT c.commande_id, c.client_id
FROM commandes c
LEFT JOIN clients cl ON c.client_id = cl.client_id
WHERE cl.client_id IS NULL;

