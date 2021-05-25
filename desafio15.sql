USE hr;
DELIMITER $$ CREATE PROCEDURE buscar_media_por_cargo(
  IN cargo VARCHAR(100)
) BEGIN 
SELECT 
  ROUND(
    AVG(employee.SALARY), 
    2
  ) AS 'Média salarial' 
FROM 
  employees AS employee 
  INNER JOIN jobs AS job ON job.JOB_ID = employee.JOB_ID 
WHERE 
  job.JOB_TITLE = cargo;
END $$ DELIMITER;
