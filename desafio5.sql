USE hr;

SELECT 
    JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(AVG(MIN_SALARY), 2) AS 'Média mínima mensal',
    ROUND(AVG(max_SALARY), 2) AS 'Média máxima mensal'
FROM
    jobs
GROUP BY JOB_TITLE
ORDER BY (MAX_SALARY - MIN_SALARY) , JOB_TITLE;
