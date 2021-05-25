SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.products AS PRODUCT
WHERE
    EXISTS( SELECT 
            *
        FROM
            w3schools.order_details
        WHERE
            PRODUCT.ProductID = ProductID
                AND Quantity > 80)
ORDER BY ProductName;
