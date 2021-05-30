SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo funcionário 1',
emp.SALARY AS 'Salário funcionário 1',
emp.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(loyee.FIRST_NAME, ' ', loyee.LAST_NAME) AS 'Nome completo funcionário 2',
loyee.SALARY AS 'Salário funcionário 2',
loyee.PHONE_NUMBER AS 'Telefone funcionário 2'

FROM hr.employees AS emp, hr.employees AS loyee 
WHERE emp.JOB_ID = loyee.JOB_ID
AND emp.EMPLOYEE_ID <> loyee.EMPLOYEE_ID

ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;

-- Academic Honesty - consulted PR - Juliette Beaudet https://github.com/tryber/sd-05-mysql-vocabulary-booster/pull/6/files