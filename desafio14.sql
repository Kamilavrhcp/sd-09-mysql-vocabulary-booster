(SELECT DISTINCT
    COUNTRY_C.Country AS País
FROM
    w3schools.customers AS COUNTRY_C) UNION ALL (SELECT DISTINCT
    COUNTRY_S.Country
FROM
    w3schools.suppliers AS COUNTRY_S) ORDER BY País LIMIT 5;
