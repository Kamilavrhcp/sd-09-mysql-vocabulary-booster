SELECT 
    CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
    COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM
    w3schools.employees AS emp
        INNER JOIN
    w3schools.orders AS o ON emp.EmployeeID = o.EmployeeID
GROUP BY o.EmployeeID
ORDER BY 2 ASC;
