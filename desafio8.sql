SELECT
    cstmr.ContactName AS 'Nome de contato',
    shippers.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS orders
INNER JOIN w3schools.shippers AS shippers ON shippers.ShipperID = orders.ShipperID
INNER JOIN w3schools.customers AS cstmr ON cstmr.CustomerID = orders.CustomerID
WHERE shippers.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;