SELECT ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products As pr
INNER JOIN w3schools.order_details AS od
ON pr.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY ProductName ASC;
