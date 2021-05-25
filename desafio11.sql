SELECT 
    customer1.ContactName AS 'Nome',
    customer1.Country AS 'País',
    (SELECT 
            COUNT(customer2.Country) - 1
        FROM
            w3schools.customers customer2
        GROUP BY Country
        HAVING customer2.Country = customer1.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS customer1
WHERE
    (SELECT 
            COUNT(customer2.Country) - 1
        FROM
            w3schools.customers AS customer2
        GROUP BY Country
        HAVING customer2.Country = customer1.Country) > 0
ORDER BY 1 ASC;
