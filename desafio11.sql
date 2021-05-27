SELECT
    t1.ContactName AS `Nome`,
    t1.Country AS País,
    COUNT(t2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS t1
JOIN
    w3schools.customers AS t2
ON t2.Country = t1.Country AND t1.CustomerID <> t2.CustomerID
GROUP BY t1.ContactName, t1.Country
ORDER BY t1.ContactName;
