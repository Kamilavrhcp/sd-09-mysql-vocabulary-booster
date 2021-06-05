SELECT
  c1.ContactName 'Nome',
  c1.Country 'País',
  COUNT(c1.ContactName) 'Número de compatriotas'
FROM
  w3schools.customers AS c1,
  w3schools.customers AS c2
WHERE c1.Country = c2.Country
  AND c1.ContactName <> c2.ContactName
GROUP BY c1.ContactName, c1.Country
ORDER BY c1.ContactName;
