select cu.ContactName as 'Nome de contato',
sh.ShipperName as 'Empresa que fez o envio',
ord.OrderDate  as 'Data do pedido' from w3schools.orders as ord
inner join w3schools.customers as cu on ord.CustomerID = cu.CustomerID
inner join w3schools.shippers as sh on sh.ShipperID = ord.ShipperID
where sh.ShipperName in ('Speedy Express', 'United Package')
order by  cu.ContactName, sh.ShipperName, ord.OrderDate;
