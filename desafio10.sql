SELECT 
    p.ProductName AS 'Produto',
    MIN(od.Quantity) AS 'Mínima',
    MAX(od.Quantity) AS 'Máxima',
    ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON (od.ProductId = p.ProductId)
GROUP BY ProductName
ORDER BY AVG(od.Quantity), ProductName
LIMIT 1000 OFFSET 29;
