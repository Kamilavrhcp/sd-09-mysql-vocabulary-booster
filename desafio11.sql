SELECT 
    cust.ContactName AS 'Nome',
    cust.Country AS 'País',
    (COUNT(*) - 1) AS 'Número de compatriotas'
FROM
    w3schools.customers AS cust,
    w3schools.customers AS cust2
WHERE
    cust.Country = cust2.Country
GROUP BY cust.ContactName, cust.Country
HAVING (COUNT(*) - 1) > 0
ORDER BY cust.ContactName;
