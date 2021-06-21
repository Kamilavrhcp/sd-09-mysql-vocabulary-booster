SELECT  customers.ContactName AS `Nome`,
        customers.Country AS `País`,
        COUNT(customers.ContactName) AS `Número de compatriotas`
FROM w3schools.customers
JOIN w3schools.customers AS customers2 ON customers.Country = customers2.Country AND customers.CustomerID <> customers2.CustomerID
GROUP BY customers.ContactName, customers.Country
ORDER BY `Nome`;
