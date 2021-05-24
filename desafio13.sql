-- 13 - Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80
SELECT
    ProductName AS Produto, Price AS Preço
FROM
    w3schools.products AS p
WHERE
    EXISTS( SELECT
            *
        FROM
            w3schools.order_details AS d
        WHERE
            d.ProductID = p.ProductID
        HAVING d.Quantity > 80)
ORDER BY Produto;
