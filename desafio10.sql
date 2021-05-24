SELECT p.ProductName as 'Produto', MIN(o.Quantity) as 'Mínima', MAX(o.Quantity) as 'Máxima', ROUND(AVG(o.Quantity), 2) as 'Média'
FROM w3schools.order_details AS o
INNER JOIN w3schools.products AS p ON o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
