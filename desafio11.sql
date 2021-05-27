SELECT A.ContactName AS 'Nome', A.Country AS 'País', COUNT(A.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country AND A.CustomerID <> B.CustomerID
GROUP BY 1, 2
ORDER BY 1;
