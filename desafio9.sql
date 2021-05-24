SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
COUNT(*) AS `Total de pedidos`
FROM w3schools.employees AS e, w3schools.orders AS o
WHERE
e.EmployeeID = o.EmployeeID
GROUP BY
e.EmployeeID
ORDER BY
`Total de pedidos` ASC;