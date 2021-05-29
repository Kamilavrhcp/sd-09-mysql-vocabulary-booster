SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
    (SELECT 
            COUNT(ContactName)
        FROM
            w3schools.customers) AS 'Número de compatriotas'
FROM
    w3schools.customers AS t1
WHERE
    t1.Country = t2.Country;