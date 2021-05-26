SELECT
    CONCAT(empl.FirstName, ' ',empl.LastName) AS 'Nome completo',
    COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS ordr
INNER JOIN w3schools.employees AS empl ON ordr.EmployeeID = empl.EmployeeID
GROUP BY ordr.EmployeeID
ORDER BY `Total de pedidos`;
