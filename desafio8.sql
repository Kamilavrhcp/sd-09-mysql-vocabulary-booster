SELECT 
    customers.ContactName 'Nome de contato',
    shipperName AS 'Empresa que fez o envio',
    orders.orderDate AS 'Data do pedido'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.customers AS customers ON orders.CustomerID = customers.CustomerID
        INNER JOIN
    w3schools.shippers AS shippers ON orders.ShipperID = shippers.ShipperID
WHERE
    orders.ShipperID IN (1 , 2)
ORDER BY `Nome de contato` ASC , `Empresa que fez o envio` ASC , `Data do pedido` ASC;
