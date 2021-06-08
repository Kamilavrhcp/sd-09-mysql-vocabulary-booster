FROM
    w3schools.customers AS c1
        INNER JOIN
    w3schools.customers AS c2 ON c1.Country = c2.Country
        AND c1.CustomerID <> c2.CustomerID
GROUP BY c1.ContactName , c2.Country
ORDER BY Nome ASC;
