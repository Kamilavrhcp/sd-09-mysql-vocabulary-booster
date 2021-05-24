SELECT 
    J.JOB_TITLE AS Cargo,
    (J.MAX_SALARY - J.MIN_SALARY) AS `Variação Salarial`,
    ROUND(J.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(J.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY Cargo
ORDER BY `Variação Salarial` ASC , Cargo ASC;
