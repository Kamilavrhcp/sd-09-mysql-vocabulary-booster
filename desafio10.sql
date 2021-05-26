SELECT products.ProductName AS 'Produto', MIN(orders.Quantity) AS 'Mínima', MAX(orders.Quantity) AS 'Máxima', ROUND(AVG(orders.Quantity), 2) AS 'Média'
FROM w3schools.products AS products
INNER JOIN 
w3schools.order_details AS orders ON orders.ProductID = products.ProductID
GROUP BY 1
HAVING Média > 20
ORDER BY 4, 1;
