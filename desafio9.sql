SELECT
  CONCAT(e.FirstName, ' ', e.LastName) 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM employees e
RIGHT JOIN orders o ON o.EmployeeID = e.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(*);
