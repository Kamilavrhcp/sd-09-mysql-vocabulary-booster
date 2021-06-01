SELECT ContactName AS Nome,
Country AS País,
(SELECT COUNT(Country)
FROM w3schools.customers
WHERE Country = País AND ContactName <> Nome) AS `Número de compatriotas`
FROM w3schools.customers
ORDER BY Nome;
