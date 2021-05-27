SELECT
    CONCAT(employees.FIRST_NAME,' ', employees.LAST_NAME) AS 'Nome completo funcionário 1',
    employees.SALARY AS 'Salário funcionário 1',
    employees.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(employees2.FIRST_NAME,' ', employees2.LAST_NAME) AS 'Nome completo funcionário 2',
    employees2.SALARY AS 'Salário funcionário 2',
    employees2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employeesS
        INNER JOIN
    hr.employees AS employees2 ON employees2.JOB_ID = employees.JOB_ID
        AND employees2.EMPLOYEE_ID <> employees.EMPLOYEE_ID
ORDER BY 1 , 4;
