USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN job TEXT)
BEGIN
  SELECT
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.jobs AS j
  INNER JOIN hr.employees AS e
  ON j.JOB_ID = e.JOB_ID
  Where JOB_TITLE = job;
END $$;

DELIMITER ;
