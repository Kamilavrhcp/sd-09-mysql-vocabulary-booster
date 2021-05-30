SELECT 
    c.COUNTRY AS 'País'
FROM
    w3schools.customers AS c 
UNION SELECT 
    s.Country
FROM
    w3schools.suppliers AS s
ORDER BY 1
LIMIT 5;
