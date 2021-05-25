SELECT DISTINCT
c.ContactName AS `Nome`, c.Country AS `País`, (COUNT(*) - 1) AS `Número de compatriotas`
FROM
w3schools.customers AS c
GROUP BY c.Country
ORDER BY c.ContactName ASC;