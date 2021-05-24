/* Exibe todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas 
"Speedy Express" ou "United Package" */

SELECT 
    cus.ContactName AS `Nome de contato`,
    ship.ShipperName AS `Empresa que fez o envio`,
    ord.OrderDate AS `Data do pedido`
FROM
    w3schools.orders AS ord
        INNER JOIN
    w3schools.customers AS cus ON cus.CustomerID = ord.CustomerID
        INNER JOIN
    w3schools.shippers AS ship ON ship.ShipperID = ord.ShipperID
WHERE ship.ShipperID IN (1, 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
