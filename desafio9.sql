SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(e.FirstName) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o ON e.EmployeeID = o.EmployeeID
GROUP BY 1
ORDER BY 2;
