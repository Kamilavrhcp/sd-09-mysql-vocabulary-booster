SELECT
    JOB_ID AS `Cargo`,
    MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
    MIN_SALARY / 12 AS `Média mínima mensal`,
    MAX_SALARY / 12 AS `Média máxima mensal`
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
