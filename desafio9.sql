SELECT 
    CONCAT(employee.FirstName,
            ' ',
            employee.LastName) AS 'Nome completo',
    COUNT(orders.OrderID) AS 'Total de pedidos'
FROM
    `w3schools`.`employees` AS employee
        JOIN
    `w3schools`.`orders` AS orders ON orders.EmployeeID = employee.EmployeeID
GROUP BY 1
ORDER BY `Total de Pedidos` ASC;
