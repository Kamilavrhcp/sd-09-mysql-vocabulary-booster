SELECT 
    T1.ContactName AS `Nome`,
    T1.Country AS `País`,
    COUNT(T1.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS T1
        INNER JOIN
    w3schools.customers AS T2 ON T1.Country = T2.Country
        AND T1.CustomerID != T2.CustomerID
GROUP BY T1.Country , T1.CustomerID
ORDER BY `Nome` ASC;