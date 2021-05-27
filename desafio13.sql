SELECT 
    products.ProductName AS 'Produto', 
    products.Price AS 'Preço'
FROM
    w3schools.products
        INNER JOIN
    w3schools.order_details ON order_details.ProductID = products.ProductID
        AND order_details.Quantity > 80
ORDER BY 1, 2;
