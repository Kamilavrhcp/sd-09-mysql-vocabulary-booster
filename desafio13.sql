SELECT 
    ProductName AS `Produto`,
    Price AS `Preço`
FROM
    w3schools.products
HAVING (SELECT 
        MAX(Quantity)
    FROM
        w3schools.order_details
    WHERE
        w3schools.products.ProductID = w3schools.order_details.ProductID) > 80
ORDER BY `Produto`;
