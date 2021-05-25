SELECT CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees E INNER JOIN w3schools.orders O
ON E.EmployeeID = O.EmployeeID
GROUP BY CONCAT(E.FirstName, ' ', E.LastName)
ORDER BY COUNT(*);
