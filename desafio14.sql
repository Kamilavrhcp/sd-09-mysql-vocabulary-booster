SELECT 
    C.Country AS `País`
FROM
    w3schools.customers AS C
        INNER JOIN
    w3schools.suppliers AS S ON S.Country != C.Country
GROUP BY `País`
ORDER BY `País` ASC
LIMIT 5;
