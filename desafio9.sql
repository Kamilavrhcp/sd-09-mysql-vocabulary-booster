SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
COUNT(OD.Quantity) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON E.EmployeeID = O.EmployeeID
INNER JOIN w3schools.order_details AS OD
ON OD.OrderID = O.OrderID
GROUP BY 1 order by 2;
