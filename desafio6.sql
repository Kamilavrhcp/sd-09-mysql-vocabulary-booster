SELECT CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME )AS 'Nome completo',
t2.JOB_TITLE AS Cargo,
t1.HIRE_DATE AS 'Data de inicio do cargo',
(SELECT t3.DEPARTMENT_NAME
FROM hr.departments AS t3
WHERE t3.DEPARTMENT_ID = t1.DEPARTMENT_ID) AS 'Departamento'
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
ORDER BY Cargo;
