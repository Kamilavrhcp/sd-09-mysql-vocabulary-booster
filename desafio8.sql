SELECT
T2.ContactName AS 'Nome de contato',
T3.ShipperName AS 'Empresa que fez o envio',
T1.OrderDate AS 'Data do pedido'
FROM w3schools.orders AS T1
INNER JOIN w3schools.customers AS T2
ON T1.CustomerID = T2.CustomerID
INNER JOIN w3schools.shippers AS T3
ON T1.ShipperID = T3.ShipperID
WHERE T3.ShipperName IN ('Speedy Express', 'United Package')
ORDER BY T2.ContactName ASC, T3.ShipperName ASC, T1.OrderDate ASC;