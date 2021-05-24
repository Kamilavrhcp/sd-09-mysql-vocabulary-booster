SELECT
    prd.ProductName AS 'Produto',
    MIN(ord.Quantity) AS 'Mínima',
    MAX(ord.Quantity) AS 'Máxima',
    ROUND((SUM(ord.Quantity) / COUNT(ord.Quantity)),
            2) AS 'Média'
FROM
    w3schools.products AS prd
        INNER JOIN
    w3schools.order_details AS ord ON prd.ProductID = ord.ProductID
GROUP BY prd.ProductName
HAVING ROUND((SUM(ord.Quantity) / COUNT(ord.Quantity)),
        2) > 20.00
ORDER BY Média , Produto;