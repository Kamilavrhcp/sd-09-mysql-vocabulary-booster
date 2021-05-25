USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE empregos_no_historico INT;
    SELECT 
		COUNT(jh.DEPARTMENT_ID)
	FROM employees AS e
    INNER JOIN job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email
    INTO empregos_no_historico;
    RETURN empregos_no_historico;
END $$

DELIMITER ;
