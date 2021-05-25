SELECT 
p.ProductName AS `Produto`,
p.Price AS `Preço`
FROM w3schools.order_details AS od
LEFT JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING Max(od.quantity) > 80
ORDER BY p.ProductName;
