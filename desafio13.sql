SELECT p.ProductName AS Produto, p.Price AS 'Preço'
FROM w3schools.products AS p
WHERE
(SELECT MAX(od.Quantity) FROM w3schools.order_details AS od WHERE p.ProductID = od.ProductID) > 80
ORDER BY p.ProductName ASC;
