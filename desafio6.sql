SELECT CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`, j.JOB_Title as 'Cargo', jh.START_DATE as 'Data de início do cargo', d.DEPARTMENT_NAME as 'Departamento' from hr.employees as e
INNER JOIN job_history as jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN jobs as j ON j.JOB_ID = jh.JOB_ID
INNER JOIN departments as d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
