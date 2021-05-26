SELECT 
(
SELECT CONCAT(FirstName, ' ', LastName)
FROM w3schools.employees
WHERE EmployeeID = ord.EmployeeID
) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS ord
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
