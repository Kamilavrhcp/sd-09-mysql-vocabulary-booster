SELECT 
    c.ContactName AS 'Nome de contato',
    s.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS c,
    w3schools.orders AS o,
    w3schools.shippers AS s
WHERE
    (c.CustomerID = o.CustomerID)
        AND (o.ShipperID = 1 OR o.ShipperID = 2)
        AND (o.ShipperID = s.ShipperID)
ORDER BY ContactName ASC , ShipperName ASC , OrderDate ASC;
