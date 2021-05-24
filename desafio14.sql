(select Country as 'País' from w3schools.suppliers)
union
(select Country as 'País'from w3schools.customers)
order by `País`
limit 5;
