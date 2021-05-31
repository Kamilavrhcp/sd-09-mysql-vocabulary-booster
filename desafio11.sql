SELECT 
    cus.ContactName AS 'Nome',
    cus.Country AS 'País',
    (SELECT 
            COUNT(b.Country)
        FROM
            customers AS b
        WHERE
            b.country = cus.country
                AND b.CustomerID <> cus.CustomerID) AS 'Número de compatriotas'
FROM
    customers AS cus
ORDER BY `Nome`;
