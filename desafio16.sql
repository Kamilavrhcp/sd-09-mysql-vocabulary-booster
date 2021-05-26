USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
  RETURNS INT READS SQL DATA
  BEGIN
    DECLARE total_empregos INT;
    SELECT COUNT(*)
    FROM hr.employees INNER JOIN hr.job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
    WHERE employees.EMAIL = email INTO total_empregos;
    RETURN total_empregos;
  END $$

DELIMITER ;
