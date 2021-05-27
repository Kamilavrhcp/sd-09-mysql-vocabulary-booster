USE hr;
DELIMITER $$;

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN param_email TEXT)
BEGIN
  SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    d.DEPARTMENT_NAME AS Departamento,
    j.JOB_TITLE AS Cargo
  FROM hr.employees AS e
  INNER JOIN hr.departments AS d
  INNER JOIN hr.job_history AS h
  INNER JOIN hr.jobs AS j
  WHERE e.EMAIL = param_email
  AND e.EMPLOYEE_ID = h.EMPLOYEE_ID
  AND h.DEPARTMENT_ID = d.DEPARTMENT_ID
  AND h.JOB_ID = j.JOB_ID
  ORDER BY 2, 3;
END $$;

DELIMITER ;
