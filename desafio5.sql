SELECT 
    J.JOB_TITLE AS 'Cargo',
    J.MAX_SALARY - J.MIN_SALARY AS 'Variação Salarial',
    ROUND(J.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(J.Max_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS E
INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY E.JOB_ID
ORDER BY (J.MAX_SALARY - J.MIN_SALARY) ASC, J.JOB_TITLE ASC;
