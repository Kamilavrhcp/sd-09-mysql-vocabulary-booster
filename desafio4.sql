SELECT
jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(emp.SALARY), 2) <= 5800 THEN 'Júnior'
WHEN ROUND(AVG(emp.SALARY), 2) <= 7500 THEN 'Pleno'
WHEN ROUND(AVG(emp.SALARY), 2) <= 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS emp
JOIN hr.jobs AS jobs
WHERE emp.JOB_ID = jobs.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
