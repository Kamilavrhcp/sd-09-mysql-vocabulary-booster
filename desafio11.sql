SELECT 
firstTable.ContactName AS 'Nome',
firstTable.Country AS 'País',
(SELECT COUNT(*) FROM w3schools.customers AS secondTable WHERE firstTable.Country =  secondTable.Country) - 1 AS "Número de compatriotas"
FROM
w3schools.customers AS firstTable
WHERE ((SELECT COUNT(*) FROM w3schools.customers AS secondTable WHERE firstTable.Country =  secondTable.Country) - 1) > 0
ORDER BY firstTable.ContactName;
