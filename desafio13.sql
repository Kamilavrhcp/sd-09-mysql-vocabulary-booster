SELECT
T1.ProductName AS 'Produto',
T1.Price AS 'Preço'
FROM w3schools.products AS T1
INNER JOIN w3schools.order_details AS T2
ON T1.ProductID = T2.ProductID AND T2.Quantity > 80
ORDER BY T1.ProductName;
