SELECT
P.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM w3schools.products P INNER JOIN w3schools.order_details OD
ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
HAVING AVG(OD.Quantity) > 20.00
ORDER BY AVG(OD.Quantity), P.ProductName;
