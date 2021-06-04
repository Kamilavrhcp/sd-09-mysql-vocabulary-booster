SELECT 
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) 'Nome completo',
  J.JOB_TITLE 'Cargo',
  H.START_DATE 'Data de início do cargo',
  D.DEPARTMENT_NAME 'Departamento'
FROM
  hr.employees E
    INNER JOIN
  hr.jobs J ON E.JOB_ID = J.JOB_ID
    INNER JOIN
  hr.departments D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
    INNER JOIN
  hr.job_history H ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
ORDER BY `Nome completo`, Cargo;
