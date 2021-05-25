USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos INT;
SELECT COUNT(*) FROM hr.job_history
WHERE employee_id = (
SELECT employee_id FROM hr.employees
WHERE email LIKE CONCAT('%', employeeEmail, '%')) INTO empregos;
RETURN empregos;
END $$

DELIMITER ;
