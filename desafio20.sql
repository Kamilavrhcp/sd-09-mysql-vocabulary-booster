-- Toda pessoa funcionária no banco hr possui um histórico completo de cargos. Logo, crie uma procedure chamada 
USE hr;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(200))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees e
INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs j ON j.JOB_ID = jh.JOB_ID
WHERE email = e.EMAIL
ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$

DELIMITER ;
