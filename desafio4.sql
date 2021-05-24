SELECT JOB_TITLE AS 'Cargo', ROUND(AVG(SALARY), 2) AS `Média salarial`,
CASE
  WHEN AVG(SALARY) > 10500 THEN 'CEO'
  WHEN AVG(SALARY) > 7501 THEN 'Sênior'
  WHEN AVG(SALARY) > 5801 THEN 'Pleno'
  ELSE 'Júnior'
  END AS 'Senioridade'
FROM hr.jobs AS jobs INNER JOIN hr.employees AS employees
ON employees.JOB_ID = jobs.JOB_ID
group by Cargo
ORDER BY `Média salarial`, Cargo;
