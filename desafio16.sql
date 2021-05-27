USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(*)
FROM employees e INNER JOIN job_history j ON e.employee_id = j.employee_id
WHERE e.email = email INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR') AS total_empregos;
