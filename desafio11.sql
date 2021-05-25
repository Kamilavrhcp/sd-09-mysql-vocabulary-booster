/* Exibe todas as pessoas clientes que possuem compatriotas, mostrando a quantidade de
 compatriotas para cada pessoa cliente */
 
SELECT
    tab1.ContactName AS `Nome`,
    tab1.Country AS `País`,
    COUNT(tab1.Country) AS `Número de compatriotas`
FROM
    w3schools.customers tab1
        INNER JOIN
    w3schools.customers AS tab2 ON tab1.Country = tab2.Country
        AND tab2.CustomerID != tab1.CustomerID
GROUP BY tab1.Country, tab1.CustomerID
ORDER BY `Nome` ASC;
