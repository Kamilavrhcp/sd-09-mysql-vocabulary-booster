SELECT
jobs.job_title AS 'Cargo',
ROUND(AVG(emp.salary), 2)  AS 'Média salarial',
CASE
    WHEN ROUND(AVG(emp.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN ROUND(AVG(emp.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN ROUND(AVG(emp.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
END AS Senioridade
FROM hr.employees AS emp
INNER JOIN hr.jobs AS jobs
ON jobs.job_id = emp.job_id
GROUP BY jobs.job_title
ORDER BY AVG(emp.salary), jobs.job_title;
