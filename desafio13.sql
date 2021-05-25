SELECT
p.ProductName AS `Produto`,
p.Price as `Preço`
FROM w3schools.products AS p, w3schools.order_details od
WHERE
od.ProductID = p.ProductID
AND od.Quantity > 80
ORDER BY
p.ProductName ASC;
