SELECT d.ContactName AS Nome,
    d.Country AS País,
    quantityTable.`Número de compatriotas`
FROM w3schools.customers AS d
INNER JOIN
    (SELECT c.Country AS País,
        (COUNT(*) -1) AS `Número de compatriotas`
FROM w3schools.customers AS c
GROUP BY Country) AS quantityTable
ON d.Country = quantityTable.País
WHERE quantityTable.`Número de compatriotas` > 0
ORDER BY Nome;
