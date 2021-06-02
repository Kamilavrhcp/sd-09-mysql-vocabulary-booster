SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
  jobs.JOB_TITLE AS 'Cargo',
  j.START_DATE AS 'Data de início do cargo',
  d.DEPARTMENT_NAME AS 'Departamento'
FROM job_history j 
INNER JOIN employees e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
INNER JOIN jobs ON jobs.JOB_ID = j.JOB_ID
INNER JOIN departments d ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, e.LAST_NAME) DESC, jobs.JOB_TITLE;
