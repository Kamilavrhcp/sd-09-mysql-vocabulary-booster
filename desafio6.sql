SELECT CONCAT_WS(" ", e.FIRST_NAME, e.LAST_NAME) AS "Nome completo",
j.JOB_TITLE as Cargo,
DATE(jh.START_DATE) AS "Data de início do cargo",
d.DEPARTMENT_NAME AS "Departamento"
FROM hr.job_history AS jh
INNER JOIN hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT_WS(" ", e.FIRST_NAME, e.LAST_NAME) DESC, Cargo;
