select c1.ContactName as 'Nome', c1.Country as 'País',
(select (count(c2.country) - 1 ) as counting 
from w3schools.customers as c2 group by Country having c1.Country = c2.Country )
as 'Número de compatriotas'
from w3schools.customers as c1
where (select (count(c2.country) - 1 ) as counting 
from w3schools.customers as c2 group by Country having c1.Country = c2.Country ) > 0
order by ContactName;
