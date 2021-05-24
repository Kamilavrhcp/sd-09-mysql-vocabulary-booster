SELECT cus.ContactName AS `Nome de contato`,
ship.ShipperName AS `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.orders AS ord
JOIN w3schools.shippers AS ship
ON ord.ShipperID = ship.ShipperID
JOIN w3schools.customers AS cus
ON ord.CustomerID = cus.CustomerID
WHERE ship.ShipperID <> 3
ORDER BY 1 ASC, 2 ASC, 3 ASC;
