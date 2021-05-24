SELECT j.JOB_TITLE AS Cargo,
ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
  CASE
    WHEN AVG(e.SALARY) < 5801 THEN 'Júnior'
    WHEN AVG(e.SALARY) < 7501 THEN 'Pleno'
    WHEN AVG(e.SALARY) < 10501 THEN 'Sênior'
    WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY Cargo
ORDER BY 2, 1;
