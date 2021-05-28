SELECT
C.ContactName AS 'Nome',
C.Country AS 'País',
(SELECT (COUNT(*) - 1) AS T FROM w3schools.customers
WHERE C.Country = customers.Country) AS `Número de compatriotas`
FROM w3schools.customers C
GROUP BY C.ContactName, C.Country
HAVING `Número de compatriotas` > 0
ORDER BY C.ContactName;
