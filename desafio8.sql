SELECT 
(
SELECT CustomerName
FROM w3schools.customers
WHERE CustomerID = ord.CustomerID
) AS 'Nome de contato',
(
SELECT ShipperName
FROM w3schools.shippers AS ship
WHERE ShipperID = ord.ShipperID
) AS 'Empresa que fez o envio',
OrderDate AS 'Data do pedido'
FROM w3schools.orders AS ord
WHERE ord.ShipperID IN (
SELECT ShipperID
FROM w3schools.shippers
WHERE ShipperName = 'Speedy Express' OR ShipperName = 'United Package'
)
ORDER BY `Nome de contato`, `Empresa que fez o envio`;
