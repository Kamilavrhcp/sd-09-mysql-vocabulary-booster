SELECT
  CUST.`ContactName` AS `Nome de contato`,
  SHI.`ShipperName` AS `Empresa que fez o envio`,
  O.`OrderDate` AS `Data do pedido`
FROM w3schools.orders AS O
INNER JOIN
  w3schools.customers AS CUST ON CUST.CustomerID = O.CustomerID
INNER JOIN
  w3schools.shippers AS SHI ON SHI.ShipperID = O.ShipperID
  AND SHI.`ShipperName` IN ('Speedy Express', 'United Package')
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;
