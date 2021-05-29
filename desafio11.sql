SELECT 
    contactName AS 'Nome',
    country AS 'Pais',
    (SELECT 
    COUNT(*)
FROM
    w3schools.customers as c
WHERE c.country = w3schools.customers.country) AS 'Número de compatriotas'
FROM
    w3schools.customers
ORDER BY Nome;


