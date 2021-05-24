SELECT ProductName AS 'Produto',
MIN(order_details.Quantity) AS 'Mínima',
MAX(order_details.Quantity) AS 'Máxima',
ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM
w3schools.order_details
        INNER JOIN
    products ON products.ProductID = order_details.ProductID
GROUP BY order_details.ProductID
HAVING `Média` > 20
ORDER BY `Média` , `Produto`;