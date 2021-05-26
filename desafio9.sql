SELECT 
    CONCAT(FirstName, ' ', LastName) AS `Nome Completo`,
    COUNT(O.EmployeeID) AS `Total de pedidos`
FROM
    w3schools.orders AS O
        INNER JOIN
    w3schools.employees AS E ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos` ASC;
