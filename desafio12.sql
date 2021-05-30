SELECT 
    CONCAT(e1.first_name, ' ', e1.last_name) AS 'Nome completo funcionário 1',
    e1.SALARY AS 'Salário funcionário 1',
    e1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(e2.first_name, ' ', e2.last_name) AS 'Nome completo funcionário 2',
    e2.SALARY AS 'Salário funcionário 2',
    e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS e1,
    hr.employees AS e2
WHERE
    e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID
        AND e1.JOB_ID = e2.JOB_ID
ORDER BY 1 , 4;
