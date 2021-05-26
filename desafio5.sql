SELECT 
    job_title AS Cargo,
    ROUND(max_salary - min_salary) AS 'Variação Salarial',
    ROUND(AVG(min_salary / 12) , 2) AS 'Média mínima mensal',
    ROUND(AVG(max_salary / 12), 2) AS 'Média máxima mensal'
FROM
    hr.jobs
GROUP BY Cargo, 2
ORDER BY 2 , Cargo;
