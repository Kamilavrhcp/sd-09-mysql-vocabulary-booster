SELECT
  c1.ContactName AS 'Nome',
  c1.Country AS 'País',
  c_join.contagem - 1 AS 'Número de compatriotas'
FROM
  w3schools.customers c1
    LEFT JOIN
  (SELECT
    c.Country AS 'country', COUNT(c.Country) AS 'contagem'
  FROM
    w3schools.customers c
  GROUP BY c.Country
  HAVING contagem > 1) c_join ON c1.Country = c_join.Country
WHERE
  c_join.contagem IS NOT NULL
ORDER BY Nome;
