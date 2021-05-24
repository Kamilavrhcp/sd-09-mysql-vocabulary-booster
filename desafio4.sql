SELECT j.JOB_TITLE AS `Cargo`, ROUND(AVG(e.SALARY), 2) AS `Média Salarial`,
CASE
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 2000 and 5800 THEN 'Júnior'
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 5801 and 7500 THEN 'Pleno'
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 7501 and 10500 THEN 'Sênior'
    WHEN ROUND(AVG(e.SALARY), 2) > 10500 THEN 'CEO'
END AS `Senioridade`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`, `Média Salarial`
ORDER BY `Média Salarial` ASC, `Cargo` ASC;
