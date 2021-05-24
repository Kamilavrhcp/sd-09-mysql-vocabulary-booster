SELECT
  C1.`ContactName` AS `Nome`,
  C1.`Country` AS `País`,
  COUNT(C1.`Country`) AS `Número de compatriotas`
FROM w3schools.customers AS C1
INNER JOIN w3schools.customers AS C2 ON C2.Country = C1.Country AND C2.CustomerID <> C1.CustomerID
GROUP BY C1.`ContactName`, C1.`Country`
ORDER BY C1.`ContactName` ASC;
