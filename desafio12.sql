SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.SALARY AS 'Salário funcionário 1',
    e.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME) AS 'Nome completo funcionário 2',
    empl.SALARY AS 'Salário funcionário 2',
    empl.PHONE_NUMBER AS 'Telefone funcionário 2'
    FROM hr.employees AS e,
    hr.employees AS empl
    WHERE e.JOB_ID = empl.JOB_ID AND e.EMPLOYEE_ID <> empl.EMPLOYEE_ID
    ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
