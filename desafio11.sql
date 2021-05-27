SELECT 
    Tab1.ContactName AS `Nome`,
    Tab1.Country AS `País`,
    COUNT(Tab2.Country) AS `Número de compatriotas`
FROM
    w3schools.customers AS Tab1
        JOIN
    w3schools.customers AS Tab2 ON Tab2.Country = Tab1.Country
WHERE
    Tab1.ContactName != Tab2.ContactName
GROUP BY `Nome` , `País`
ORDER BY `Nome` ASC;
