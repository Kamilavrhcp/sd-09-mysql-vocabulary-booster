/* 6 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas
Faça um relatório que mostra o histórico de cargos das pessoas empregadas.

Use o banco hr como referência

Monte uma query que exiba 04 colunas:

A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada (não se esqueça do espaço entre o nome e o sobrenome).

A segunda deve possuir o alias "Cargo" e exibir o nome do cargo da pessoa.

A terceira deve possuir o alias "Data de início do cargo" e exibir a data que a pessoa iniciou o cargo.

A quarta deve possuir o alias "Departamento" e mostrar o nome do departamento em que a pessoa exerceu seu cargo.

Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem decrescente.

Em caso de empate no nome completo, ordene os resultados pelo nome do cargo em ordem alfabética. */

SELECT
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    (SELECT JOB_TITLE FROM hr.jobs WHERE JOB_ID = hr.employees.JOB_ID) AS Cargo,
    HIRE_DATE AS 'Data de início do cargo',
    (SELECT DEPARTMENT_NAME FROM hr.departments WHERE DEPARTMENT_ID = hr.employees.DEPARTMENT_ID) AS Departamento
FROM
	hr.employees
ORDER BY CONCAT(FIRST_NAME, ' ', LAST_NAME) DESC, Cargo ASC;
