SELECT 
    product.ProductName AS Produto,
    MIN(details.Quantity) AS Mínima,
    MAX(details.Quantity) AS Máxima,
    ROUND(AVG(details.Quantity), 2) AS Média
FROM
    w3schools.order_details AS details
        INNER JOIN
    w3schools.products AS product ON product.ProductID = details.ProductID
GROUP BY ProductName
HAVING Média > 20
ORDER BY Média , Produto;
