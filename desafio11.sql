SELECT 
t1.ContactName AS Nome,
t1.Country AS País,
COUNT(t2.Country) AS `Número de compatriotas`
FROM w3schools.customers AS t1
INNER JOIN w3schools.customers AS t2 ON t2.CustomerID != t1.CustomerID
WHERE t1.Country = t2.Country 
GROUP BY t1.ContactName, t1.Country
ORDER BY t1.ContactName;
