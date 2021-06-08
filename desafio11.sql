SELECT ContactName AS 'Nome',
  Country AS 'País',
  (SELECT COUNT(*)
    FROM w3schools.customers AS subc
    WHERE subc.CustomerID <> mainc.CustomerID
      AND subc.Country = mainc.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS mainc
HAVING `Número de compatriotas` > 0
ORDER BY 1;
