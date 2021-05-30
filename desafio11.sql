SELECT 
    customers.contactName AS 'Nome',
    customers.country AS 'País',
    (SELECT 
            COUNT(c.country)
        FROM
            w3schools.customers AS c
        WHERE
            (c.contactName <> Nome)
                AND (c.country = customers.country)) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customers
HAVING `Número de compatriotas` > 0
ORDER BY Nome;
