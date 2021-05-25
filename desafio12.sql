SELECT 
    CONCAT(EMPLOY.FIRST_NAME, ' ', EMPLOY.LAST_NAME) AS 'Nome completo funcionário 1',
    EMPLOY.SALARY AS 'Salário funcionário 1',
    EMPLOY.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(EMPLOY2.FIRST_NAME,
            ' ',
            EMPLOY2.LAST_NAME) AS 'Nome completo funcionário 2',
    EMPLOY2.SALARY AS 'Salário funcionário 2',
    EMPLOY2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS EMPLOY,
    hr.employees AS EMPLOY2
WHERE
    EMPLOY.JOB_ID = EMPLOY2.JOB_ID
        AND EMPLOY.EMPLOYEE_ID <> EMPLOY2.EMPLOYEE_ID
ORDER BY CONCAT(EMPLOY.FIRST_NAME, ' ', EMPLOY.LAST_NAME) , CONCAT(EMPLOY2.FIRST_NAME,
        ' ',
        EMPLOY2.LAST_NAME);
