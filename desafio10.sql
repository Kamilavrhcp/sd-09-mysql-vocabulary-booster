SELECT 
    p.ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    order_details AS od
        INNER JOIN
    products AS p ON p.ProductID = od.ProductID
GROUP BY od.ProductID HAVING `Média` > 20
ORDER BY `Média`;
