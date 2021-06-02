SELECT  prod.ProductName AS 'Produto',
MIN(detail.Quantity) AS 'Mínima',
MAX(detail.Quantity) AS 'Máxima',
ROUND(AVG(Quantity), 2) AS 'Média'
FROM
w3schools.order_details AS detail
INNER JOIN
w3schools.products AS prod ON prod.ProductID = detail.ProductID
GROUP BY prod.ProductID HAVING `Média` > 20
ORDER BY `Média`,`Produto`;
