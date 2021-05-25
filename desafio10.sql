SELECT 
    ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS ordr
        INNER JOIN
    w3schools.products AS prod ON ordr.ProductID = prod.ProductID
GROUP BY ProductName
HAVING (SELECT AVG(Quantity)) > 20.00
ORDER BY ROUND(AVG(Quantity), 2) , ProductName ASC;
