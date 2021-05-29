SELECT P.ProductName AS 'Produto',
MIN(O.Quantity) AS 'Mínima',
MAX(O.Quantity) AS 'Máxima',
ROUND(AVG(O.Quantity), 2) AS 'Média'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O
ON P.ProductID = O.ProductID
GROUP BY 1 HAVING AVG(O.Quantity) > 20
order by 4, 1;
