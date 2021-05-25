USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_emails INT;
SELECT COUNT(*)
FROM hr.employees AS T1
INNER JOIN hr.job_history AS T2
ON T1.EMPLOYEE_ID = T2.EMPLOYEE_ID
WHERE T1.EMAIL = email INTO total_emails;
RETURN total_emails;
END $$

DELIMITER :
