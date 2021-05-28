SELECT 
    products.ProductName AS 'Produto',
    ROUND(MIN(details.Quantity), 2) AS 'Mínima',
    ROUND(MAX(details.Quantity), 2) AS 'Máxima',
    ROUND(AVG(details.Quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS details
        INNER JOIN
    w3schools.products AS products ON details.ProductID = products.ProductID
GROUP BY Produto HAVING `Média` > CAST(20.00 AS DECIMAL)
ORDER BY Média ASC, Produto;