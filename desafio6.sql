SELECT
CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
j.JOB_TITLE,
jh.start_date AS `Data de início do cargo`,
d.DEPARTMENT_NAME
FROM 
hr.employees AS e, hr.job_history AS jh, hr.jobs AS j, hr.departments AS d
WHERE
e.employee_id = jh.employee_id
AND 
j.JOB_ID = jh.JOB_ID
AND
jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY
CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title ASC;