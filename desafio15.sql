USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN jobName VARCHAR(200))
BEGIN
	SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
	FROM employees AS E
    INNER JOIN jobs AS J ON E.JOB_ID = J.JOB_ID AND J.JOB_TITLE = jobName
    GROUP BY E.JOB_ID;
END $$

DELIMITER ;
