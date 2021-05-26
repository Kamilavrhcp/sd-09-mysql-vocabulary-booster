SELECT CONCAT(empregados.FIRST_NAME, ' ', empregados.LAST_NAME) AS 'Nome completo', cargos.JOB_TITLE AS 'Cargo', historico.START_DATE AS 'Data de início do cargo', departamentos.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS empregados
INNER JOIN 
hr.job_history AS historico ON historico.EMPLOYEE_ID = empregados.EMPLOYEE_ID
INNER JOIN
hr.jobs AS cargos ON cargos.JOB_ID = historico.JOB_ID
INNER JOIN
hr.departments AS departamentos ON historico.DEPARTMENT_ID = departamentos.DEPARTMENT_ID
ORDER BY CONCAT(empregados.FIRST_NAME, ' ', empregados.LAST_NAME) DESC, cargos.JOB_TITLE ASC;
