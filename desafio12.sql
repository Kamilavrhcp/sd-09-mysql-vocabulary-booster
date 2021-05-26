SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo funcionário 1',
    e.SALARY AS 'Salário funcionário 1',
    e.PHONE_NUMBER AS 'Telefone funcionário 1'
    -- CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME) AS 'Nome completo funcionário 2',
--     empl.SALARY AS 'Salário funcionário 2',
--     empl.PHONE_NUMBER AS 'Telefone funcionário 2'
    FROM hr.employees AS e,
    hr.employees AS empl
    WHERE e.JOB_ID = empl.JOB_ID
    GROUP BY `Nome completo funcionário 1`, e.SALARY, job, e.PHONE_NUMBER 
    ORDER BY job, `Nome completo funcionário 1`;
    
SELECT COUNT(*) AS 'amount'
FROM hr.employees
GROUP BY employees.JOB_ID
HAVING `amount` > 1;
