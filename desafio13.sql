/* Exibe todos produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80 */

SELECT
    ProductName AS `Produto`, Price AS `Preço`
FROM
    w3schools.products
WHERE
    ProductID IN (SELECT
            ProductID
        FROM
            w3schools.order_details
        WHERE
            Quantity > 80)
ORDER BY `Produto` ASC;