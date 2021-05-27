SELECT DISTINCT Country 
FROM w3schools.customers AS cust
UNION 
SELECT DISTINCT Country
FROM w3schools.suppliers
ORDER BY Country
LIMIT 5;