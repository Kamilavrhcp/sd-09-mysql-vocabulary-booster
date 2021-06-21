USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job varchar(300))
BEGIN
SELECT
ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.job = j.job
WHERE j.JOB_TITLE = job;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
/*Consultei o código do colega Kevin Fraga para
entender o uso da sintaxe do stored procedure no projeto*/
