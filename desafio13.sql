SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.products AS prod
        INNER JOIN
    w3schools.order_details AS ordr ON prod.ProductID = ordr.ProductID
WHERE
    ordr.quantity > 80
ORDER BY ProductName;
