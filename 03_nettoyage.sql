-- Y a-t-il des emails en double ?
SELECT email, COUNT(*) AS nb
FROM clients
GROUP BY email
HAVING COUNT(*) > 1;