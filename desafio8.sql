SELECT c.ContactName as `Nome de contato`, s.ShipperName as `Empresa que fez o envio`, o.OrderDate as `Data do pedido` FROM w3schools.customers as c
INNER JOIN orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN shippers as s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do Pedido` ASC;
