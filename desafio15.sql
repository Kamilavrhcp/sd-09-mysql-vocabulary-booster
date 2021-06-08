USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT 
    ROUND(AVG(e.SALARY), 2) as 'Média salarial'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
        AND j.JOB_TITLE LIKE CONCAT('%', cargo, '%');
END $$

DELIMITER ;
