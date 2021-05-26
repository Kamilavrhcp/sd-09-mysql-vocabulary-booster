SELECT CONCAT(UCASE(empregados.FIRST_NAME), ' ', UCASE(empregados.LAST_NAME)) AS 'Nome completo', historico.START_DATE AS 'Data de início', empregados.SALARY AS 'Salário'
FROM hr.employees AS empregados
INNER JOIN 
hr.job_history AS historico ON historico.EMPLOYEE_ID = empregados.EMPLOYEE_ID
WHERE MONTH(historico.START_DATE) IN (1, 2, 3)
ORDER BY CONCAT(UCASE(empregados.FIRST_NAME), ' ', UCASE(empregados.LAST_NAME));
