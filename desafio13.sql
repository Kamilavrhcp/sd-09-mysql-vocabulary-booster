SELECT p.ProductName AS 'Produto',
p.Price AS 'Preço'
FROM
w3schools.products AS p
INNER JOIN
w3schools.order_details AS q
ON p.ProductID = q.ProductID
WHERE q.quantity > 80
ORDER BY p.ProductName;
