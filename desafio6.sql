SELECT 
    CONCAT(employees.first_name,
            ' ',
            employees.last_name) AS 'Nome completo',
    jobs.job_title AS 'Cargo',
    hist.START_DATE AS 'Data de início do cargo',
    depart.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS hist
        INNER JOIN
    hr.jobs AS jobs ON hist.JOB_ID = jobs.JOB_ID
        INNER JOIN
    hr.departments AS depart ON hist.DEPARTMENT_ID = depart.DEPARTMENT_ID
        INNER JOIN
    hr.employees AS employees ON hist.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY 1 DESC , 2;
