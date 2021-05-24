use hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE empregos INT;
SELECT COUNT(*) FROM hr.employees AS employees
INNER JOIN hr.job_history AS historia
ON employees.EMPLOYEE_ID = historia.EMPLOYEE_ID
WHERE employees.EMAIL = email
INTO empregos;
RETURN empregos;
END
$$ DELIMITER ;