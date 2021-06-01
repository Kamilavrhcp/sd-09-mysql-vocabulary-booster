SELECT t1.ProductName AS Produto,
t1.Price AS Preço
FROM w3schools.products AS t1
WHERE EXISTS (
SELECT * FROM w3schools.order_details AS t2
WHERE Quantity > 80 AND t1.ProductID = t2.ProductID)
ORDER BY PRODUTO;
