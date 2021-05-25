USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(80))
RETURNS NUMERIC READS SQL DATA
BEGIN
DECLARE numberOfJobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) AS Jobs FROM job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO numberOfJobs;
RETURN numberOfJobs;
END $$
DELIMITER ;
