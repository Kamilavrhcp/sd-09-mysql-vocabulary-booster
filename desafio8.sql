SELECT c.ContactName as `Nome do contato`, s.ShipperName as `Empresa que fez o envio`, o.OrderDate as `Data do pedido` FROM w3schools.customers as c
INNER JOIN orders AS o ON c.CustomerID = o.CustomerID
INNER JOIN shippers as s ON o.ShipperID = s.ShipperID
WHERE s.ShipperName = 'Speedy Express' OR s.ShipperName = 'United Package'
ORDER BY `Nome do contato` ASC, `Empresa que fez o envio` ASC, `Data do Pedido` ASC;
