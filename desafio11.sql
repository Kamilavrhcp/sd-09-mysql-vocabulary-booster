SELECT a.ContactName AS 'Nome',
a.Country AS 'País',
(COUNT(*) - 1) AS 'Número de compatriotas'
FROM w3schools.customers AS a, w3schools.customers AS b
WHERE a.Country = b.Country
GROUP BY a.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY a.ContactName;
