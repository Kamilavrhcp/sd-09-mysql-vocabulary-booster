SELECT 
    ContactName AS Nome,
    Country AS País,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers b
        WHERE
            a.Country = b.Country) AS `Número de compatriotas`
FROM
    w3schools.customers a
HAVING `Número de compatriotas` > 0
ORDER BY 1 ASC;
