SELECT
  CONCAT(E.FirstName, ' ', E.LastName) 'Nome completo',
  COUNT(*) 'Total de pedidos'
FROM
  w3schools.employees E
    INNER JOIN
  w3schools.orders O
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
