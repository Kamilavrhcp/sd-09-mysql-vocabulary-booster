SELECT c1.ContactName AS 'Nome',
c1.Country AS 'País',
COUNT(c2.ContactName) AS 'Número de compatriotas'
FROM w3schools.customers AS c1,
w3schools.customers AS c2
WHERE c1.ContactName <> c2.ContactName AND c1.Country = c2.Country
GROUP BY c1.ContactName, c1.Country
ORDER BY c1.ContactName;
/* Eu solucionei minha dúvida quanto a este desafio consultando o repositório
do Marcus Witthoeft da minha turma(09), não estava conseguindo realizar o desafio
atravez de subqueries e tinha uma idéia de utilizar o SELF JOIN mas estava
tendo dificuldade na hora de fazer a comparação certa, e também a aprendi a
utilização do GROUP BY com multiplas colunas para possibilitar o uso do COUNT
nesta ocasião. */
