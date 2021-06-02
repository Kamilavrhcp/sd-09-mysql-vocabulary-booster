USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job varchar(50))
BEGIN 
SELECT 
ROUND(AVG(employees.SALARY),2) AS "Média salarial"
FROM
hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = employees.JOB_ID
WHERE jobs.JOB_TITLE = job
GROUP BY employees.JOB_ID;
END $$

DELIMITER ;
