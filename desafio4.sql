SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(employ.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(employ.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(employ.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(employ.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(employ.SALARY) > 10500 THEN 'CEO'
        ELSE 'trabalho não contemplado nas categorias'
    END AS 'Senioridade'
FROM
    hr.employees AS employ
        INNER JOIN
    hr.jobs AS jobs ON jobs.JOB_ID = employ.JOB_ID
GROUP BY jobs.JOB_TITLE
ORDER BY 'Senioridade' , jobs.JOB_TITLE;
