SELECT
    CONCAT(t1.first_name, ' ', t1.last_name) AS 'Nome completo funcionário 1',
    t1.salary AS 'Salário funcionário 1',
    t1.phone_number AS 'Telefone funcionário 1',
    CONCAT(t2.first_name, ' ', t2.last_name) AS 'Nome completo funcionário 2',
    t2.salary AS 'Salário funcionário 2',
    t2.phone_number AS 'Telefone funcionário 2'
FROM
    hr.employees AS t1,
    hr.employees AS t2
WHERE
    CONCAT(t1.first_name, ' ', t1.last_name) <> CONCAT(t2.first_name, ' ', t2.last_name)
        AND t1.job_id = t2.job_id
GROUP BY CONCAT(t1.first_name, ' ', t1.last_name) , t1.phone_number , t1.salary , CONCAT(t2.first_name, ' ', t2.last_name) , t2.salary , t2.phone_number
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
