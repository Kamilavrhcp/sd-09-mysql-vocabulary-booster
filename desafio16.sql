DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT
COUNT(*)
FROM hr.job_history AS job
JOIN hr.employees AS emp
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO total_empregos;
RETURN total_empregos;
END $$
DELIMITER ;
