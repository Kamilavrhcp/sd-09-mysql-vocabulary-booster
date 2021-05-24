SELECT
    jobs.JOB_TITLE AS 'Cargo',
    (jobs.MAX_SALARY - jobs.MIN_SALARY) AS 'Variação Salarial',
    ROUND((jobs.MIN_SALARY / 12),2) AS 'Média mínima mensal',
    ROUND((jobs.MAX_SALARY / 12),2) AS 'Média máxima mensal'
FROM hr.employees AS employ
INNER JOIN hr.jobs AS jobs
ON jobs.JOB_ID = employ.JOB_ID
GROUP BY `Cargo`, `Variação Salarial`, `Média mínima mensal`, `Média máxima mensal`
ORDER BY `Variação Salarial`, `Cargo`;
