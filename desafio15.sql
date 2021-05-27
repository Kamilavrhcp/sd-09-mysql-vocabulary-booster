USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(40))
BEGIN
SELECT ROUND(AVG(salary),2) as 'Média salarial' FROM hr.employees AS e INNER JOIN hr.jobs AS j ON e.job_id = j.job_id WHERE job_title = cargo;
END $$

DELIMITER ;
