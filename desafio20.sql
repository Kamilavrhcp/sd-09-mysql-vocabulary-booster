DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    d.department_name AS 'Departamento',
    j.job_title AS 'Cargo'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.departments AS d ON jh.department_id = d.department_id
        INNER JOIN
    hr.employees AS e ON jh.employee_id = e.employee_id
        INNER JOIN
    hr.jobs AS j ON jh.job_id = j.job_id
WHERE
    e.email = email
ORDER BY 2, 3;
END $$

DELIMITER ;
CALL exibir_historico_completo_por_funcionario('NKOCHHAR')
