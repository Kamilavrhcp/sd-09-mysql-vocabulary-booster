SELECT 
	DISTINCT J.JOB_TITLE AS `Cargo`,
    ROUND(AVG( E.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG( E.SALARY), 2) >= 2000 AND  ROUND(AVG( E.SALARY), 2) <= 5800 THEN 'Júnior'
        WHEN  ROUND(AVG( E.SALARY), 2) > 5801 AND  ROUND(AVG( E.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN  ROUND(AVG( E.SALARY), 2) >= 7501 AND  ROUND(AVG( E.SALARY), 2) <= 10500 THEN 'Sênior'
        WHEN  ROUND(AVG( E.SALARY), 2) > 10500 THEN 'CEO'
        ELSE  ROUND(AVG( E.SALARY), 2)
    END AS `Senioridade`
FROM
    hr.jobs AS J
        INNER JOIN
    hr.employees AS E
WHERE
    J.JOB_ID = E.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` , `Cargo` ASC;



-- SELECT * FROM hr.employees;
-- 
-- SELECT * FROM hr.jobs;
-- JOB_ID



