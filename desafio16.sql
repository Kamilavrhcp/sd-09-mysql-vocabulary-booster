USE hr;
DELIMITER //

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) AS total_empregos
  FROM job_history INNER JOIN hr.employees ON hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID
  WHERE hr.employees.EMAIL = email
  INTO total;
  RETURN total;
END //

DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
