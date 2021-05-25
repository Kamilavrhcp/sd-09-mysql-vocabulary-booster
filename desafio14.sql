SELECT
Country AS 'País'
FROM w3schools.customers
GROUP BY Country
UNION ALL
SELECT
Country AS 'País'
FROM w3schools.suppliers
GROUP BY Country
ORDER BY 1
LIMIT 5;
