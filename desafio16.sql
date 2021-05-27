USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN 
DECLARE number_of_times VARCHAR(50);
SELECT COUNT(EMAIL) INTO number_of_times
FROM hr.employees
INNER JOIN hr.job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE employees.EMAIL = email
LIMIT 1;
RETURN number_of_times;
END $$

DELIMITER ;
