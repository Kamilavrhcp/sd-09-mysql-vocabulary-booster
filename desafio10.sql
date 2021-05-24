select pr.ProductName as 'Produto',
min(od.Quantity) as 'Mínima',
max(od.Quantity) as 'Máxima',
round(avg(od.Quantity),2) as 'Média'
from w3schools.order_details as od
inner join w3schools.products as pr on pr.ProductID = od.ProductID
group by od.ProductID
having round(avg(od.Quantity),2) > 20.00
order by round(avg(od.Quantity),2), 'Produto';
