SELECT 
    UCASE(CONCAT(employees.first_name,
                    ' ',
                    employees.last_name)) AS 'Nome completo',
    hist.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
    hr.employees AS employees
        INNER JOIN
    hr.job_history AS hist ON employees.EMPLOYEE_ID = hist.EMPLOYEE_ID
GROUP BY 2 , 1 , 3
HAVING MONTH(hist.START_DATE) IN (1 , 2, 3)
ORDER BY 1 , 2;
