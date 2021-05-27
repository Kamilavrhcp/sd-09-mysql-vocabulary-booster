USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT 
    ROUND(AVG(s.salary), 2) AS 'Média salarial'
FROM
    (SELECT 
        j.job_title, e.salary
    FROM
        hr.employees AS e
    INNER JOIN hr.jobs AS j
    ON e.job_id = j.job_id
    WHERE j.job_title = cargo) AS s;
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
