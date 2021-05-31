SELECT DISTINCT
    t.*
FROM
    (SELECT 
        Country AS 'País'
    FROM
        w3schools.customers UNION ALL SELECT 
        Country AS 'País'
    FROM
        w3schools.suppliers) AS t
ORDER BY t.País ASC
LIMIT 5;
