SELECT CustomerName as `Nome`, Country as `País`, COUNT(country) AS `Número de compatriotas` FROM w3schools.customers
GROUP BY CustomerName;

-- gera tabela com nome de países e num de compatriotas
select country, COUNT(Country) - 1 as `compatriotas` FROM w3schools.customers as support_table
group by Country;

-- tenta mesclar as 2 tabelas acima
SELECT CustomerName as `Nome`, Country as `País`, (
	select COUNT(COuntry) - 1 as `compatriotas` 
	WHERE support_table.country = main_table.country
	group by Country) as support_table
FROM w3schools.customers as main_table
GROUP BY CustomerName;

-- SELECT CustomerName as `Nome`, Country as `País`, COUNT() AS `Número de compatriotas` FROM w3schools.customers as main_table
-- GROUP BY CustomerName;

select country, COUNT(Country) - 1 as `compatriotas` FROM w3schools.customers
	GROUP BY contry;




SELECT
    first_name,
    (
        SELECT address
        FROM sakila.address
        WHERE address.address_id = tabela_externa.address_id
    ) AS address
FROM sakila.customer AS tabela_externa;