SELECT c.Country FROM w3schools.customers AS c
UNION
SELECT s.Country FROM w3schools.suppliers AS s
ORDER BY Country
LIMIT 5;
