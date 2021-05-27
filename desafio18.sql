SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    CONCAT(IF(LENGTH(DAY(j.start_date)) = 1,
                CONCAT(0, DAY(j.start_date)),
                DAY(j.start_date)),
            '/',
            IF(LENGTH(MONTH(j.start_date)) = 1,
                CONCAT(0, MONTH(j.start_date)),
                MONTH(j.start_date)),
            '/',
            YEAR(j.start_date)) AS 'Data de início',
    CONCAT(IF(LENGTH(DAY(j.end_date)) = 1,
                CONCAT(0, DAY(j.start_date)),
                DAY(j.end_date)),
            '/',
            IF(LENGTH(MONTH(j.end_date)) = 1,
                CONCAT(0, MONTH(j.end_date)),
                MONTH(j.end_date)),
            '/',
            YEAR(j.end_date)) AS 'Data de rescisão',
    ROUND((DATEDIFF(j.end_date, j.start_date) / 365),
            2) AS 'Anos trabalhados'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history j ON e.employee_id = j.employee_id
ORDER BY 1 , 4;
