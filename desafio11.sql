SELECT
    c.ContactName AS 'Nome',
    c.Country AS 'País',
    cntry.amount AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN (
	SELECT
		COUNT(Country) AS 'amount',
        customers.Country AS 'Country'
	FROM w3schools.customers
	GROUP BY customers.Country) AS cntry ON cntry.Country = c.Country
WHERE cntry.amount > 1
ORDER BY `Nome`;
