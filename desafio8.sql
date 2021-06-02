SELECT cust.ContactName AS 'Nome de contato',
ship.ShipperName AS 'Empresa que fez o envio',
orders.OrderDate AS 'Data do pedido' 
FROM w3schools.customers AS cust
INNER JOIN w3schools.orders AS orders ON orders.CustomerID = cust.CustomerID
INNER JOIN w3schools.shippers AS ship ON ship.ShipperID = orders.ShipperID AND ship.ShipperID IN(1, 2)
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
