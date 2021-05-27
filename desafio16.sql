USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email CHAR(20))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantidade_total INT;
  SELECT
    COUNT(*)
  FROM
    hr.employees AS e
  INNER JOIN hr.job_history AS jh
  ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email
  GROUP BY e.EMAIL
  INTO quantidade_total;
  RETURN quantidade_total;
END $$

DELIMITER ;
