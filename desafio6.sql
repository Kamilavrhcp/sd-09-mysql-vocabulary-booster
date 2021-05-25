SELECT CONCAT(first_name, ' ', last_name) as 'Nome completo',
  job_title as 'Cargo',
  start_date as 'Data de início do cargo',
  department_name as 'Departamento'
FROM hr.job_history AS hist
  INNER JOIN hr.employees AS emp ON hist.employee_id = emp.employee_id
  INNER JOIN hr.jobs AS j ON hist.job_id = j.job_id
  INNER JOIN hr.departments AS dep ON hist.department_id = dep.department_id
ORDER BY 1 DESC,
  2 ASC;
