USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numero_de_empregos INT;
SELECT 
    COUNT(*)
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        AND e.EMAIL LIKE CONCAT('%', email, '%')
GROUP BY h.EMPLOYEE_ID 
INTO numero_de_empregos; 
RETURN numero_de_empregos;
END $$

DELIMITER ;
