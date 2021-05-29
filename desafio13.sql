SELECT 
    ProductName AS Produto, Price AS Preço
FROM
    w3schools.products p
        INNER JOIN
    w3schools.order_details od ON p.ProductID = od.ProductID
WHERE
    Quantity > 80
ORDER BY 1 ASC;
