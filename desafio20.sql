USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(30))
BEGIN
SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
d.DEPARTMENT_NAME AS `Departamento`,
j.JOB_TITLE AS `Cargo`
FROM job_history AS h 
INNER JOIN employees AS e 
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID 
INNER JOIN departments AS d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN jobs AS j
ON h.JOB_ID = j.JOB_ID
WHERE e.EMAIL = employee_email
ORDER BY `Departamento`, `Cargo`;
END$$
DELIMITER ;
