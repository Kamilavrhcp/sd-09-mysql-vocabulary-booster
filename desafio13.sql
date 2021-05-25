SELECT
    p.productname AS Produto, p.price AS Preço
FROM
    w3schools.products AS p
        INNER JOIN
    w3schools.order_details AS od ON od.productid = p.productid
WHERE
    od.quantity > 80
ORDER BY Produto;
