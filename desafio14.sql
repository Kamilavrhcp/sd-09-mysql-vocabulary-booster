(SELECT DISTINCT
    c.Country AS `País`
FROM
    w3schools.customers AS c)
UNION ALL (
SELECT DISTINCT
    s.Country
FROM
    w3schools.suppliers AS s)
ORDER BY `País`
LIMIT 5;
