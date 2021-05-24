select c1.ContactName as 'Nome', c1.Country as 'País',
(select count(c2.country) - 1 from w3schools.customers as c2 group by Country having c1.Country = c2.Country)
as 'Número de compatriotas'
from w3schools.customers as c1
order by ContactName;
