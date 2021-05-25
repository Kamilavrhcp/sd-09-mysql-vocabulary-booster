SELECT
CONCAT(T1.FirstName, ' ', T1.LastName) AS 'Nome Completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS T1
INNER JOIN w3schools.orders AS T2
ON T1.EmployeeID = T2.EmployeeID
GROUP BY CONCAT(T1.FirstName, ' ', T1.LastName)
ORDER BY COUNT(*) ASC;
