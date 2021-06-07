SELECT
N.ProductName Produto,
N.Price Preço
FROM w3schools.products AS N
WHERE (
SELECT MAX(D.Quantity)
FROM w3schools.order_details AS D
WHERE N.ProductID = D.ProductID
) > 80
ORDER BY Produto;
