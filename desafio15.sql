USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo TEXT) 
BEGIN
SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial`
FROM employees AS E
INNER JOIN jobs AS J
ON E.JOB_ID = J.JOB_ID
WHERE J.JOB_TITLE = cargo
GROUP BY J.JOB_TITLE;
END $$ -- delimitando o final do código SQL

DELIMITER ;

-- CALL buscar_media_por_cargo('Programmer');
