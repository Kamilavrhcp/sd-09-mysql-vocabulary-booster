SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
COUNT(newC.CustomerID) AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS newC ON c.Country = newC.Country AND c.CustomerID != newC.CustomerID
GROUP BY c.CustomerID
ORDER BY 1;