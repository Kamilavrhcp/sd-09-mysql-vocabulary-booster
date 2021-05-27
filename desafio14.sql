SELECT suppliers.Country AS País FROM w3schools.suppliers
 UNION
SELECT customers.Country AS País FROM w3schools.customers
ORDER BY País LIMIT 5; 
