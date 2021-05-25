select concat(e.FirstName, ' ', e.LastName) as 'Nome completo',
oD.Quantity as 'Total de pedidos'
from w3schools.orders as o
inner join w3schools.employees as e on o.EmployeeID = e.EmployeeID
inner join w3schools.order_details as oD on o.OrderID = oD.OrderID
order by oD.Quantity;
