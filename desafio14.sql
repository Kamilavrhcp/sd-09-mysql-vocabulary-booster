/* Exiba os 05 primeiros países distintos dentre os consumidores e empresas fornecedoras, em ordem alfabética. */

SELECT Country AS `País` FROM w3schools.customers
UNION
SELECT Country AS `País` FROM w3schools.suppliers
ORDER BY `País` ASC
LIMIT 5;
