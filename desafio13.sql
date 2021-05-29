SELECT ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS od
ON prod.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY `Produto`;
