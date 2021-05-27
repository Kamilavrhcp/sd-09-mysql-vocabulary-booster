SELECT t1.ContactName AS 'Nome de contato',
t2.ShipperName AS 'Empresa que fez o envio',
t3.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS t3
INNER JOIN w3schools.customers AS t1
ON t1.CustomerID = t3.CustomerID
INNER JOIN w3schools.shippers AS t2
ON t2.ShipperID = t3.ShipperID
HAVING `Empresa que fez o envio` IN('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
