SELECT
  CONCAT(
    e.FirstName,
    ' ',
    e.LastName
  ) as 'Nome completo',
  COUNT(o.EmployeeID) as 'Total de pedidos'
FROM
  w3schools.orders o
  INNER JOIN w3schools.employees e ON o.EmployeeID = e.EmployeeID
GROUP BY e.EmployeeID
ORDER BY `Total de pedidos` ASC;
