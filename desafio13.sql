SELECT 
prod.ProductName AS 'Produto',
prod.Price AS 'Preço'
FROM w3schools.order_details AS ord_det
INNER JOIN w3schools.products AS prod
ON ord_det.ProductID = prod.ProductID
WHERE ord_det.Quantity > 80
ORDER BY prod.ProductName;
