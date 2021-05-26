SELECT 
(
SELECT ProductName
FROM w3schools.products
WHERE ProductID = ord_det.ProductID
) AS Produto, 
MIN(ord_det.Quantity) AS 'Mínima',
MAX(ord_det.Quantity) AS 'Máxima',
ROUND(AVG(ord_det.Quantity),2) AS 'Média'
FROM w3schools.order_details ord_det
GROUP BY ord_det.ProductID
HAVING `Média` > 20
ORDER BY `Média`, Produto;
