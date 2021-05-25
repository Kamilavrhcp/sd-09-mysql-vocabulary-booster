SELECT DISTINCT
s.Country AS `País`
FROM
w3schools.suppliers AS s, w3schools.customers as c
WHERE 
s.Country = c.Country
ORDER BY s.Country
LIMIT 5;