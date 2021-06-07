SELECT
DISTINCT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS Cargo,
jobHist.START_DATE AS `Data de início do cargo`,
departments.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS jobHist
INNER JOIN hr.employees AS employees
ON jobHist.JOB_ID = employees.JOB_ID
INNER JOIN hr.jobs AS jobs
ON jobHist.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS departments
ON jobHist.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
