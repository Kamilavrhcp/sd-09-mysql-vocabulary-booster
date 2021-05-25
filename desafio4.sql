SELECT j.JOB_TITLE as 'Cargo', ROUND(AVG(e.SALARY),2) as `Média salarial`, CASE
  WHEN AVG(e.SALARY) >= 2000 AND AVG(e.SALARY) <= 5800 THEN 'Júnior'
  WHEN AVG(e.SALARY) > 5800 AND AVG(e.SALARY) <= 7500 THEN 'Pleno'
  WHEN AVG(e.SALARY) > 7500 AND AVG(e.SALARY) <= 10500 THEN 'Sênior'
  WHEN AVG(e.SALARY) >= 10500 THEN 'CEO'
  END as "Senioridade"  FROM hr.jobs as j
INNER JOIN hr.employees as e
ON e.JOB_ID = j.JOB_ID
  GROUP BY e.JOB_ID
  ORDER BY `Média Salarial`, `Cargo` ASC;
  