SELECT prod.ProductName AS `Produto`,
MIN(det.Quantity) AS `Mínima`,
MAX(det.Quantity) AS `Máxima`,
ROUND(AVG(det.Quantity), 2) AS `Média`
FROM w3schools.order_details AS det
JOIN w3schools.products AS prod ON det.ProductID = prod.ProductID
GROUP BY prod.ProductID
HAVING ROUND(AVG(det.Quantity), 2) > 20
ORDER BY 4 ASC, 1 ASC;
