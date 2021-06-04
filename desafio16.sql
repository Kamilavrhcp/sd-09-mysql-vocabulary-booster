USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE numberOfJobs INT;
	SELECT COUNT(jh.EMPLOYEE_ID)
    FROM job_history as jh
    INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    WHERE e.EMAIL = email
    INTO numberOfJobs;
    RETURN numberOfJobs;
END $$
DELIMITER ;
