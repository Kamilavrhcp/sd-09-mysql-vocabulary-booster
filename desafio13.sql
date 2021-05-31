SELECT ProductName AS `Produto`, Price AS `Preço`
FROM w3schools.products AS p
WHERE EXISTS( SELECT * FROM w3schools.order_details AS d
	WHERE d.ProductID = p.ProductID
	HAVING d.Quantity > 80)
ORDER BY `Produto`  ASC;
