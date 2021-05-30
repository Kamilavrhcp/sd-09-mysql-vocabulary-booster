SELECT
    p.ProductName AS 'Produto',
    p.Price AS 'Preço'
FROM
    w3schools.products AS p
    JOIN w3schools.order_details AS d ON p.ProductID = d.ProductID
    AND d.Quantity > 80
ORDER BY
    'Preço';
