USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail varchar(50))
RETURNS INT READS SQL DATA
BEGIN 
DECLARE jobsQuantity INT;
SELECT
COUNT(*)
FROM
hr.employees AS employees
INNER JOIN hr.job_history AS job_history
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE employees.EMAIL = employeeEmail
INTO jobsQuantity;
RETURN jobsQuantity;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
