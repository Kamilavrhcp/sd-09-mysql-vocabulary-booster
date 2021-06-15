USE hr;
DELIMITER //

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(hr.employees.SALARY), 2) AS 'Média salarial'
  FROM hr.employees INNER JOIN hr.jobs ON hr.employees.JOB_ID = hr.jobs.JOB_ID
  WHERE hr.jobs.JOB_TITLE = cargo;
END //

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
