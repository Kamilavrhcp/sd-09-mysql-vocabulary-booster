USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
    IN job_name VARCHAR(100)
)
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
    FROM employees AS E
    INNER JOIN jobs AS J
    ON J.JOB_ID = E.JOB_ID 
    WHERE JOB_TITLE = job_name;
END $$

DELIMITER ;
