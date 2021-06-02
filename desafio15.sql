USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
SELECT ROUND(AVG(salary), 2) AS 'Média salarial'
FROM hr.employees AS e
LEFT JOIN hr.jobs AS j
    ON e.job_id = j.job_id
WHERE j.job_title = job_title;
END $$

DELIMITER ;
