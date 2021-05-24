SELECT 
    CONCAT(e.firstName, ' ', e.lastName) AS 'Nome completo',
    COUNT(orderId) AS 'Total de pedidos'
FROM w3schools.employees AS e
INNER JOIN w3schools.orders AS o ON e.employeeId = o.EmployeeID
GROUP BY e.employeeId
ORDER BY `Total de pedidos` ASC;