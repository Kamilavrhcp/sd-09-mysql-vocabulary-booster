SELECT
T1.ContactName AS 'Nome',
T1.Country AS 'País',
(SELECT COUNT(*) FROM w3schools.customers WHERE T1.Country = Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS T1
ORDER BY T1.ContactName ASC;
