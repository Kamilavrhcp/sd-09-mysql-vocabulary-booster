SELECT  *
FROM 
(
(SELECT Country AS 'País' FROM w3schools.customers)
UNION ALL
(SELECT Country AS 'País'FROM w3schools.suppliers)
) AS allCountries
GROUP BY `País`
ORDER BY `País`
LIMIT 5;
