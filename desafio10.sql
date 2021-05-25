SELECT 
    product.ProductName AS 'Produto',
    MIN(order_detail.Quantity) AS 'Mínima',
    MAX(order_detail.Quantity) AS 'Máxima',
    ROUND(AVG(order_detail.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS product
        JOIN
    w3schools.order_details AS order_detail ON order_detail.ProductID = product.ProductID
GROUP BY Produto
HAVING Média > 20.00
ORDER BY Média ASC , Produto ASC;
