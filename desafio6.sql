SELECT * FROM hr.employees;
SELECT * FROM hr.jobs;
SELECT * FROM hr.departments;

SELECT 
	CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    j.JOB_TITLE AS `Cargo`,
    e.HIRE_DATE AS `Data de início do cargo`,
    DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID;
	