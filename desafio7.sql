SELECT 
    jh.START_DATE AS 'Data de início',
    UCASE(CONCAT(employees.FIRST_NAME,
                    ' ',
                    employees.LAST_NAME)) AS `Nome completo`,
    employees.SALARY AS 'Salário'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS employees ON jh.EMPLOYEE_ID = employees.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS departments ON jh.DEPARTMENT_ID = departments.DEPARTMENT_ID
        INNER JOIN
    hr.jobs AS jobs ON jh.JOB_ID = jobs.JOB_ID
WHERE
    MONTH(jh.START_DATE) IN ('01' , '02', '03')
ORDER BY `Nome completo` ASC , jh.START_DATE ASC;
