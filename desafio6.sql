SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    DATE(h.START_DATE) AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.jobs AS j,
    hr.employees AS e,
    hr.job_history AS h,
    hr.departments AS d
WHERE
    (e.EMPLOYEE_ID = h.EMPLOYEE_ID
        AND h.JOB_ID = j.JOB_ID)
        AND (h.DEPARTMENT_ID = d.DEPARTMENT_ID)
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , j.JOB_TITLE ASC;
