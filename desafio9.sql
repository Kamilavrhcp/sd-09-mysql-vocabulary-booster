SELECT
    (CONCAT(w3schools.employees.FirstName,
            ' ',
            w3schools.employees.LastName)) AS 'Nome completo',
    COUNT(w3schools.orders.EmployeeId) AS 'Total de pedidos'
FROM
    w3schools.employees,
    w3schools.orders
WHERE
    w3schools.employees.EmployeeId = w3schools.orders.EmployeeId
GROUP BY w3schools.orders.EmployeeId
ORDER BY `Total de pedidos`;