SELECT 
    CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.orders AS ords
        INNER JOIN
    w3schools.employees AS emp ON ords.EmployeeID = emp.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(*) ASC;
