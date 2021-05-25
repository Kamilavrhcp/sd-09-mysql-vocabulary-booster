USE hr;
DELIMITER //

CREATE PROCEDURE buscar_media_por_cargo(
  IN job VARCHAR(100)
)
BEGIN

  SELECT
    ROUND(AVG(e.SALARY), 2) as 'Média salarial'
  FROM
    hr.jobs j
    INNER JOIN hr.employees e ON j.JOB_ID = e.JOB_ID
  WHERE j.JOB_TITLE = job;

END //

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
