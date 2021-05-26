SELECT 
    job_title AS 'Cargo',
    (max_salary - min_salary) AS 'Variação Salarial',
    ROUND(AVG(min_salary / 12), 2) AS 'Média Mínima Mensal',
    ROUND(AVG(max_salary / 12), 2) AS 'Média Máxima Mensal'
FROM
    hr.jobs
GROUP BY job_title
ORDER BY 2 , 1;
