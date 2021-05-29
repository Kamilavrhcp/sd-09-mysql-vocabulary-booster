SELECT 
    productName AS 'Produto', price AS 'Preço'
FROM
    w3schools.products AS p
WHERE
    EXISTS( SELECT 
            ProductID
        FROM
            w3schools.order_details AS od
        WHERE (od.ProductID = p.ProductID) AND (quantity > 80))
ORDER BY Produto ASC;

