-- SELECT * FROM w3schools.order_details;
SELECT
P.ProductName AS Produto,
MIN(D.Quantity) AS Mínima,
MAX(D.Quantity) AS Máxima,
ROUND(AVG(D.Quantity), 2) AS Média
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS D
ON P.ProductID = D.ProductID
GROUP BY P.ProductName
HAVING ROUND(AVG(D.Quantity), 2) > 20.00
ORDER BY Média, Produto;
