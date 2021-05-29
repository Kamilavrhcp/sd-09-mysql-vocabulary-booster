SELECT 
    J.JOB_TITLE AS 'Cargo',
    J.MAX_SALARY - J.MIN_SALARY AS 'Variação Salarial',
    ROUND(J.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(J.Max_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.jobs AS J
INNER JOIN
    hr.employees AS E
GROUP BY `Cargo`
ORDER BY `Variação Salarial` , J.JOB_TITLE;
