SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo',
hist.START_DATE AS 'Data de início do cargo',
deps.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS hist
JOIN hr.employees AS emp
ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
JOIN hr.jobs AS jobs
ON hist.JOB_ID = jobs.JOB_ID
JOIN hr.departments AS deps
ON hist.DEPARTMENT_ID = deps.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
