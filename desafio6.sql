SELECT
  CONCAT(
    e.FIRST_NAME,
    ' ',
    e.LAST_NAME
  ) as 'Nome completo',
  jb.JOB_TITLE as 'Cargo',
  jh.START_DATE as 'Data de início do cargo',
  dp.DEPARTMENT_NAME as 'Departamento'
FROM
  hr.job_history jh
  INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  INNER JOIN hr.jobs jb ON jb.JOB_ID = jh.JOB_ID
  INNER JOIN hr.departments dp ON dp.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
