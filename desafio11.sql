SELECT DISTINCT
    C.ContactName AS `Nome`,
    C.Country AS `País`,
    (SELECT 
            COUNT(*) - 1
        FROM
            w3schools.customers AS C2
        WHERE
            C.Country = C2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS C
WHERE
    Country NOT IN ('Norway' , 'Poland', 'Ireland')
ORDER BY `Nome` ASC;
