SELECT ContactName as 'Nome de contato',
  ShipperName as 'Empresa que fez o envio',
  OrderDate as 'Data do pedido'
FROM w3schools.orders as ord
  INNER JOIN w3schools.customers as cust ON ord.CustomerID = cust.CustomerID
  INNER JOIN w3schools.shippers as ship ON ord.ShipperID = ship.ShipperID
WHERE ord.ShipperID BETWEEN 1 AND 2
ORDER BY 1,
  2,
  3 ASC;
  