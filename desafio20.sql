USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emp_mail VARCHAR(50))
BEGIN
SELECT 
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
dep.DEPARTMENT_NAME AS 'Departamento',
jb.JOB_TITLE AS 'Cargo'
FROM
hr.employees AS emp
    INNER JOIN
hr.job_history AS jh
ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
    INNER JOIN
hr.departments AS dep 
ON jh.DEPARTMENT_ID = dep.DEPARTMENT_ID
    INNER JOIN
hr.jobs AS jb
ON jb.JOB_ID = jh.JOB_ID
    WHERE emp.EMAIL = emp_mail
    ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
