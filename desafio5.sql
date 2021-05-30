SELECT 
    J.JOB_TITLE AS 'Cargo',
    ROUND(J.MAX_SALARY - J.MIN_SALARY, 2) AS 'Variação Salarial',
    ROUND(J.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(J.Max_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS E
INNER JOIN
    hr.jobs AS J ON J.JOB_ID = E.JOB_ID
GROUP BY E.JOB_ID
ORDER BY `Variação Salarial` , J.JOB_TITLE;
