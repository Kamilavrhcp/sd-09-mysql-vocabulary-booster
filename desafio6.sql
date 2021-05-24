SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS e
    INNER JOIN
    hr.job_history AS h ON h.JOB_ID = e.JOB_ID
    INNER JOIN 
    hr.departments AS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
    INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
ORDER BY 'Nome Completo' DESC, 'Cargo';
