USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT 
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM job_history h INNER JOIN jobs j ON h.job_id = j.job_id
INNER JOIN employees e ON h.employee_id = e.employee_id
INNER JOIN departments d ON h.department_id = d.department_id
WHERE e.email = email
ORDER BY Departamento, Cargo;
END $$
    
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
