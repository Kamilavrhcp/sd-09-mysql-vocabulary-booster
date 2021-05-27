SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers AS t2
        WHERE
            t1.ContactName <> t2.ContactName
                AND t1.Country = t2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS t1
GROUP BY 1 , 2 , 3
HAVING `Número de compatriotas` > 0
ORDER BY 1;
