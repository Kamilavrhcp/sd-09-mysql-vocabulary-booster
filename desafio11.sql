SELECT 
    customers.ContactName AS Nome,
    customers.Country AS `País`,
    (SELECT 
            COUNT(*)
        FROM
            w3schools.customers
        WHERE
            w3schools.customers.Country = `País`
                AND w3schools.customers.ContactName <> Nome) AS `Número de compatriotas`
FROM
    w3schools.customers AS customers
HAVING 	`Número de compatriotas` <> '0'
ORDER BY Nome;
