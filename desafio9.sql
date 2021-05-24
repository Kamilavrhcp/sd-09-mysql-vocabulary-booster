SELECT
  CONCAT(EMP.`FirstName`, ' ', EMP.`LastName`) AS `Nome Completo`,
  COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS EMP
INNER JOIN w3schools.orders AS O ON O.EmployeeID = EMP.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos` ASC;
