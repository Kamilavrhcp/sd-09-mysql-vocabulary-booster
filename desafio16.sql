USE hr;
DELIMITER //

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN

  DECLARE amount_jobs INT;
  SELECT
    COUNT(jh.JOB_ID)
  FROM
    hr.employees e
    INNER JOIN hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  WHERE e.EMAIL = email
  INTO amount_jobs;
  RETURN amount_jobs;

END //

DELIMITER ;
