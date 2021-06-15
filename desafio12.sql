SELECT 
    CONCAT(hr.employees.FIRST_NAME,
            ' ',
            hr.employees.LAST_NAME) AS 'Nome completo funcionário 1',
    hr.employees.SALARY AS 'Salário funcionário 1',
    hr.employees.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(employees2.FIRST_NAME,
            ' ',
            employees2.LAST_NAME) AS 'Nome completo funcionário 2',
    employees2.SALARY AS 'Salário funcionário 2',
    employees2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees,
    hr.employees AS employees2
WHERE
    hr.employees.JOB_ID = employees2.JOB_ID
        AND CONCAT(hr.employees.FIRST_NAME,
            ' ',
            hr.employees.LAST_NAME) <> CONCAT(employees2.FIRST_NAME,
            ' ',
            employees2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
