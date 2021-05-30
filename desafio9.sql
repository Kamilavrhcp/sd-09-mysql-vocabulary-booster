SELECT
    CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
    COUNT(1) AS `Total de pedidos`
FROM
    w3schools.orders AS O
    JOIN w3schools.employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY
    1
ORDER BY
    2;
