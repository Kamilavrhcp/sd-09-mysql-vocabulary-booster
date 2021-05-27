SELECT UCASE(CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME )) AS 'Nome completo',
t1.START_DATE AS 'Data de início',
t2.Salary AS 'Salário'
FROM hr.job_history AS t1
INNER JOIN hr.employees As t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
HAVING MONTH(`Data de início`) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
