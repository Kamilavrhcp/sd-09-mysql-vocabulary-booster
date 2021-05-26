SELECT 
    j.JOB_TITLE AS 'Cargo',
    CASE
        WHEN j.MAX_SALARY > 30000 THEN 'Altíssimo'
        WHEN j.MAX_SALARY > 20000 THEN 'Alto'
        WHEN j.MAX_SALARY > 10000 THEN 'Médio'
        ELSE 'Baixo'
    END AS 'Nível'
FROM
    hr.jobs AS j
ORDER BY j.JOB_TITLE ASC;
