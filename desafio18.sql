SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(jb.START_DATE, '%d/%m/%y') AS `Data de início`,
    DATE_FORMAT(jb.END_DATE, '%d/%m/%y') AS `Data de rescisão`,
    ROUND(DATEDIFF(jb.END_DATE, jb.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
    hr.employees AS e
INNER JOIN hr.job_history jb
ON jb.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
