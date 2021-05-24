USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantityOfRegisteredJobs INT;
SELECT COUNT(*) 
FROM employees AS E
INNER JOIN job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = email
INTO quantityOfRegisteredJobs;
RETURN quantityOfRegisteredJobs;
END $$

DELIMITER ;
