SELECT 
    P.ProductName AS `Produto`,
    ROUND(P.Price, 2) AS `Preço`
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON P.ProductID = OD.ProductID
WHERE
    OD.Quantity > 80
ORDER BY `Produto` ASC;

