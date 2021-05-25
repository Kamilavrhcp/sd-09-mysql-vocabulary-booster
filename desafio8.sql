SELECT 
customer.ContactName AS `Nome de contato`,
shipper.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM w3schools.orders AS orders
INNER JOIN w3schools.shippers AS shipper ON shipper.ShipperID = orders.ShipperID
INNER JOIN w3schools.customers AS customer ON customer.CustomerID = orders.CustomerID
WHERE shipper.ShipperName = 'Speedy Express' OR shipper.ShipperName = 'United Package'
ORDER BY `Nome de contato`, `Empresa que fez o envio`;
