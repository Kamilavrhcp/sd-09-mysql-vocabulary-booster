SELECT 
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            e.JOB_ID = JOB_ID) AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(e.SALARY), 2) >= 2000 AND ROUND(AVG(e.SALARY), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(e.SALARY), 2) > 5800 AND ROUND(AVG(e.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(e.SALARY), 2) > 7500 AND ROUND(AVG(e.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
GROUP BY e.JOB_ID
ORDER BY AVG(e.SALARY);
