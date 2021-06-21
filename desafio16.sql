USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(usermail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*) FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2 ON t1.employee_id = t2.employee_id
WHERE t2.email = usermail INTO result;
RETURN result;
END $$

DELIMITER ;
