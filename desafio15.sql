USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM hr.employees 
INNER JOIN hr.jobs ON employees.JOB_ID = jobs.JOB_ID
WHERE jobs.JOB_TITLE = cargo;
END $$
DELIMITER ;
