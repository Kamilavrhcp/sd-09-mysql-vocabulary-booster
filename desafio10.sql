SELECT
p.ProductName AS 'Produto',
ROUND(MIN(od.Quantity), 2) AS 'Mínima',
ROUND(MAX(od.Quantity), 2) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od
ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING AVG(od.Quantity) > 20
ORDER BY `Média` ASC, `Produto` ASC;
