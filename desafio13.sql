SELECT
    prod.ProductName AS 'Produto', prod.Price AS 'Preço'
FROM
    (SELECT
        ProductId
    FROM
        w3schools.order_details
    WHERE
        Quantity > 80
    GROUP BY ProductID) AS ord
        INNER JOIN
    w3schools.products AS prod ON prod.ProductID = ord.ProductID
GROUP BY prod.ProductName , prod.Price
ORDER BY `Produto`;