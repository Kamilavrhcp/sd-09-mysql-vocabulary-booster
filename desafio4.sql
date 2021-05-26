SELECT 
    jobs.job_title AS 'Cargo',
    ROUND(AVG(employees.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(employees.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(employees.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(employees.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(employees.salary) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS employees
        INNER JOIN
    hr.jobs AS jobs ON employees.job_id = jobs.job_id
GROUP BY job_title
ORDER BY AVG(employees.salary) , job_title;
