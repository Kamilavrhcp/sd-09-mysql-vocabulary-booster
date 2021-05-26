SELECT ProductName AS 'Produto',
Price AS 'Preço'
FROM w3schools.products as prod
INNER JOIN w3schools.order_details as ordr
ON prod.ProductID = ordr.ProductID
WHERE ordr.quantity > 80
ORDER BY ProductName;