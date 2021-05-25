SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            AVG(e.SALARY) >= 2000
                AND AVG(e.SALARY) <= 5800
        THEN
            'Júnior'
        WHEN
            AVG(e.SALARY) > 5800
                AND AVG(e.SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(e.SALARY) > 7500
                AND AVG(e.SALARY) <= 10500
        THEN
            'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo` ASC;
