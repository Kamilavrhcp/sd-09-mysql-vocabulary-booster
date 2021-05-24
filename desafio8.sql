SELECT 
    customers.ContactName AS `Nome de contato`,
    shippers.ShipperName AS `Empresa que fez o envio`,
    orders.OrderDate AS `Data do pedido`
FROM
    w3schools.orders
        INNER JOIN w3schools.customers ON customers.CustomerID = orders.CustomerID
        INNER JOIN w3schools.shippers ON shippers.ShipperID = orders.ShipperID
WHERE
    orders.ShipperID IN (1 , 2)
ORDER BY customers.ContactName , shippers.ShipperName , orders.OrderDate;
