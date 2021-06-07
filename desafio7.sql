SELECT
UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
jobHist.START_DATE AS 'Data de início',
employees.SALARY AS 'Salário'
FROM hr.employees AS employees
INNER JOIN hr.job_history AS jobHist
ON employees.EMPLOYEE_ID = jobHist.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Data de início` ASC;
