SELECT 
    p.ProductName as 'Produto',
    MIN(o.Quantity) as 'Mínima',
    MAX(o.Quantity) as 'Máxima',
    ROUND(AVG(o.Quantity), 2) as 'Média'
FROM w3schools.order_details as o
    INNER JOIN 
    w3schools.products as p ON p.ProductID = o.ProductID
    GROUP BY `Produto`
    HAVING `Média` > 20
    ORDER BY `Média`, `Produto`;
