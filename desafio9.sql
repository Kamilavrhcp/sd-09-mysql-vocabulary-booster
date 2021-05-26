SELECT 
    CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
    COUNT(1) AS 'Total de pedidos'
FROM
    w3schools.employees e
        INNER JOIN
    w3schools.orders o ON e.EmployeeID = o.EmployeeID
GROUP BY 1
ORDER BY 2 ASC;
