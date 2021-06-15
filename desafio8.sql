SELECT ct.ContactName AS 'Nome de contato', 
sp.ShipperName AS 'Empresa que fez o envio',
o.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS o
INNER JOIN w3schools.customers AS ct
ON o.CustomerID = ct.CustomerID
INNER JOIN w3schools.shippers AS sp
ON o.ShipperID = sp.ShipperID
WHERE sp.ShipperName = 'Speedy Express' or sp.ShipperName = 'United Package'
ORDER BY ct.ContactName, sp.ShipperName, o.OrderDate;
