SELECT
    ContactName AS 'Nome de contato',
    ShipperName AS 'Empresa que fez o pedido',
    OrderDate AS 'Data do pedido'
FROM w3schools.customers
JOIN w3schools.orders ON w3schools.customers.CustomerID = w3schools.orders.CustomerID
JOIN w3schools.shippers ON w3schools.orders.ShipperID = w3schools.shippers.ShipperID
WHERE ShipperName IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato`, `Empresa que fez o pedido`, `Data do pedido`;
