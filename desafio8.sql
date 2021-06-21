SELECT
  t2.ContactName AS 'Nome de contato',
  t3.ShipperName AS 'Empresa que fez o envio',
  t1.OrderDate AS 'Data do pedido'
FROM w3schools.customers AS t1
INNER JOIN w3schools.customers AS t2 ON t1.customerID = t2.customerID
INNER JOIN w3schools.shippers AS t3 ON t1.shipperID = t3.shipperID
WHERE t1.shipperID IN (1, 2)
ORDER BY 1 ASC, 2 ASC, 3 ASC;
