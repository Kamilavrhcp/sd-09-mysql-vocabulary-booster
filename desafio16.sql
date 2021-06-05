USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE employees_total INT;
SELECT COUNT(*)
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
  ON e.employee_id = jh.employee_id
WHERE e.email = email INTO employees_total;
  RETURN employees_total;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
