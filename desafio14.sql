SELECT DISTINCT country as `País` from w3schools.suppliers
UNION SELECT country as `País` FROM w3schools.customers
ORDER BY `País`
LIMIT 5;
