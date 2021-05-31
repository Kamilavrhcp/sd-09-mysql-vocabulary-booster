SELECT 
    a.ContactName AS 'Nome',
    a.Country AS 'País',
    (SELECT 
            COUNT(b.Country)
        FROM
            customers AS b
        WHERE
            b.country = a.country
                AND b.CustomerID <> a.CustomerID) AS 'Número de compatriotas'
FROM
    customers AS a
ORDER BY `Nome`;
