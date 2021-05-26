USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT
ROUND(AVG(SALARY),2) AS 'Média salarial'
FROM hr.employees
WHERE JOB_ID = cargo;
END $$
DELIMITER ;
