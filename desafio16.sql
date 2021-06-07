USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(80))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE jobs INT;
    SELECT COUNT(j.JOB_ID)
    FROM job_history AS j
    INNER JOIN employees AS e
    ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email
    INTO jobs;
    RETURN jobs;
END $$

DELIMITER ;
