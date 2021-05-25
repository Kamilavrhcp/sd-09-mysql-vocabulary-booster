SELECT
ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products P INNER JOIN w3schools.order_details O
ON P.ProductID = O.ProductID
WHERE O.Quantity > 80
ORDER BY ProductName;
