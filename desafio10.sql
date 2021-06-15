SELECT pn.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS pn
INNER JOIN w3schools.order_details AS od
ON pn.ProductID = od.ProductID
GROUP BY `Produto`
HAVING AVG(od.Quantity) > 20.00
ORDER BY `Média` ASC, `Produto` ASC;
