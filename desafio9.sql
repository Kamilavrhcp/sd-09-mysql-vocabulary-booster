SELECT CONCAT(emp.FirstName, ' ', emp.LastName) AS `Nome completo`,
COUNT(emp.EmployeeID) AS `Total de pedidos`
FROM w3schools.orders AS ord
JOIN w3schools.employees AS emp
ON ord.EmployeeID = emp.EmployeeID
GROUP BY emp.EmployeeID
ORDER BY 2 ASC;
