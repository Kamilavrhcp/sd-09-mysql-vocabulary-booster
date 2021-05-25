SELECT 
    CUTSTOMER.ContactName AS 'Nome',
    CUTSTOMER.Country AS 'País',
    COUNT(CUTSTOMER2.ContactName) AS 'Número de compatriotas'
FROM
    w3schools.customers AS CUTSTOMER,
    w3schools.customers AS CUTSTOMER2
WHERE
    CUTSTOMER.Country = CUTSTOMER2.Country
        AND CUTSTOMER.CustomerID <> CUTSTOMER2.CustomerID
GROUP BY CUTSTOMER.ContactName , CUTSTOMER.Country
ORDER BY CUTSTOMER.ContactName;
