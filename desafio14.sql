(SELECT DISTINCT
    country AS País
FROM
    w3schools.customers
ORDER BY País
LIMIT 5) UNION (SELECT DISTINCT
    country AS País
FROM
    w3schools.suppliers
ORDER BY País
LIMIT 5) ORDER BY País LIMIT 5;
