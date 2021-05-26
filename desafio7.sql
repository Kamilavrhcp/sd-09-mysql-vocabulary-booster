SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    DATE(h.START_DATE) AS 'Data de início do cargo',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
    MONTH(h.START_DATE) = '01'
        OR MONTH(h.START_DATE) = '02'
        OR MONTH(h.START_DATE) = '03'
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) ASC;
