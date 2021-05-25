SELECT DISTINCT
    t.ContactName AS `Nome`,
    t.Country AS `País`,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS t2
        WHERE
            t.Country = t2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS t
WHERE
    Country NOT IN ('Norway' , 'Poland', 'Ireland')
ORDER BY `Nome` ASC;
