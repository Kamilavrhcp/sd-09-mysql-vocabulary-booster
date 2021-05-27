SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo', COUNT(o.ShipperID) AS 'Total de pedidos' FROM w3schools.orders AS o 
INNER JOIN w3schools.employees AS e
ON e.EmployeeID = o.EmployeeID
GROUP BY CONCAT(e.FirstName, ' ', e.LastName)
ORDER BY COUNT(o.ShipperID);
