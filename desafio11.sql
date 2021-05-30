SELECT 
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS co
        WHERE
            co.ContactName <> c.ContactName
                AND co.Country = c.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS c
GROUP BY 1 , 2 , 3
ORDER BY 1 ASC;
