SELECT 
C1.ContactName AS 'Nome',
C1.Country AS 'País',
(SELECT COUNT(*) 
FROM w3schools.customers 
WHERE Country = C1.Country AND CustomerID <> C1.CustomerID 
) AS 'Número de compatriotas' 
FROM w3schools.customers AS C1
WHERE (SELECT COUNT(*) 
FROM w3schools.customers 
WHERE Country = C1.Country AND CustomerID <> C1.CustomerID 
) > 0
ORDER BY C1.ContactName;
