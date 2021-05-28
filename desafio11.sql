SELECT 
    clients1.ContactName AS 'Nome',
    clients1.Country AS 'País',
    COUNT(clients2.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers AS clients1,
    w3schools.customers AS clients2
WHERE
    clients1.Country = clients2.Country
        AND clients1.CustomerID != clients2.CustomerID
GROUP BY Nome , País
ORDER BY Nome;
