SELECT
    p.ProductName AS 'Produto',
    p.Price AS 'Preço'
FROM w3schools.products AS p
WHERE p.ProductID IN (
    SELECT ProductID
    FROM w3schools.order_details AS d
    WHERE d.Quantity > 80
)
ORDER BY `Produto`;
