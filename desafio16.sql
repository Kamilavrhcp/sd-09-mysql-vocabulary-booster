DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_jobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) 
FROM hr.employees AS e 
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email_employee 
INTO count_jobs;
RETURN count_jobs;
END $$
DELIMITER ;
