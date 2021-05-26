SELECT 
    a.ContactName AS 'Nome',
    a.Country AS 'País',
    (SELECT 
            COUNT(*) AS soma
        FROM
            w3schools.customers b
        WHERE
            a.CustomerID <> b.CustomerID
                AND b.Country = a.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers a
GROUP BY Nome, Country, `Número de compatriotas`
HAVING `Número de compatriotas` > 0
ORDER BY 1;
