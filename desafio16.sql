USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA

BEGIN
DECLARE empregos INT;
SELECT 
    COUNT(*)
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    e.EMAIL = email INTO empregos;
RETURN empregos;
END$$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
