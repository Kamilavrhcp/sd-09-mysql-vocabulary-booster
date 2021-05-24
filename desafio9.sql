SELECT
    CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON o.employeeID = e.employeeID
GROUP BY o.employeeID order by `Total de pedidos`;
