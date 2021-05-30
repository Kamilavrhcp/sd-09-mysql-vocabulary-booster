SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.employees AS e ON o.employeeID = e.employeeID
GROUP BY 1
ORDER BY 2;
