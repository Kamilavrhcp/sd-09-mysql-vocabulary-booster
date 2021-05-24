SELECT
c.ContactName AS 'Nome de contato',
s.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ('United Package', 'Speedy Express')
ORDER BY `Nome de contato` ASC, s.ShipperName ASC;
