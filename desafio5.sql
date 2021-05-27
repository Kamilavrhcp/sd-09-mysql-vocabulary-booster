SELECT jobs.JOB_TITLE AS Cargo,
ROUND(jobs.MAX_SALARY - jobs.MIN_SALARY, 2) AS 'Variação Salarial',
ROUND(jobs.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
ROUND(jobs.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM hr.jobs AS jobs
ORDER BY 2, 1;
