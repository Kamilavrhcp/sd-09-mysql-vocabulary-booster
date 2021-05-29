SELECT C2.ContactName AS 'Nome', C2.Country AS `País`, (
SELECT COUNT(*) - 1 FROM w3schools.customers AS C1
WHERE C1.Country = C2.Country
GROUP BY Country) AS 'Número de compatriotas'
FROM w3schools.customers AS C2
WHERE (
SELECT COUNT(*) - 1 FROM w3schools.customers AS C1
WHERE C1.Country = C2.Country
GROUP BY Country) > 0 ORDER BY 1;
