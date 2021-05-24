SELECT 
    CONCAT(E.FirstName, ' ', E.LastName) AS 'Nome completo',
    OD.Quantity AS 'Total de pedidos'
FROM
    w3schools.order_details AS OD
        INNER JOIN
    w3schools.orders AS O ON OD.OrderID = O.OrderID
        INNER JOIN
    w3schools.employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
