SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(orders.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS orders ON orders.EmployeeID = emp.EmployeeID
GROUP BY orders.EmployeeID ORDER BY `Total de pedidos`;
