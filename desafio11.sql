SELECT
  c.ContactName AS 'Nome',
  c.Country AS 'País',
  (SELECT (COUNT(*) - 1) FROM customers WHERE Country = c.Country) AS 'Número de compatriotas'
FROM customers c
WHERE (SELECT (COUNT(*) - 1) FROM customers WHERE Country = c.Country) > 0
ORDER BY c.ContactName;
