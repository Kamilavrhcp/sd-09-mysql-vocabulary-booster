SELECT 
    customers.ContactName AS Nome,
    customers.Country AS País,
    COUNT(customers.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers
        INNER JOIN w3schools.customers AS t2 ON customers.Country = t2.Country AND customers.CustomerID <> t2.CustomerID
GROUP BY customers.ContactName , customers.Country
ORDER BY customers.ContactName;
