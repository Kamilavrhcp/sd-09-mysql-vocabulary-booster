DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(30))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quant_empregos INT;
    SELECT 
        COUNT(h.JOB_ID)
    FROM
        hr.job_history AS h
            INNER JOIN
        hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
    WHERE
        e.EMAIL LIKE CONCAT('%', email, '%') INTO quant_empregos;
        RETURN quant_empregos;
END $$

DELIMITER ;
