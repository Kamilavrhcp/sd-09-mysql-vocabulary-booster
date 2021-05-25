USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN selected_cargo VARCHAR(30))
BEGIN
SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM hr.jobs AS j INNER JOIN hr.employees as e
ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = selected_cargo;
END$$

DELIMITER ;
