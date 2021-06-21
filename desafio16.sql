USE hr;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN	
DECLARE jobCount INT;
SELECT COUNT(*)
FROM hr.job_history jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email
GROUP BY jh.EMPLOYEE_ID
INTO jobCount;
RETURN jobCount;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');