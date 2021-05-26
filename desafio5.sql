SELECT JOB_TITLE AS Cargo,
CAST(MAX_SALARY / 12 AS DECIMAL(10,2)) AS 'Média máxima mensal',
CAST(MIN_SALARY / 12 AS DECIMAL(10,2)) AS 'Média mínima mensal',
MAX_SALARY - MIN_SALARY AS 'Variação Salarial'
FROM hr.jobs ORDER BY 4, 1;
