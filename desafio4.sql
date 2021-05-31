SELECT t1.job_title AS Cargo, TRUNCATE(AVG(t2.salary), 2) AS 'Média salarial',
CASE
  WHEN AVG(t2.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
  WHEN AVG(t2.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
  WHEN AVG(t2.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
  WHEN AVG(t2.salary) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs AS t1
INNER JOIN hr.employees AS t2 ON t1.job_id = t2.job_id
GROUP BY Cargo ORDER BY 2 ASC , 1 ASC;
