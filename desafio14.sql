(SELECT
  s.Country as 'País'
FROM
  w3schools.suppliers s)
UNION
(SELECT
  c.Country as 'País'
FROM
  w3schools.customers c)
ORDER BY `País` ASC LIMIT 5;
