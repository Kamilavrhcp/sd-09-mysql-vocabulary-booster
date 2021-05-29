SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
    (SELECT 
            COUNT(t2.ContactName)
        FROM
            w3schools.customers AS t2
        WHERE
            t1.Country = t2.Country
                AND t1.ContactName <> t2.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS t1
GROUP BY Nome , País
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
