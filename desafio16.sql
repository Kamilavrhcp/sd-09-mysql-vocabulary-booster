USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(selected_email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) from employees AS e
INNER JOIN job_history AS h
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = selected_email
INTO quantity;
RETURN quantity;
END &&

DELIMITER ;
