SELECT 
    main_table.ContactName AS `Nome`,
    main_table.Country AS País,
    (SELECT 
            COUNT(Country) - 1 AS Número de compatriotas
        FROM
            w3schools.customers AS support_table
        WHERE
            support_table.country = main_table.country)
FROM
    w3schools.customers AS main_table
GROUP BY CustomerName , Country
ORDER BY Nome;
