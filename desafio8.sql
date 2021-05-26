SELECT 
    ContactName AS 'Nome de contato',
    ShipperName AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.customers c
        INNER JOIN
    w3schools.orders o ON c.CustomerID = o.CustomerID
        INNER JOIN
    w3schools.shippers s ON s.ShipperID = o.ShipperID
WHERE
    s.ShipperID = 1 OR s.ShipperID = 2
ORDER BY 1 ASC , 2 ASC , 3 ASC;
