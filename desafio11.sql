SELECT
CA.ContactName AS 'Nome',
CA.Country AS 'País',
COUNT(CA.Country) AS 'Número de compatriotas'
FROM
    w3schools.customers CA
        INNER JOIN
    w3schools.customers CB ON CA.Country = CB.Country
        AND CA.CustomerID <> CB.CustomerID
GROUP BY CA.CustomerID
ORDER BY `Nome`;
