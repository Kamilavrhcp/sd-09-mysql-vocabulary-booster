SELECT 
MAX(OD.Quantity) AS `Máxima`, 
ROUND(AVG(OD.Quantity), 2) AS `Média`, 
MIN(OD.Quantity) AS `Mínima`, 
P.ProductName AS `Produto` 
FROM w3schools.order_details AS OD 
INNER JOIN w3schools.products AS P ON P.ProductID = OD.ProductID 
GROUP BY OD.ProductID 
HAVING ROUND(AVG(Quantity), 2) > 20 
ORDER BY `Média` ASC, `Produto` ASC;
