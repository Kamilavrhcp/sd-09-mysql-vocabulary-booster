SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(jh.START_DATE, '%m/%d/%y') AS `Data de início`,
    DATE_FORMAT(jh.END_DATE, '%m/%d/%y') AS `Data de rescisão`,
    FORMAT(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365,
        2) AS `Anos trabalhados`
FROM
    hr.employees AS e,
    hr.job_history AS jh
WHERE
    jh.JOB_ID = e.JOB_ID
GROUP BY jh.JOB_ID
ORDER BY `Nome completo` ASC , `Anos trabalhados` ASC;
