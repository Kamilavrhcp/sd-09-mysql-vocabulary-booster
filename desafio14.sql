SELECT Country AS 'País'
FROM (
  (SELECT Country FROM suppliers)
    UNION
  (SELECT Country FROM customers)
) AS Country
ORDER BY Country LIMIT 5;
