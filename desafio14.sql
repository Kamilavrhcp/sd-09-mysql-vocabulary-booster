SELECT DISTINCT
    u.Country AS `País`
FROM
    (SELECT 
        c.Country
    FROM
        w3schools.customers AS c UNION ALL SELECT 
        s.Country
    FROM
        w3schools.suppliers AS s) AS u
ORDER BY `País` ASC
LIMIT 5;
 