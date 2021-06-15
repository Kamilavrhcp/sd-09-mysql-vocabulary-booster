SELECT CONCAT(fl.FIRST_NAME, ' ', fl.LAST_NAME) AS 'Nome completo', 
jb.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
dp.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jh
INNER JOIN hr.jobs AS jb
ON jh.JOB_ID = jb.JOB_ID
INNER JOIN hr.employees AS fl
ON fl.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS dp
ON dp.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
