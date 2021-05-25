SELECT p.ProductName as `Produto`, MIN(od.Quantity) as `Mínima`, MAX(od.Quantity) as `Máxima`, ROUND(AVG(od.Quantity),2) as `Média` FROM w3schools.products as p
INNER JOIN w3schools.order_details as od ON od.ProductID = p.ProductID
-- WHERE AVG(od.Quantity) > 20
GROUP BY p.ProductID
ORDER BY `Média` ASC, `Produto`ASC;
