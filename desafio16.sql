USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
    BEGIN
        DECLARE quantity_jobs INT;
        SELECT COUNT(J.JOB_ID)
        FROM job_history AS J
        INNER JOIN employees AS E
        ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
        WHERE E.EMAIL = email
        INTO quantity_jobs;
        RETURN quantity_jobs;
    END $$

DELIMITER ;
