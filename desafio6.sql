SELECT DISTINCT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS Cargo, jobHistory.START_DATE AS `Data de início do cargo`,
departments.DEPARTMENT_NAME AS Departamento
-- FAZER COM JOB_HISTORY
FROM hr.job_history AS employees
INNER JOIN hr.jobs AS jobs
ON employees.JOB_ID = jobs.JOB_ID
INNER JOIN hr.job_history AS jobHistory
ON employees.EMPLOYEE_ID = jobHistory.EMPLOYEE_ID
INNER JOIN hr.departments AS departments
ON employees.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
-- Dúvida porque tem resultados duplicados?
-- Dúvida como fazer a diferenciação de id quando os id são iguais?
