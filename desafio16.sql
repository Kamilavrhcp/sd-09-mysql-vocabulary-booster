USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE amount INT;
    SELECT COUNT(*) INTO amount
    FROM hr.job_history AS h
    INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
    WHERE e.EMAIL = email;
    RETURN amount;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
