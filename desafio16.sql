USE hr
DELIMITER $
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS DOUBLE READS SQL DATA
BEGIN
DECLARE total DOUBLE;
SELECT COUNT(hist.EMPLOYEE_ID) FROM hr.job_history AS hist
INNER JOIN hr.employees AS emp ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email INTO total;
RETURN total;
END$
DELIMITER ;
