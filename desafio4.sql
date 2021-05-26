SELECT j.job_title AS 'Cargo',
  ROUND(AVG(e.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(e.salary), 2) > 2000 AND ROUND(AVG(e.salary), 2) <= 5800 THEN 'Júnior'
  WHEN ROUND(AVG(e.salary), 2) > 5800 AND ROUND(AVG(e.salary), 2) <= 7500 THEN 'Pleno'
  WHEN ROUND(AVG(e.salary), 2) > 7500 AND ROUND(AVG(e.salary), 2) <= 10500 THEN 'Sênior'
  WHEN ROUND(AVG(e.salary), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM
  hr.employees AS e
  LEFT JOIN hr.jobs AS j
    ON e.JOB_ID = j.JOB_ID
GROUP BY j.job_title
ORDER BY ROUND(AVG(e.salary), 2) ASC, j.job_title ASC;
