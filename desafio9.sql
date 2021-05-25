SELECT c.CustomerName AS `Nome completo`, COUNT(o.orderID) as 'Total de pedidos' FROM w3schools.customers as c
INNER JOIN w3schools.orders as o ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerName;

-- WHERE c.CustomerName = CONCAT(w3schools.employees.firstName, ' ',w3schools.employees.lastName)
-- SELECT CONCAT(w3schools.employees.firstName, ' ',w3schools.employees.lastName) FROM w3schools.employees;
