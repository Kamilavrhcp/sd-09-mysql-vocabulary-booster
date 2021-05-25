SELECT
c.ContactName AS `Nome`, c2.Country AS `País`, (COUNT(*) - 1) AS `Número de compatriotas`
FROM
w3schools.customers AS c, w3schools.customers AS c2
WHERE
c.Country = c2.Country
GROUP BY c2.Country, c.ContactName
ORDER BY c.ContactName ASC;
