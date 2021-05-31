SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS c
        WHERE
            c.Country = t1.Country
                AND c.CustomerID <> t1.CustomerID
        GROUP BY c.Country
        HAVING COUNT(c.Country) > 0) AS 'Número de compatriotas'
FROM
    w3schools.customers AS t1
WHERE
    EXISTS( SELECT 
            *
        FROM
            w3schools.customers AS c1
        WHERE
            c1.Country = t1.Country
                AND c1.CustomerID <> t1.CustomerID)
ORDER BY t1.ContactName;
