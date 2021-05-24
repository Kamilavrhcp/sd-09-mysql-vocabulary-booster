-- 9 - Exibe todos as pessoas funcionárias que já realizaram algum pedido, mostrando também seu total de pedidos feitos
SELECT
    CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    w3schools.employees AS e
        INNER JOIN
    w3schools.orders AS o ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
