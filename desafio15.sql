USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nome_cargo VARCHAR(100))
BEGIN
  SELECT ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM employees e
  INNER JOIN jobs j ON j.JOB_ID = e.JOB_ID
  WHERE j.JOB_TITLE = nome_cargo;
END $$

DELIMITER ;
