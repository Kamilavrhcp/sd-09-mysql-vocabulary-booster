SELECT CONCAT_WS(" ", e.FIRST_NAME, e.LAST_NAME) AS "Nome completo",
j.JOB_TITLE as Cargo,
DATE(e.HIRE_DATE) AS "Data de início do cargo",
d.DEPARTMENT_NAME AS "Departamento"
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
INNER JOIN hr.departments AS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT_WS(" ", e.FIRST_NAME, e.LAST_NAME) DESC, Cargo;
