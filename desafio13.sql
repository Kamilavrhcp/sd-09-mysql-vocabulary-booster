SELECT prod.ProductName AS `Produto`,
prod.Price AS `Preço`
FROM w3schools.products AS prod
JOIN w3schools.order_details AS det
ON det.ProductID = prod.ProductID AND det.Quantity > 80
ORDER BY prod.ProductName ASC;
