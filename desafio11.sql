SELECT * FROM (SELECT 
    ContactName AS Nome,
    Country AS País,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C1.Country = C2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS C1) AS C3 WHERE `Número de compatriotas` > 0
ORDER BY Nome;
