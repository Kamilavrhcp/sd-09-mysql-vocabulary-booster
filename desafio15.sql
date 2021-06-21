DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(in cargo varchar(100))
BEGIN
SELECT 
ROUND(AVG(e.SALARY), 2) AS 'Média salarial'
FROM
hr.employees AS e
INNER JOIN
hr.jobs AS j ON j.JOB_ID = e.JOB_ID
WHERE
j.JOB_TITLE = cargo;
END $$
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
/*Consultei o código do colega Kevin Fraga para
entender o uso da sintaxe do stored procedure no projeto*/
