SELECT CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) AS 'Nome completo',
  jh.start_date AS 'Data de início',
  e.salary AS 'Salário'
FROM hr.job_history AS jh
LEFT JOIN hr.employees AS e
  ON jh.emplyoee_id = e.emplyoee_id
WHERE MONTH(jh.start_date) IN (1, 2, 3)
ORDER BY CONCAT(e.first_name, ' ', e.last_name) ASC, jh.start_date ASC;
