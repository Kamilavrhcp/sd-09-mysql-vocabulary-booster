SELECT customer.ContactName AS 'Nome',
customer.Country AS 'País',
COUNT(customer.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS customer
INNER JOIN
w3schools.customers AS comparation ON customer.Country = comparation.Country
AND customer.CustomerID != comparation.CustomerID
GROUP BY customer.ContactName
ORDER BY customer.ContactName;
