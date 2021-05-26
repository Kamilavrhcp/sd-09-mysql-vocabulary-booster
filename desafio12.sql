SELECT
	IF ()
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo funcionário 1',
    AS 'Salário funcionário 1',
    AS 'Telefone funcionário 1',
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo funcionário 2',
    AS 'Salário funcionário 2',
    AS 'Telefone funcionário 2'
    FROM hr.employees
    ;