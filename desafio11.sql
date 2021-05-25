SELECT 
    customers.ContactName AS Nome,
    customers.Country AS País,
    COUNT(customers.ContactName) AS `Número de compatriotas`
FROM
    w3schools.customers
        INNER JOIN w3schools.Customers AS t2 ON Customers.Country = t2.Country AND Customers.CustomerID <> t2.CustomerID
GROUP BY customers.ContactName , customers.Country
ORDER BY customers.ContactName;
