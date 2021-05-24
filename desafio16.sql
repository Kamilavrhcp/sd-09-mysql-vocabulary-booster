-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária,
-- retorne a quantidade de empregos presentes em seu histórico
USE hr; -- Pode tirar que não tem problema para rodar no avaliador.

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade INT;
    SELECT COUNT(*) AS `total_empregos`FROM hr.job_history
    WHERE EMPLOYEE_ID IN (
        SELECT EMPLOYEE_ID FROM hr.employees AS e
        WHERE e.EMAIL = email
    )
    INTO quantidade;
    RETURN quantidade;
END $$

DELIMITER ;
