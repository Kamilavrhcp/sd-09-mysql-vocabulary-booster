SELECT ProductName AS 'Produto',
Price AS 'Preço' 
FROM w3schools.products AS products
INNER JOIN 
w3schools.order_details AS orders ON orders.ProductID = products.ProductID
AND orders.Quantity > 80
ORDER BY `Produto`;
