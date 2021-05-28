SELECT 
    products.ProductName AS Produto, products.Price AS `Preço`
FROM
    w3schools.products AS products
        INNER JOIN
    w3schools.order_details AS od ON products.ProductID = od.ProductID
WHERE
    od.Quantity > '80'
ORDER BY Produto ASC;
