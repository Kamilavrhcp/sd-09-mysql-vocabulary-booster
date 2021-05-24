USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
FROM hr.employees AS e
WHERE (SELECT job_title FROM hr.jobs AS j WHERE e.job_id = j.job_id) = cargo;
END $$

DELIMITER ;
