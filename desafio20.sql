USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
  BEGIN
    SELECT
      CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
      d.DEPARTMENT_NAME AS 'Departamento',
      j.JOB_TITLE AS 'Cargo'
    FROM job_history jh
    INNER JOIN employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    INNER JOIN departments d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
    INNER JOIN jobs j ON jh.JOB_ID = j.JOB_ID
    WHERE e.EMAIL = email
    ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
  END $$

DELIMITER ;
