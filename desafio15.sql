USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(80))
BEGIN
	SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS employees
    INNER JOIN hr.jobs AS jobs
    ON jobs.JOB_ID = employees.JOB_ID
    WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;
