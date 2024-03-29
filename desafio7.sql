SELECT 
    UCASE(CONCAT(emp.first_name, ' ', emp.last_name)) AS 'Nome completo',
    his.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS his ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
WHERE
    MONTH(his.START_DATE) IN (1 , 2, 3)
ORDER BY 1 , 2;
