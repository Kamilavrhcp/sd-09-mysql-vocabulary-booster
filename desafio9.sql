SELECT 
    CONCAT(EMPLOY.FirstName, ' ', EMPLOY.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.orders AS ORDERS
        INNER JOIN
    w3schools.employees AS EMPLOY ON EMPLOY.EmployeeID = ORDERS.EmployeeID
GROUP BY CONCAT(EMPLOY.FirstName, ' ', EMPLOY.LastName)
ORDER BY COUNT(*);
