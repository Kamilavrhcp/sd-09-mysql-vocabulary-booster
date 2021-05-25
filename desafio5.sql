USE hr;

SELECT * FROM hr.jobs;

SELECT JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
ROUND(MIN_SALARY / 30, 2) AS `Média mínima mensal`,
ROUND(MAX_SALARY / 30, 2) AS `Média máxima mensal`
FROM hr.jobs
GROUP BY JOB_TITLE
ORDER BY `Variação Salarial` ASC, Cargo;
