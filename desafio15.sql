USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(salary), 2) AS 'Média salarial' FROM employees e INNER JOIN jobs j ON e.job_id = j.job_id WHERE j.job_title = job;
END $$
    
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
