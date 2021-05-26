SELECT 
    s.Country
FROM
    w3schools.suppliers AS s 
UNION SELECT 
    c.Country
FROM
    w3schools.customers AS c
ORDER BY Country
LIMIT 5;
