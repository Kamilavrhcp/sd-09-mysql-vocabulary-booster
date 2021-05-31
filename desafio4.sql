SELECT 
    JOB_ID AS Cargo,
    ROUND(AVG(SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    employees
GROUP BY JOB_ID
ORDER BY `Média Salarial` , JOB_ID;
