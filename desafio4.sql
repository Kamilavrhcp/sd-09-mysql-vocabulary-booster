SELECT
  j.JOB_TITLE as 'Cargo',
  ROUND(AVG(e.SALARY), 2) as 'Média salarial',
  CASE
    WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
    WHEN ROUND(AVG(e.SALARY), 2) > 7500 THEN 'Sênior'
    WHEN ROUND(AVG(e.SALARY), 2) > 5800 THEN 'Pleno'
    WHEN ROUND(AVG(e.SALARY), 2) > 1999 THEN 'Júnior'
  END AS 'Senioridade'
FROM
  hr.employees e
  INNER JOIN hr.jobs j ON e.JOB_ID = j.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` ASC, `Cargo` ASC;
