USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN nome_do_cargo VARCHAR(50))
	BEGIN
		SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM employees AS e
        INNER JOIN jobs AS j ON j.JOB_ID = e.JOB_ID 
        WHERE j.JOB_TITLE = nome_do_cargo;
    END $$
    DELIMITER ;
