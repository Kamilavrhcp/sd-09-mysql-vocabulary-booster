SELECT 
    CONCAT(UCASE(e.FIRST_NAME),
            ' ',
            UCASE(e.LAST_NAME)) AS 'Nome completo',
    h.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    MONTH(h.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` ASC , 'Data de início' DESC;
