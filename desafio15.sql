DELIMITER !!
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30))
  BEGIN
    SELECT ROUND(AVG(e.salary), 2) AS 'Média salarial'
    FROM hr.jobs AS j INNER JOIN hr.employees AS e ON j.job_id = e.job_id
    WHERE j.JOB_TITLE = cargo;
  END
!! DELIMITER ;
