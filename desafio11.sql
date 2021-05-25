SELECT 
    c1.contactname,
    c1.country,
    (SELECT
            COUNT(*) - 1
        FROM
            w3schools.customers as c2
        WHERE
            c1.country = c2.country
        GROUP BY c2.country) AS `Número de compatriotas`
FROM
    w3schools.customers as c1 where (SELECT
            COUNT(*) - 1
        FROM
            w3schools.customers as c2
        WHERE
            c1.country = c2.country
        GROUP BY c2.country) <> 0
ORDER BY c1.contactname;
