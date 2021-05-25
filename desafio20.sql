USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN personEmail VARCHAR(100))
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', d.department_name AS 'Departamento',
j.job_title AS 'Cargo' FROM hr.job_history jh INNER JOIN hr.employees e ON jh.employee_id = e.employee_id
INNER JOIN hr.departments d ON jh.department_id = d.department_id
INNER JOIN hr.jobs j ON jh.job_id = j.job_id
WHERE e.email = personEmail
ORDER BY d.department_name ASC, j.job_title ASC;
END $$

DELIMITER ;
