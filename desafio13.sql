SELECT p.ProductName, p.Price
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS od ON p.ProductID = od.ProductID
WHERE od.Quantity > 80;
