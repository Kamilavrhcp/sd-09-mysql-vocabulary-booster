USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN inputEmail VARCHAR(200))
BEGIN
SELECT
	CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
	D.DEPARTMENT_NAME AS `Departamento`,
	J.JOB_TITLE AS `Cargo`
FROM hr.employees AS E
INNER JOIN job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
INNER JOIN jobs AS J ON JH.JOB_ID = J.JOB_ID 
INNER JOIN departments AS D ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID
WHERE E.EMAIL = inputEmail
ORDER BY `Departamento` ASC, `Cargo` ASC;
END $$;

DELIMITER ;