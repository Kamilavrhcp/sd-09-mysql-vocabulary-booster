SELECT wc.ContactName AS 'Nome',
    wc.Country AS `País`,
    COUNT(wc.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS wc, w3schools.customers AS wc2
WHERE wc.Country = wc2.Country AND wc.ContactName <> wc2.ContactName
GROUP BY `Nome`, `País`
ORDER BY `Nome`;
