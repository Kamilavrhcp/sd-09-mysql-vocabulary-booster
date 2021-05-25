SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
j.JOB_TITLE AS Cargo, DATE(h.START_DATE) AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS departamento
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
INNER JOIN hr.jobs AS j
INNER JOIN hr.departments AS d
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
AND h.JOB_ID = j.JOB_ID
AND h.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY 1 DESC, 2;
