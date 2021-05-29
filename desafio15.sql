USE hr

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN role VARCHAR(35))
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS e
    JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
    WHERE JOB_TITLE = role;
END $$

DELIMITER ;
