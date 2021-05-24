SELECT
p.ProductName AS `Produto`,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
REPLACE(FORMAT(AVG(od.Quantity), 2), ',', '') AS `Média`
FROM w3schools.products AS p, w3schools.order_details od
WHERE
p.ProductID = od.ProductID
GROUP BY
p.ProductName
ORDER BY
AVG(od.Quantity) ASC, p.ProductName ASC;
