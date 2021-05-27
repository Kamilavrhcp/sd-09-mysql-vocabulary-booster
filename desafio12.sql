SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
e.SALARY AS 'Salário funcionário 1',
e.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(newE.FIRST_NAME, ' ', newE.LAST_NAME) AS 'Nome completo funcionário 2',
newE.SALARY AS 'Salário funcionário 2',
newE.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS e
INNER JOIN hr.employees AS newE ON e.JOB_ID = newE.JOB_ID AND e.EMPLOYEE_ID != newE.EMPLOYEE_ID
ORDER BY 1, 4;
