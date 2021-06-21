SELECT  CONCAT(employees.FirstName, ' ', employees.LastName) AS `Nome completo`,
        COUNT(orders.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees
JOIN w3schools.orders ON employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
