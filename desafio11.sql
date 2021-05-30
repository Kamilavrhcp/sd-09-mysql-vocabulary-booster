SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS c2
        WHERE
            c.ContactName <> c2.ContactName
                AND c.Country = c2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
GROUP BY 1 , 2 , 3
HAVING `Número de compatriotas` > 0
ORDER BY 1;
