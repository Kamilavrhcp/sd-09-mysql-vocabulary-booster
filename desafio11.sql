SELECT 
cust.ContactName AS `Name`, 
cust.Country AS 'País',
(
SELECT COUNT(*) - 1
FROM w3schools.customers
WHERE Country = cust.Country
GROUP BY Country
) AS 'Número de compatriotas'
FROM w3schools.customers AS cust
HAVING `Número de compatriotas` > 0
ORDER BY cust.ContactName;
