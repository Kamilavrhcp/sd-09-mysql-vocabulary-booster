SELECT 
    c.contactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        JOIN
    w3schools.customers AS c ON o.CustomerID = c.CustomerID
        JOIN
    w3schools.shippers AS s ON o.ShipperID = s.ShipperID
ORDER BY c.ContactName , s.ShipperName
