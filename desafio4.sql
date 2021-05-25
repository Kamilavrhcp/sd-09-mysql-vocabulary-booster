SELECT 
    J.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE  
		WHEN ROUND(AVG(e.SALARY), 2) between 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(e.SALARY), 2) between 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(e.SALARY), 2) between 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM
    hr.jobs AS J
        INNER JOIN
    hr.employees AS e ON J.JOB_ID = e.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Média salarial` , `Cargo`;
