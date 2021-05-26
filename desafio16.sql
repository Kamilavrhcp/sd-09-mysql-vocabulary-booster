USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(param_email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total_empregos INT;
  SELECT COUNT(JOB_ID) INTO total_empregos
  FROM hr.employees
  WHERE JOB_ID in (
    SELECT JOB_ID
    FROM hr.employees
    WHERE EMAIL = param_email
  );
  RETURN total_empregos;
END $$

DELIMITER ;
