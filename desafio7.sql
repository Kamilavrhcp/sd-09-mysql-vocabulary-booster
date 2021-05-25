SELECT UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
  start_date AS 'Data de início',
  salary AS 'Salário'
FROM hr.job_history as hist
  INNER JOIN hr.employees AS emp ON hist.employee_id = emp.employee_id
WHERE MONTH(start_date) BETWEEN 1 AND 3
ORDER BY 1,
  2 ASC;
