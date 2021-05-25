SELECT 
    CONCAT(employee.FIRST_NAME,
            ' ',
            employee.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    job_history.START_DATE AS 'Data de início do cargo',
    department.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS job_history
        JOIN
    hr.jobs AS job ON job.JOB_ID = job_history.JOB_ID
        JOIN
    hr.employees AS employee ON employee.EMPLOYEE_ID = job_history.EMPLOYEE_ID
        JOIN
    hr.departments AS department ON department.DEPARTMENT_ID = job_history.DEPARTMENT_ID
ORDER BY 1 DESC , 2 ASC;
