SELECT 
    a.ContactName AS 'Nome',
    a.Country AS 'País',
    COUNT(a.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS a
        INNER JOIN
    w3schools.customers AS b ON a.Country = b.Country
        AND a.CustomerID <> b.CustomerID
GROUP BY a.ContactName , b.Country
ORDER BY Nome ASC;
