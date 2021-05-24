select concat(em.FirstName, ' ', em.LastName) as 'Nome completo',
count(*) as 'Total de pedidos' from orders as ord
inner join employees as em on em.EmployeeID = ord.EmployeeID
group by ord.EmployeeID
order by count(*);
