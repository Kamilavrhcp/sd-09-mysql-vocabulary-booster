SELECT 
    CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
    COUNT(o.orderID) AS 'Total de pedidos'
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
