DELIMITER !!
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(25))
  BEGIN
    SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
      d.DEPARTMENT_NAME AS 'Departamento',
      j.JOB_TITLE AS 'Cargo'
    FROM hr.job_history AS jh
      INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
      INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = e.DEPARTMENT_ID
      INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
    WHERE e.EMAIL =  email
    ORDER BY 2, 3;
  END
!! DELIMITER ;
