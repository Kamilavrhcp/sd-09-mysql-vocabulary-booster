SELECT
  c.ContactName as 'Nome de contato',
  s.ShipperName as 'Empresa que fez o envio',
  o.OrderDate as 'Data do pedido'
FROM
  w3schools.orders o
  INNER JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
  INNER JOIN w3schools.customers c ON o.CustomerID = c.CustomerID
WHERE
  s.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
