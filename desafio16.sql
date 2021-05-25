USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS VARCHAR(200) READS SQL DATA
BEGIN
	DECLARE quantidade_de_empregos INT;
    SELECT COUNT(h.JOB_ID) AS 'Quantidade de Empregos'FROM hr.job_history h
    INNER JOIN hr.employees e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email
    INTO quantidade_de_empregos;
    RETURN quantidade_de_empregos;
END $$

DELIMITER ;
