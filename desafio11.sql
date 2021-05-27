SELECT 
    customers.ContactName AS Nome,
    customers.Country AS País,
    COUNT(customers.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers
        INNER JOIN
    w3schools.customers AS customers2 ON customers2.Country = customers.Country
        AND customers2.CustomerID <> customers.CustomerID
GROUP BY 1, 2
ORDER BY 1;
