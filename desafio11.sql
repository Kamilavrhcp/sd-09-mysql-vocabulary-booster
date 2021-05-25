SELECT
C.ContactName AS 'Nome',
C.Country AS 'País',
(SELECT (COUNT(Country)) - 1 FROM w3schools.customers
WHERE C.Country = customers.Country) AS 'Número de compatriotas'
FROM w3schools.customers C
GROUP BY C.ContactName
ORDER BY C.ContactName;

SELECT * FROM w3schools.customers;