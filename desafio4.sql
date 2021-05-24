SELECT DISTINCT
  jobs.job_title
    AS 'Cargo',
  (SELECT DISTINCT ROUND(AVG(emp.salary),2) FROM hr.employees as emp WHERE hr.jobs.job_id LIKE emp.JOB_ID)
	AS 'Média salarial',
  CASE 
	WHEN (SELECT ROUND(AVG(hr.employees.salary),2) FROM hr.employees WHERE hr.jobs.job_id LIKE hr.employees.JOB_ID) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN (SELECT ROUND(AVG(hr.employees.salary),2) FROM hr.employees WHERE hr.jobs.job_id LIKE hr.employees.JOB_ID) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN (SELECT ROUND(AVG(hr.employees.salary),2) FROM hr.employees WHERE hr.jobs.job_id LIKE hr.employees.JOB_ID) BETWEEN 7501 AND 10500 THEN 'Sênior'
    WHEN (SELECT ROUND(AVG(hr.employees.salary),2) FROM hr.employees WHERE hr.jobs.job_id LIKE hr.employees.JOB_ID) > 10500 THEN 'CEO'
    ELSE ''
  END
	AS 'Senioridade'
FROM hr.employees AS emp
  INNER JOIN hr.jobs AS jobs ON emp.job_id = jobs.job_id
ORDER BY 2, jobs.job_title ASC;