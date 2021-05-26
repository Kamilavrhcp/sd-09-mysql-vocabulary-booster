SELECT 
    main_table.ContactName AS `Nome`,
    main_table.Country AS `País`,
    (SELECT 
            COUNT(Country)
        FROM
            w3schools.customers AS support_table
        WHERE
            support_table.country = main_table.country AND support_table.customerID <> main_table.customerID)AS 'Número de compatriotas'
FROM
    w3schools.customers AS main_table	
GROUP BY `Nome`, Country, `Número de compatriotas`
HAVING `Número de compatriotas` <> 0
ORDER BY Nome;
