USE hr;

DELIMITER //
CREATE PROCEDURE buscar_media_por_cargo(IN job_title_parameter VARCHAR(35))
BEGIN
    SELECT AVG(SALARY) AS `Média salarial`
        FROM hr.employees
        JOIN hr.jobs ON hr.employees.JOB_ID = hr.jobs.JOB_ID
        WHERE JOB_TITLE = job_title_parameter;
END //
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
