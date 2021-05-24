SELECT 
    JOB_TITLE AS 'Cargo',
    CASE
        WHEN
            MAX_SALARY >= 5000
                AND MAX_SALARY <= 10000
        THEN
            'Baixo'
        WHEN
            MAX_SALARY >= 10001
                AND MAX_SALARY <= 20000
        THEN
            'Médio'
        WHEN
            MAX_SALARY >= 20001
                AND MAX_SALARY <= 20000
        THEN
            'Alto'
        WHEN MAX_SALARY >= 30000 THEN 'Altíssimo'
        ELSE 'Salário não encontrado'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY JOB_TITLE;
