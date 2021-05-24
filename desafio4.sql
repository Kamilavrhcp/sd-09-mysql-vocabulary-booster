SELECT j.JOB_TITLE AS Cargo,
ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
  CASE
    WHEN 'Média salarial' < 5801 THEN 'Júnior'
    WHEN 'Média salarial' < 7501 THEN 'Pleno'
    WHEN 'Média salarial' < 10501 THEN 'Sênior'
    WHEN 'Média salarial' > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.jobs AS j
INNER JOIN hr.employees AS e
ON j.JOB_ID = e.JOB_ID
GROUP BY Cargo
ORDER BY 2, 1;
