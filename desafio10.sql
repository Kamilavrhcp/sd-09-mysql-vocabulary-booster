SELECT 
    ProductName AS Produto,
    MIN(Quantity) AS Mínima,
    MAX(Quantity) AS Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    w3schools.products p
        INNER JOIN
    w3schools.order_details od ON p.ProductID = od.ProductID
GROUP BY 1
HAVING Média > 20
ORDER BY 4 ASC , 1 ASC;
