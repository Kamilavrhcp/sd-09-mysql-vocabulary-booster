SELECT
  C1.`ContactName` AS `Nome`,
  C1.`Country` AS `País`,
  (COUNT(C1.`Country`) - 1) AS `Número de compatriotas`
FROM w3schools.customers AS C1
INNER JOIN w3schools.customers AS C2 ON C2.Country = C1.Country
GROUP BY C1.`ContactName`
ORDER BY C1.`ContactName` ASC;
