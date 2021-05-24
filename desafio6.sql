SELECT 
    CONCAT(employees.FIRST_NAME,
            ' ',
            employees.LAST_NAME) AS `Nome completo`,
    jobs.JOB_TITLE AS `Cargo`,
    jh.START_DATE AS 'Data de início do cargo',
    departments.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS employees ON jh.EMPLOYEE_ID = employees.EMPLOYEE_ID
        INNER JOIN
    hr.departments AS departments ON jh.DEPARTMENT_ID = departments.DEPARTMENT_ID
        INNER JOIN
    hr.jobs AS jobs ON jh.JOB_ID = jobs.JOB_ID
ORDER BY `Nome completo` DESC , Cargo ASC;
