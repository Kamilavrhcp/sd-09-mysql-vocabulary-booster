DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(e.salary), 2) as 'Média salarial' FROM hr.employees as e
INNER JOIN hr.jobs as j ON j.JOB_ID = e.JOB_ID
WHERE j.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
