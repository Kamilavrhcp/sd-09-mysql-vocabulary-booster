SELECT
c.ContactName AS `Nome`, c2.Country AS `País`, COUNT(*) AS `Número de compatriotas`
FROM
w3schools.customers AS c, w3schools.customers AS c2
WHERE
c.Country = c2.Country
AND
c.CustomerID <> c2.CustomerID
GROUP BY c2.Country, c.ContactName
ORDER BY c.ContactName ASC;
