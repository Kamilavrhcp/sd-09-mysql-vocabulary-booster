SELECT p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM order_details od INNER JOIN products p ON p.ProductID = od.ProductID
WHERE od.Quantity > 80
ORDER BY p.ProductName;
