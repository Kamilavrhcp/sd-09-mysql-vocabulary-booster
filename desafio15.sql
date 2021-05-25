DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_name VARCHAR(50))
BEGIN
SELECT REPLACE(FORMAT(AVG(e.salary), 2), ',', '')
FROM hr.employees AS e
WHERE
e.JOB_ID IN (SELECT j.JOB_ID FROM jobs AS j WHERE j.JOB_TITLE = job_name);
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');