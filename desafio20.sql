USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(80))
BEGIN
	SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    d.DEPARTMENT_NAME AS `Departamento`,
    j.JOB_TITLE AS `Cargo`
    FROM employees AS e
    INNER JOIN job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    INNER JOIN departments AS d ON d.DEPARTMENT_iD = jh.DEPARTMENT_ID
    INNER JOIN jobs AS j ON j.JOB_ID = jh.JOB_ID
    WHERE e.EMAIL = email
    ORDER BY `Departamento` ASC, `Cargo` ASC;
END $$

DELIMITER ;
