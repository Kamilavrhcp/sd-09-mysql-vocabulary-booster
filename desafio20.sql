USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN usermail VARCHAR(50))
BEGIN
SELECT CONCAT(t2.first_name, ' ', t2.last_name) AS 'Nome completo', t3.department_name AS Departamento, t4.job_title AS Cargo
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2
ON t1.employee_id = t2.employee_id
INNER JOIN hr.departments AS t3
ON t1.department_id = t3.department_id
INNER JOIN hr.jobs AS t4
ON t1.job_id = t4.job_id
WHERE t2.email = usermail
ORDER BY 2 ASC, 3 ASC;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
