SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    CONCAT(DAY(jb.START_DATE),
            '/',
            MONTH(jb.START_DATE),
            '/',
            YEAR(jb.START_DATE)) AS 'Data de início',
    CONCAT(DAY(jb.END_DATE),
            '/',
            MONTH(jb.END_DATE),
            '/',
            YEAR(jb.END_DATE)) AS 'Data de rescisão',
    ROUND((DATEDIFF(jb.END_DATE, jb.START_DATE)) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS e
        INNER JOIN
    job_history AS jb ON jb.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , ROUND((DATEDIFF(jb.END_DATE, jb.START_DATE)) / 365,
        2);
