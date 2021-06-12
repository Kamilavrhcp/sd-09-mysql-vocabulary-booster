SELECT
    ContactName AS `Nome`,
    Country AS `País`,
    (SELECT COUNT(*)
    FROM w3schools.customers
    WHERE `País` = Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers
HAVING `Número de compatriotas` >= 1
ORDER BY `Nome`;
