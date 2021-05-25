USE hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(E.`SALARY`), 2) AS `Média salarial` FROM employees AS E
  INNER JOIN jobs AS J ON J.`JOB_ID` = E.`JOB_ID` AND J.`JOB_TITLE` = job_title;
END $$
DELIMITER ;
