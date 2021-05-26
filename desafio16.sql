USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
    BEGIN
        DECLARE quantity_jobs INT;
        SELECT COUNT(j.JOB_ID)
        FROM job_history AS j
        INNER JOIN employees AS e
        ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
        WHERE e.EMAIL = email
        INTO quantity_jobs;
        RETURN quantity_jobs;
    END $$

DELIMITER ;
