SELECT  CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo funcionário 1`,
        employees.SALARY AS `Salário funcionário 1`,
        employees.PHONE_NUMBER AS `Telefone funcionário 1`,
        CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS `Nome completo funcionário 2`,
        t2.SALARY AS `Salário funcionário 2`,
        t2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM hr.employees
JOIN hr.employees AS t2 ON employees.JOB_ID = t2.JOB_ID AND employees.EMPLOYEE_ID <> t2.EMPLOYEE_ID
ORDER BY  `Nome completo funcionário 1`,
          `Nome completo funcionário 2`;
