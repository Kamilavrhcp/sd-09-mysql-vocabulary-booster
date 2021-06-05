SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.SALARY AS 'Salário funcionário 1',
    e.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(func.FIRST_NAME, ' ', func.LAST_NAME) AS 'Nome completo funcionário 2',
    func.SALARY AS 'Salário funcionário 2',
    func.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS e,
    hr.employees AS func
WHERE
    e.JOB_ID = func.JOB_ID
        AND e.EMPLOYEE_ID <> func.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
