SELECT
  c.ContactName AS 'Nome de contato',
  s.ShipperName AS 'Empresa que fez o envio',
  o.OrderDate AS 'Data do pedido'
FROM customers c
INNER JOIN orders o ON o.CustomerID = c.CustomerID
INNER JOIN shippers s ON s.ShipperID = o.ShipperID
WHERE s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
