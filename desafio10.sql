SELECT 
    ProductName AS Produto,
    MIN(Quantity) AS Mínima,
    MAX(Quantity) AS Máxima,
    ROUND(AVG(Quantity), 2) AS Média
FROM
    w3schools.order_details AS OD
        INNER JOIN
    w3schools.products AS P ON P.ProductID = OD.ProductID
GROUP BY OD.ProductID
HAVING Média > 20.00
ORDER BY Média ASC, Produto ASC;
