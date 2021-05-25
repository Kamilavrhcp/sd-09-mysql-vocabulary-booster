SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.products AS p
WHERE
    EXISTS( SELECT 
            *
        FROM
            w3schools.order_details
        WHERE
            p.ProductID = ProductID
                AND Quantity > 80)
ORDER BY ProductName;
