SELECT * FROM hr.employees;

SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome Completo`,
    DATE(START_DATE) AS `Data de início`,
    SALARY AS Salário
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE
    E.EMPLOYEE_ID IN (SELECT 
            EMPLOYEE_ID
        FROM
            hr.job_history)
        AND MONTH(JH.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome Completo` ASC , `Data de início`;
