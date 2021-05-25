SELECT
C1.ContactName AS 'Nome',
C1.Country AS 'País',
(
SELECT COUNT(C2.Country) FROM w3schools.customers AS C2
WHERE (C1.Country = C2.Country AND C1.ContactName <> C2.ContactName)
) AS 'Número de compatriotas'
FROM w3schools.customers AS C1
WHERE
(
SELECT COUNT(C2.Country) FROM w3schools.customers AS C2
WHERE (C1.Country = C2.Country AND C1.ContactName <> C2.ContactName)
) <> 0
ORDER BY 1 ASC;
