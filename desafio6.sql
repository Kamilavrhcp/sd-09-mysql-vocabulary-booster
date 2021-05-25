SELECT 
(
SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)
FROM hr.employees as emp
WHERE emp.EMPLOYEE_ID = hist.EMPLOYEE_ID
) AS 'Nome completo',
(
SELECT JOB_TITLE
FROM hr.jobs AS job
WHERE job.JOB_ID = hist.JOB_ID
) AS Cargo,
hist.START_DATE AS 'Data de início do cargo',
(
SELECT DEPARTMENT_NAME
FROM hr.departments AS dep
WHERE dep.DEPARTMENT_ID = hist.DEPARTMENT_ID
) AS Departamento
FROM hr.job_history AS hist
WHERE hist.EMPLOYEE_ID <> 0
ORDER BY `Nome completo` DESC, Cargo ASC;
