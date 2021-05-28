SELECT 
    ProductName AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.products AS p

INNER JOIN
w3schools.order_details AS o_d ON o_d.ProductID = p.ProductID

GROUP BY p.ProductName

HAVING ROUND(AVG(Quantity), 2) > 20

ORDER BY ROUND(AVG(Quantity), 2), ProductName;
     