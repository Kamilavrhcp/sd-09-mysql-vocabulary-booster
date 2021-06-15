SELECT CONCAT(emp.FirstName,' ',emp.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS od
ON emp.EmployeeID = od.EmployeeID
GROUP BY `Nome completo`
ORDER BY COUNT(*);
