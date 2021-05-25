SELECT 
od.ProductID AS `Produto`,
p.Price AS `Price`
-- sum(od.quantity) As quant
FROM w3schools.order_details AS od
LEFT JOIN w3schools.products AS p
ON od.ProductID = p.ProductID
-- WHERE sum(od.quantity) > 80
GROUP BY od.ProductID;

select * from w3schools.order_details
ORDER BY ProductID;