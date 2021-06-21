USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT TRUNCATE(AVG(SALARY), 2) AS 'Média salarial' FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2 ON t1.job_id = t2.job_id
WHERE t2.job_title = cargo;
END $$

DELIMITER ;
